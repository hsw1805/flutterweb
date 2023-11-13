import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(const Closet());
}

class Closet extends StatelessWidget {
  const Closet({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Closet', //윈도우 바 이름
      theme: ThemeData(
        //테마 바꾸기(나중에 수정할 것)
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}
