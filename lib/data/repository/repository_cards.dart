import 'package:cards_cubit/data/endpoint/endpoint_cards.dart';
import 'package:cards_cubit/data/model/model_card.dart';
import 'package:cards_cubit/data/model/model_cards.dart';
import 'package:cards_cubit/data/service/service_api.dart';

abstract class CardsRepository {
  Future<List<CardModel>> getCards();
}

class CardsRepositoryImpl implements CardsRepository {
  final ApiService apiService;
  CardsRepositoryImpl(this.apiService);

  @override
  Future<List<CardModel>> getCards() async {
    final result = await apiService.get(CardsEndpoint());
    final cardsModel = CardsModel.fromJson(result);
    return cardsModel.data;
  }
}
