import 'dart:async';
import 'package:flutter/material.dart';
import 'package:peixeball_mobile/models/team.dart';
import 'package:peixeball_mobile/models/game_score.dart';
import 'package:peixeball_mobile/services/timer_service.dart';
import 'package:peixeball_mobile/ui/styles/app_colors.dart';
import 'package:peixeball_mobile/ui/widgets/app_drawer.dart';
import 'package:peixeball_mobile/ui/widgets/team_score_column.dart';
import 'package:peixeball_mobile/ui/widgets/game_timer_section.dart';

class GameScoreScreen extends StatefulWidget {
  const GameScoreScreen({super.key});

  @override
  State<GameScoreScreen> createState() => _GameScoreScreenState();
}

class _GameScoreScreenState extends State<GameScoreScreen> {
  late Team _team1;
  late Team _team2;

  int _team1Score = 0;
  int _team2Score = 0;
  String _gameTime = '00:00';
  bool _isTimerRunning = false;
  int _secondsElapsed = 0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();

    _team1 = Team(id: 1, name: 'Time A');
    _team2 = Team(id: 2, name: 'Time B');

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_isTimerRunning) {
        setState(() {
          _secondsElapsed++;
          _gameTime = TimerUtils.formatTime(_secondsElapsed);
        });
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _startTimer() => setState(() => _isTimerRunning = true);
  void _pauseTimer() => setState(() => _isTimerRunning = false);
  void _resetTimer() => setState(() {
        _secondsElapsed = 0;
        _gameTime = '00:00';
        _isTimerRunning = false;
      });

  void _editTeamNames() {
    final team1Controller = TextEditingController(text: _team1.name);
    final team2Controller = TextEditingController(text: _team2.name);

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Editar nomes dos times'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              decoration: const InputDecoration(labelText: 'Time 1'),
              controller: team1Controller,
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'Time 2'),
              controller: team2Controller,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancelar'),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                _team1 = Team(id: _team1.id, name: team1Controller.text);
                _team2 = Team(id: _team2.id, name: team2Controller.text);
              });
              Navigator.pop(context);
            },
            child: const Text('Salvar'),
          ),
        ],
      ),
    );
  }

  void _saveGame() {
    final gameScore = GameScore(
      id: 1,
      team1: _team1,
      team2: _team2,
      date: DateTime.now(),
      duration: Duration(seconds: _secondsElapsed),
      team1Score: _team1Score,
      team2Score: _team2Score,
    );

    // Aqui você pode salvar no banco ou serviço
    debugPrint('GameScore JSON: ${gameScore.toJson()}');

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Jogo salvo com sucesso!')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Placar do Jogo'),
        backgroundColor: AppColors.green,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: _editTeamNames,
            tooltip: 'Editar nomes dos times',
          ),
        ],
      ),
      drawer: const AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TeamScoreColumn(
                          teamName: _team1.name,
                          score: _team1Score,
                          onIncrement: () => setState(() => _team1Score++),
                          onDecrement: () => setState(() => _team1Score = _team1Score > 0 ? _team1Score - 1 : 0),
                        ),
                        const Text(
                          'VS',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: AppColors.green,
                          ),
                        ),
                        TeamScoreColumn(
                          teamName: _team2.name,
                          score: _team2Score,
                          onIncrement: () => setState(() => _team2Score++),
                          onDecrement: () => setState(() => _team2Score = _team2Score > 0 ? _team2Score - 1 : 0),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    GameTimerSection(
                      gameTime: _gameTime,
                      isRunning: _isTimerRunning,
                      onStart: _startTimer,
                      onPause: _pauseTimer,
                      onReset: _resetTimer,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _saveGame,
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.green,
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text('SALVAR JOGO'),
            ),
          ],
        ),
      ),
    );
  }
}
