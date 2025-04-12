/*class Team {
  int id;
  String name;
  int score;

  Team({
    required this.id, 
    required this.name,  
    this.score = 0
  });
}
*/
class Team {
  final int id;
  String name;
  /*int score;*/

  Team({
    required this.id,
    required this.name,
    /*this.score = 0,*/
  });

  factory Team.fromJson(Map<String, dynamic> json) {
    return Team(
      id: json['id'],
      name: json['name'],
      /*score: json['score'] ?? 0,*/
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      /*'score': score,*/
    };
  }
}

