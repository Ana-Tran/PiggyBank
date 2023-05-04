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
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 0, 0, 0),
                foregroundColor: Color.fromARGB(255, 255, 255, 255),
                padding: const EdgeInsets.all(40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
                elevation: 3,
            )),
            colorScheme:
                ColorScheme.fromSeed(seedColor: Color.fromARGB(0, 0, 0, 0)),
            scaffoldBackgroundColor: Color.fromRGBO(241, 166, 227, 1)),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AddIncome(),
                    SizedBox(height: 10, width: 10),
                    AddExpense(),
                  ],
                ),

                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AddBudget(),
                    SizedBox(height: 10, width: 10),
                    ViewSpending(),
                  ],
                ),


                
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ViewSpending extends StatelessWidget {
  const ViewSpending({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text('View Spending'),
    );
  }
}

class AddBudget extends StatelessWidget {
  const AddBudget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text('Set Budget'),
    );
  }
}

class AddExpense extends StatelessWidget {
  const AddExpense({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text('Add Expense'),
    );
  }
}

class AddIncome extends StatelessWidget {
  const AddIncome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text('Add Income'),
    );
  }
}

class AppName extends StatelessWidget {
  const AppName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Piggy Bank',
      style: TextStyle(fontSize: 30, color: Colors.black87),
    );
  }
}
