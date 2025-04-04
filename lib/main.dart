import 'package:flutter/material.dart';
import 'package:peixeball_mobile/ui/login_screen.dart';

void main() {
  runApp(const PeixeBall());
}

class PeixeBall extends StatelessWidget {
  const PeixeBall({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "login": (context) => const LoginScreen()
        },
      initialRoute: "login",
    );
  }
}
