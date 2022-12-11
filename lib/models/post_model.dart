enum Post {
  picture,
  reel,
}

class PostModel {
  String? video;
  List<String>? images;
  String? date;
  String? likes;
  String? description;
  String? comments;
  bool liked;
  bool saved;
  Post? postType;
  PostModel({
    this.video,
    this.images,
    this.date,
    this.description,
    this.likes,
    this.comments,
    this.liked = false,
    this.saved = false,
    this.postType,
  });
}
