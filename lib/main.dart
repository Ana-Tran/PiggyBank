import 'package:flutter/material.dart';
import 'package:piggybank/constants.dart';
import 'screens/homescreen.dart';
import 'screens/mainscreen.dart';

void main() {
  runApp(const PiggyBank());
}

class PiggyBank extends StatelessWidget {
  const PiggyBank({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(scaffoldBackgroundColor: kPrimaryColor),
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => const HomeScreen(),
        MainScreen.id: (context) => const MainScreen(),
      },
    );
  }
}
