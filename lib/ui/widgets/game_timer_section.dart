import 'package:flutter/material.dart';
import 'package:peixeball_mobile/ui/styles/app_colors.dart';

class GameTimerSection extends StatelessWidget {
  final String gameTime;
  final bool isRunning;
  final VoidCallback onStart;
  final VoidCallback onPause;
  final VoidCallback onReset;

  const GameTimerSection({
    super.key,
    required this.gameTime,
    required this.isRunning,
    required this.onStart,
    required this.onPause,
    required this.onReset,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'TEMPO DE JOGO',
          style: TextStyle(
            fontSize: 14,
            color: AppColors.textDark,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          gameTime,
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: AppColors.textDark,
          ),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: isRunning ? onPause : onStart,
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.green,
                foregroundColor: Colors.white,
                minimumSize: const Size(120, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                isRunning ? 'PAUSAR' : 'INICIAR',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(width: 12),
            IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: onReset,
              style: IconButton.styleFrom(
                foregroundColor: AppColors.green,
                backgroundColor: Colors.white,
                shape: const CircleBorder(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

//Esse tem dois iniciar e pausar

/*import 'package:flutter/material.dart';
import 'package:peixeball_mobile/ui/styles/app_colors.dart';

class GameTimerSection extends StatelessWidget {
  final String gameTime;
  final bool isRunning;
  final VoidCallback onStart;
  final VoidCallback onPause;
  final VoidCallback onReset;

  const GameTimerSection({
    super.key,
    required this.gameTime,
    required this.isRunning,
    required this.onStart,
    required this.onPause,
    required this.onReset,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'TEMPO DE JOGO',
          style: TextStyle(
            fontSize: 14,
            color: AppColors.textMedium,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          gameTime,
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: AppColors.textDark,
          ),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              onPressed: isRunning ? null : onStart,
              style: OutlinedButton.styleFrom(
                backgroundColor: AppColors.green,
                foregroundColor: Colors.white,
                minimumSize: const Size(120, 40),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text('Iniciar'),
            ),
            const SizedBox(width: 8),
            OutlinedButton(
              onPressed: isRunning ? onPause : null,
              style: OutlinedButton.styleFrom(
                backgroundColor: AppColors.green,
                foregroundColor: Colors.white,
                minimumSize: const Size(120, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text('Pausar'),
            ),
            const SizedBox(width: 8),
            IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: onReset,
              style: IconButton.styleFrom(
                foregroundColor: AppColors.green,
              ),
            ),
          ],
        ),
      ],
    );
  }
}*/
//Só tem um unico botão para iniciar e pausar.

