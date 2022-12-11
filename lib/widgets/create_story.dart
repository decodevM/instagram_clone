import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateStory extends StatelessWidget {
  const CreateStory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 70,
              width: 70,
              decoration: const BoxDecoration(
                color: CupertinoColors.white,
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/sources/profiles/deco-dev.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Positioned(
              bottom: 0,
              right: 0,
              child: CircleAvatar(
                maxRadius: 10,
                backgroundColor: CupertinoColors.activeBlue,
                child: Icon(CupertinoIcons.add, size: 15),
              ),
            )
          ],
        ),
        Text(
          'Your story',
          style: TextStyle(fontSize: 16, color: CupertinoColors.systemGrey.withOpacity(.9)),
        ),
      ],
    );
  }
}
