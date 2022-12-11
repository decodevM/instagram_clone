import 'post_model.dart';

class UserPostModel {
  String name;
  String profileImage;
  PostModel post;
  bool hasStory;
  UserPostModel({
    required this.name,
    required this.profileImage,
    required this.post,
    this.hasStory = false,
  });
}

List<UserPostModel> posts = [
  UserPostModel(
    name: 'decodev.m',
    profileImage: 'deco-dev.png',
    post: PostModel(
      postType: Post.reel,
      video: '1.mp4',
      description: 'WhatsApp Clone part 2',
      likes: '6',
      date: 'November 26',
    ),
  ),
  UserPostModel(
    name: 'aiony_haust',
    profileImage: 'aiony-haust.jpg',
    post: PostModel(
      postType: Post.picture,
      images: ['1-1.jpg', '1-2.jpg'],
      description: 'Payment App\nBy @design_bijay.singh',
      likes: '26',
      comments: '5',
      date: '2 hours ago',
    ),
    hasStory: true,
  ),
  UserPostModel(
    name: 'foto_sushi',
    profileImage: 'foto-sushi.jpg',
    post: PostModel(
      postType: Post.reel,
      video: '2.mp4',
      description:
          '1500 x ❤️ = full tutorial 🍿Animated Cube effect in Figma coming soon! (That’s if we hit 1500 ❤️s) 😁✌️Cheers!',
      likes: '1,279',
      comments: '97',
      date: '3 hours ago',
    ),
    hasStory: true,
  ),
  UserPostModel(
    name: 'foto_sushi',
    profileImage: 'foto-sushi.jpg',
    post: PostModel(
      postType: Post.picture,
      images: ['2.jpg'],
      description: 'By @dotpixelagency ',
      likes: '22',
      comments: '9',
      date: '2 days ago',
    ),
  ),
  UserPostModel(
      name: 'lucas.sankey',
      profileImage: 'lucas-sankey.jpg',
      post: PostModel(
        postType: Post.picture,
        images: ['3.jpg', '4.jpg'],
        description: 'Job board App\nBy @johnnycreated',
        likes: '50',
        comments: '15',
        date: '1 day ago',
      ),
      hasStory: true),
  UserPostModel(
    name: 'decodev.m',
    profileImage: 'deco-dev.png',
    post: PostModel(
      postType: Post.reel,
      video: '3.mp4',
      description: 'Facebook Clone with Flutter\n@scorpioclubuabt',
      likes: '14',
      comments: '4',
      date: 'November 21',
    ),
  ),
  UserPostModel(
      name: 'averie.woodard',
      profileImage: 'averie-woodard.jpg',
      post: PostModel(
        postType: Post.picture,
        images: ['5.jpg'],
        description: 'Job board App\nBy @johnnycreated',
        likes: '100',
        comments: '9',
        date: '1 day ago',
      ),
      hasStory: true),
  UserPostModel(
    name: 'michael._rattaroli',
    profileImage: 'michael-frattaroli.jpg',
    post: PostModel(
      postType: Post.reel,
      video: '4.mp4',
      description:
          'Design a dynamic input field in Figma - Design Basics #2 Don’t forget to hit like and follow @uiadrian for more tutorials, freebies and design-related content 🔥P.S. if you’re interested in web and mobile design - check out my ebooks - I’ve got gifts for Christmas! 🎁🎄Best,Adrian',
      likes: '1,396',
      comments: '122',
      date: '2 days ago',
    ),
  ),
];
