import 'package:flutter/material.dart';
import 'package:peixeball_mobile/ui/styles/app_colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true, // Ajusta o layout ao abrir o teclado
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Área Verde com Logo
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.45, // 45% da tela
              color: AppColors.green,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/icon.png', width: 250),
                  const SizedBox(height: 1), // Reduzi o espaço entre as imagens
                  Image.asset('assets/images/nomewhite.png', width: 300),
                ],
              ),
            ),

            // Espaço Branco com Formulário
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Campo de E-mail
                  TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      labelText: 'E-MAIL',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Campo de Senha
                  TextFormField(
                    obscureText: true,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      labelText: 'SENHA',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Botão "Vamos jogar!" com cor ajustada
                  SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF48BD28), // Cor ajustada
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, 'home');
                      },
                      child: const Text(
                        "VAMOS JOGAR!",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),

                  // Texto "Esqueci minha senha"
                  Center(
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Esqueci minha senha",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black54,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
