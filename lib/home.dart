import 'package:closet/accessories.dart';
import 'package:closet/appBarDrawer.dart';
import 'package:closet/bottom.dart';
import 'package:closet/homePage.dart';
import 'package:closet/listView.dart';
import 'package:closet/login.dart';
import 'package:closet/outer.dart';
import 'package:closet/top.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static List<Widget> pages = <Widget>[
    HomePage(),
    Outer(),
    Top(),
    Bottom(),
    Accessories(),
  ];

  void _onItemClick(int index) {
    print(index);
    _selectedIndex = index;
    setState(() {});
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(1), //투명도 조절
        title: const Text(
          'Vintage Closet',
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
            //fontFamily:'GmarketSansTTF',
          ),
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.list),
              color: Colors.white,
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        actions: const [
          Login(),
        ],
      ),
      drawer: AppBarDrawer(selectedIndex: _selectedIndex, onItemClick: _onItemClick),
      body: pages[_selectedIndex],
    );
  }
}
