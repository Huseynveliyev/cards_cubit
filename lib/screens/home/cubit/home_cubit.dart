import 'package:bloc/bloc.dart';
import 'package:cards_cubit/data/exception/exception_http.dart';
import 'package:cards_cubit/data/injection.dart';
import 'package:cards_cubit/data/model/model_card.dart';
import 'package:cards_cubit/data/repository/repository_cards.dart';
import 'package:equatable/equatable.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  CardsRepository cardsRepository = getIt.get();

  fetch() async {
    emit(HomeInProgress());
    try {
      final data = await cardsRepository.getCards();
      emit(HomeSuccess(data));
    } on HttpException catch (e) {
      emit(HomeFailure(e.message));
    }
  }
}
