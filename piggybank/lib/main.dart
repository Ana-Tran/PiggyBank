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
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget page;
    switch (selectedIndex) {
      case 0:
        page = GeneratorPage();
        break;
      case 1:
        page = IncomePage();
        break;
      case 2:
        page = Placeholder();
        break;
      case 3:
        page = Placeholder();
        break;
      case 4:
        page = Placeholder();
        break;
      default:
        throw UnimplementedError('no widget for $selectedIndex');
    }
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        body: Row(
          children: [
            SafeArea(
              child: NavigationRail(
                extended: constraints.maxWidth >= 600,
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
                selectedIndex: selectedIndex,
                onDestinationSelected: (value) {
                  setState(() {
                    selectedIndex = value;
                  });
                },
              ),
            ),
            Expanded(
              child: Container(
                color: Theme.of(context).colorScheme.primaryContainer,
                child: page,
              ),
            ),
          ],
        ),
      );
    });
  }
}

class IncomePage extends StatelessWidget {
  const IncomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: IncomeTextbox(),
        ),
        BtnAddIncome(),
        Text('Income Balance: ')
      ],
    );
  }
}

class BtnAddIncome extends StatelessWidget {
  const BtnAddIncome({
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

class IncomeTextbox extends StatefulWidget {
  const IncomeTextbox({
    super.key,
  });

  @override
  State<IncomeTextbox> createState() => _IncomeTextboxState();
}

class _IncomeTextboxState extends State<IncomeTextbox> {
  final getTextValue = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Enter your income',
      ),
      keyboardType: TextInputType.number,
      controller: getTextValue,
    );
  }
}

class GeneratorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    //var pair = appState.current;

    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: AppName(),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'images/bugcat_money.gif',
                width: 300,
                height: 300,
              )
            ],
          ),
        ],
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
    return Text(
      'Piggy Bank',
      style: TextStyle(fontSize: 30, color: Colors.black87),
    );
  }
}
