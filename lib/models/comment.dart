class Comment {
  final int id;
  final int userId;
  final int postId;
  final String content;
  final DateTime createdAt;

  Comment({
    required this.id,
    required this.userId,
    required this.postId,
    required this.content,
    required this.createdAt,
  });
}
