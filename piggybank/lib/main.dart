import 'package:flutter/material.dart';
import 'screens/home.dart';
// import 'package:flash_chat/screens/welcome_screen.dart';
// import 'package:flash_chat/screens/login_screen.dart';
// import 'package:flash_chat/screens/registration_screen.dart';
// import 'package:flash_chat/screens/chat_screen.dart';

void main() => runApp(PiggyBank());

class PiggyBank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: Colors.black54),
        ),
      ),
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        // LoginScreen.id: (context) => LoginScreen(),
        // RegistrationScreen.id: (context) => RegistrationScreen(),
        // ChatScreen.id: (context) => ChatScreen()
      },
    );
  }
}

