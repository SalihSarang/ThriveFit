import 'package:flutter/material.dart';
import 'package:levelup/screens/accout_section/create_account_screen.dart';
import 'package:levelup/screens/accout_section/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginScreen(),
        '/createAccount': (context) => CreateAccountScreen(),
      },
    );
  }
}
