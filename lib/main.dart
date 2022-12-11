import 'package:flutter/cupertino.dart';

import 'main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'Instagram',
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
