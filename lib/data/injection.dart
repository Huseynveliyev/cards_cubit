import 'package:cards_cubit/data/repository/repository_cards.dart';
import 'package:cards_cubit/data/service/service_api.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

class Injection {
  static register() {
    getIt.registerSingleton(ApiService());
    getIt.registerFactory<CardsRepository>(
        () => CardsRepositoryImpl(getIt.get()));
  }
}
