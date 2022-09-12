import 'package:cards_cubit/screens/home/home_page.dart';
import 'package:flutter/cupertino.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'Cupertino App',
      home: HomePage(),
    );
  }
}