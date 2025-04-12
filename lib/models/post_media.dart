class PostMedia {
  final int id;
  final int postId;
  final String mediaUrl;
  final String type; // 'image' or 'video'

  PostMedia({
    required this.id,
    required this.postId,
    required this.mediaUrl,
    required this.type,
  });
}
