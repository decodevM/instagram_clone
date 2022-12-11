import 'package:flutter/cupertino.dart';
import 'package:instagram_clone/models/user_post_model.dart';

class StoryPicture extends StatelessWidget {
  const StoryPicture({
    Key? key,
    required this.user,
    this.hideName = false,
    this.size = 80,
  }) : super(key: key);
  final UserPostModel user;
  final bool hideName;
  final double size;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      child: Column(
        children: [
          Container(
            height: size - 10,
            width: size - 10,
            decoration: user.hasStory
                ? const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [
                        CupertinoColors.activeOrange,
                        CupertinoColors.systemPink,
                      ],
                    ),
                  )
                : null,
            padding: const EdgeInsets.all(2),
            child: Container(
              decoration: const BoxDecoration(shape: BoxShape.circle, color: CupertinoColors.white),
              padding: const EdgeInsets.all(2),
              child: Container(
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: CupertinoColors.white,
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/sources/profiles/${user.profileImage}',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          if (!hideName)
            Text(
              user.name,
              style: TextStyle(
                  color: CupertinoColors.black.withOpacity(.8),
                  fontSize: 16,
                  overflow: TextOverflow.ellipsis),
            ),
        ],
      ),
    );
  }
}
