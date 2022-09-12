import 'package:cards_cubit/screens/home/cubit/home_cubit.dart';
import 'package:cards_cubit/screens/home/home_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          middle: Text('Fake Credit Cards'),
        ),
        child: BlocProvider(
          create: (context) => HomeCubit()..fetch(),
          child: const HomeBody(),
        ));
  }
}
