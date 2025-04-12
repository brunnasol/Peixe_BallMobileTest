/*class GameScore {
  final int id;
  final int team1Id;
  final int team2Id;
  final int team1Score;
  final int team2Score;
  final String gameTime;

  GameScore({
    required this.id,
    required this.team1Id,
    required this.team2Id,
    required this.team1Score,
    required this.team2Score,
    required this.gameTime,
  });
}

*/
import 'team.dart';

class GameScore {
  final int id;
  final Team team1;
  final Team team2;
  final DateTime date;
  final int team1Score;
  final int team2Score;
  final Duration duration;

  GameScore({
    required this.id,
    required this.team1,
    required this.team2,
    required this.date,
    required this.duration,
    required this.team1Score,
    required this.team2Score,
  });

factory GameScore.fromJson(Map<String, dynamic> json) {
  return GameScore(
    id: json['id'],
    team1: Team.fromJson(json['team1']),
    team2: Team.fromJson(json['team2']),
    date: DateTime.parse(json['date']),
    duration: Duration(seconds: json['duration'] ?? 0),
    team1Score: json['team1Score'] ?? 0,
    team2Score: json['team2Score'] ?? 0,
  );
}

Map<String, dynamic> toJson() {
  return {
    'id': id,
    'team1': team1.toJson(),
    'team2': team2.toJson(),
    'date': date.toIso8601String(),
    'duration': duration.inSeconds,
    'team1Score': team1Score,
    'team2Score': team2Score,
    };
  }
}