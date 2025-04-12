import 'package:flutter/material.dart';
import 'package:peixeball_mobile/ui/screens/login_screen.dart';
import 'package:peixeball_mobile/ui/screens/game_score_screen.dart';
import 'package:peixeball_mobile/ui/screens/home_screen.dart';
void main() {
  runApp(const PeixeBall());
}

class PeixeBall extends StatelessWidget {
  const PeixeBall({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'login': (context) => const LoginScreen(),
        'score': (context) => const GameScoreScreen(),
        'home': (context) => const HomeScreen(),
        },
      initialRoute: "login",
    );
  }
}
