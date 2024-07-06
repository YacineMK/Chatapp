import 'package:chatapp/views/home/main.dart';
import 'package:chatapp/views/login/main.dart';
import 'package:chatapp/views/signin/main.dart';
import 'package:chatapp/views/welcome/main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My app",
      initialRoute: "/welcome",
      routes: {
        "/welcome": (context) => const WelcomePage(),
        "/login": (context) => const LoginPage(),
        "/signin": (context) => const SigninPage(),
        "/": (context) => const HomePage(),
      },
    );
  }
}
