import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Piggy Bank',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(0, 0, 0, 0)),
          scaffoldBackgroundColor: Color.fromRGBO(241, 166, 227, 1)
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  //var current = WordPair.random();
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppName(),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // ↓ And this.
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Add Income'),
                ),

                ElevatedButton(
                  onPressed: () {},
                  child: Text('Add Expense'),
                ),

                ElevatedButton(
                  onPressed: () {},
                  child: Text('Set Budget'),
                ),

                ElevatedButton(
                  onPressed: () {},
                  child: Text('View Spending'),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}

class AppName extends StatelessWidget {
  const AppName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text('Piggy Bank',
    style: TextStyle(
      fontSize: 30,
      color: Colors.black87 
      ),
      );
  }
}
