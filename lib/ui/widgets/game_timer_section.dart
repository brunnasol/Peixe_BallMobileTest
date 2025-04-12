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
              style: FilledButton.styleFrom(
                backgroundColor: AppColors.green,
              ),
              onPressed: isRunning ? null : onStart,
              child: const Text('Iniciar'),
            ),
            const SizedBox(width: 8),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: AppColors.green),
              ),
              onPressed: isRunning ? onPause : null,
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
}
