class ForumPost {
  final String id;
  final String title;
  final String body;
  final String photo;
  final String postedBy;
  final String postedById;
  final List likes;
  final List comments;

  ForumPost({
    required this.id,
    required this.title,
    required this.body,
    required this.photo,
    required this.postedBy,
    required this.postedById,
    required this.likes,
    required this.comments,
  });
}
