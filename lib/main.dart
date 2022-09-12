import 'package:cards_cubit/data/blocobserver.dart';
import 'package:cards_cubit/data/injection.dart';
import 'package:cards_cubit/screens/app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  await Injection.register();

  BlocOverrides.runZoned(
    () => {
      runApp(
        const MyApp(),
      ),
    },
    blocObserver: MyBlocObserver(),
  );
}


