import 'package:flutter/cupertino.dart';

class InstagramTopBar extends StatelessWidget with ObstructingPreferredSizeWidget {
  const InstagramTopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoNavigationBar(
      backgroundColor: CupertinoColors.white,
      border: Border.all(style: BorderStyle.none),
      leading: Container(
        height: 50,
        width: 200,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/sources/logo/instagram_logo.png'),
            fit: BoxFit.fill,
          ),
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CupertinoButton(
            padding: EdgeInsets.zero,
            child: const Icon(
              CupertinoIcons.plus_app,
              color: CupertinoColors.black,
              size: 30,
            ),
            onPressed: () {},
          ),
          const SizedBox(width: 10),
          CupertinoButton(
            padding: EdgeInsets.zero,
            child: const Icon(
              CupertinoIcons.heart,
              color: CupertinoColors.black,
              size: 30,
            ),
            onPressed: () {},
          ),
          const SizedBox(width: 10),
          CupertinoButton(
            padding: EdgeInsets.zero,
            child: const Icon(
              CupertinoIcons.chat_bubble_text,
              color: CupertinoColors.black,
              size: 30,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.infinity, 50);

  @override
  bool shouldFullyObstruct(BuildContext context) {
    return true;
  }
}
