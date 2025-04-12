import 'package:flutter/material.dart';
import 'package:peixeball_mobile/ui/styles/app_colors.dart';

class TeamScoreColumn extends StatelessWidget {
  final String teamName;
  final int score;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const TeamScoreColumn({
    super.key,
    required this.teamName,
    required this.score,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          teamName,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: AppColors.green,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          '$score',
          style: const TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
            color: AppColors.green,
          ),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            IconButton(
              icon: const Icon(Icons.remove),
              onPressed: onDecrement,
              style: IconButton.styleFrom(
                backgroundColor: AppColors.textLight,
              ),
            ),
            const SizedBox(width: 8),
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: onIncrement,
              style: IconButton.styleFrom(
                backgroundColor: AppColors.green,
                foregroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
