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
              padding: const EdgeInsets.all(10),
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

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SafeArea(
            child: NavigationRail(
              extended: false,
              destinations: [
                NavigationRailDestination(
                  icon: Icon(Icons.home),
                  label: Text('Home'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.attach_money),
                  label: Text('Income'),
                ),
                NavigationRailDestination(
                    icon: Icon(Icons.difference_rounded),
                    label: Text('Expenses')),
                NavigationRailDestination(
                    icon: Icon(Icons.calculate), label: Text('Budget')),
                NavigationRailDestination(
                    icon: Icon(Icons.add_chart), label: Text('View Spending'))
              ],
              selectedIndex: 0,
              onDestinationSelected: (value) {
                print('selected: $value');
              },
            ),
          ),
          Expanded(
            child: Container(
              color: Theme.of(context).colorScheme.primaryContainer,
              child: GeneratorPage(),
            ),
          ),
        ],
      ),
    );
  }
}

class GeneratorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    //var pair = appState.current;

    IconData icon;
    // if (appState.favorites.contains(pair)) {
    //   icon = Icons.favorite;
    // } else {
    //   icon = Icons.favorite_border;
    // }

    return Center(
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: AppName(),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('images/bugcat_money.gif', width: 300, height: 300,)
            ],
          ),
        ],
      ),
    );
  }
}

// class ViewSpending extends StatelessWidget {
//   const ViewSpending({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: () {},
//       child: Text('View Spending'),
//     );
//   }
// }

// class AddBudget extends StatelessWidget {
//   const AddBudget({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: () {},
//       child: Text('Set Budget'),
//     );
//   }
// }

// class AddExpense extends StatelessWidget {
//   const AddExpense({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: () {},
//       child: Text('Add Expense'),
//     );
//   }
// }

// class AddIncome extends StatelessWidget {
//   const AddIncome({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: () {},
//       child: Text('Add Income'),
//     );
//   }
// }

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
