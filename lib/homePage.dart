import 'package:closet/accessories.dart';
import 'package:closet/bottom.dart';
import 'package:closet/home.dart';
import 'package:closet/outer.dart';
import 'package:closet/top.dart';
import 'package:flutter/material.dart';


enum ListMenu {
  HomePage,
  Outer,
  Top,
  Bottom,
  Accessories,
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image : AssetImage('assets/home.jpg'),
            fit:BoxFit.fill,
      )

      )
    );
  }
}
