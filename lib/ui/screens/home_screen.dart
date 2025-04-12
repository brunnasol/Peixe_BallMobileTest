import 'package:flutter/material.dart';
import 'package:peixeball_mobile/ui/widgets/app_drawer.dart'; // Certifique-se que este widget existe

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('peixe_ball-inicio'),
      ),
      drawer: const AppDrawer(), // Drawer mantido
      body: const Center(
        child: Text('peixe_ball-inicio'), // Texto centralizado
      ),
    );
  }
}