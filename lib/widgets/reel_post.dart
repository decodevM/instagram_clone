import 'package:flutter/cupertino.dart';
import 'package:instagram_clone/models/user_post_model.dart';
import 'package:instagram_clone/widgets/story_picture.dart';
import 'package:video_player/video_player.dart';

class ReelPost extends StatefulWidget {
  const ReelPost({Key? key, required this.post}) : super(key: key);
  final UserPostModel post;
  @override
  State<ReelPost> createState() => _ReelPostState(post);
}

class _ReelPostState extends State<ReelPost> {
  late VideoPlayerController _playerController;
  late UserPostModel post;
  _ReelPostState(this.post);
  @override
  void initState() {
    try {
      _playerController = VideoPlayerController.asset('assets/sources/videos/${post.post.video}')
        ..addListener(() {})
        ..setLooping(true)
        ..initialize().then(
          (value) => setState(() {}),
        );
    } catch (error) {
      print(error);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            StoryPicture(
              user: widget.post,
              hideName: true,
              size: 60,
            ),
            Text(
              widget.post.name,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            CupertinoButton(
              child: const Icon(CupertinoIcons.ellipsis, color: CupertinoColors.black),
              onPressed: () {},
            ),
          ],
        ),
        GestureDetector(
          onTap: () {
            if (_playerController.value.isPlaying) {
              _playerController.pause();
            } else {
              _playerController.play();
            }
          },
          onLongPressStart: (event) {
            _playerController.pause();
          },
          onLongPressEnd: (event) {
            _playerController.play();
          },
          child: ClipRect(
            clipBehavior: Clip.hardEdge,
            child: Stack(
              children: [
                Container(
                  height: 450,
                  alignment: Alignment.center,
                  child: Transform.scale(
                    scale: 1.5,
                    child: AspectRatio(
                      aspectRatio: _playerController.value.aspectRatio,
                      child: VideoPlayer(_playerController),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CupertinoButton(
                    child: Icon(
                        _playerController.value.volume == 1
                            ? CupertinoIcons.speaker_2_fill
                            : CupertinoIcons.volume_off,
                        color: CupertinoColors.white.withOpacity(1)),
                    onPressed: () {
                      if (_playerController.value.volume == 0) {
                        _playerController.setVolume(1);
                        setState(() {});
                      } else {
                        setState(() {});
                        _playerController.setVolume(0);
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            children: [
              CupertinoButton(
                onPressed: () {
                  setState(() {
                    widget.post.post.liked = !widget.post.post.liked;
                  });
                },
                padding: EdgeInsets.zero,
                child: Icon(
                    widget.post.post.liked ? CupertinoIcons.heart_fill : CupertinoIcons.heart,
                    color:
                        widget.post.post.liked ? CupertinoColors.systemRed : CupertinoColors.black),
              ),
              CupertinoButton(
                onPressed: () {},
                padding: EdgeInsets.zero,
                child: const Icon(CupertinoIcons.conversation_bubble, color: CupertinoColors.black),
              ),
              CupertinoButton(
                onPressed: () {},
                padding: EdgeInsets.zero,
                child: const Icon(CupertinoIcons.paperplane, color: CupertinoColors.black),
              ),
              const Spacer(),
              CupertinoButton(
                onPressed: () {
                  setState(() {
                    widget.post.post.saved = !widget.post.post.saved;
                  });
                },
                padding: EdgeInsets.zero,
                child: Icon(
                    widget.post.post.saved ? CupertinoIcons.bookmark_fill : CupertinoIcons.bookmark,
                    color: CupertinoColors.black),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${widget.post.post.likes} likes',
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
              RichText(
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                text: TextSpan(children: [
                  TextSpan(
                    text: widget.post.name,
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, color: CupertinoColors.black, fontSize: 16),
                  ),
                  const TextSpan(text: '  '),
                  TextSpan(
                    text: widget.post.post.description ?? '',
                    style: const TextStyle(color: CupertinoColors.black, fontSize: 16),
                  ),
                ]),
              ),
              if (widget.post.post.comments != null) ...[
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'View all ${widget.post.post.comments} comments',
                  style: TextStyle(color: CupertinoColors.black.withOpacity(.8), fontSize: 16),
                ),
              ],
              const SizedBox(
                height: 5,
              ),
              Text(
                widget.post.post.date!,
                style: TextStyle(color: CupertinoColors.black.withOpacity(.8), fontSize: 16),
              ),
            ],
          ),
        )
      ],
    );
  }
}
