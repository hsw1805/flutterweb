import 'package:closet/accessories.dart';
import 'package:closet/bottom.dart';
import 'package:closet/homePage.dart';
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
      drawer: Drawer(
        //Drawer을 써서 옆 쪽 리스트  만들기!

        backgroundColor: Colors.black.withOpacity(0.05), //drawer 배경화면 색
        child: ListView(
          padding: EdgeInsets.all(12),
          children: [
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: const Text('Home', style: TextStyle(color: Colors.white)),
              selected: _selectedIndex == 0,
              onTap: () {
                _onItemClick(0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('        Outer',
                  style: TextStyle(color: Colors.white)),
              selected: _selectedIndex == 1,
              onTap: () {
                _onItemClick(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('        Top',
                  style: TextStyle(color: Colors.white)),
              selected: _selectedIndex == 2,
              onTap: () {
                _onItemClick(2);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('        Bottom',
                  style: TextStyle(color: Colors.white)),
              selected: _selectedIndex == 3,
              onTap: () {
                _onItemClick(3);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('        Accessories',
                  style: TextStyle(color: Colors.white)),
              selected: _selectedIndex == 4,
              onTap: () {
                _onItemClick(4);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: pages[_selectedIndex],
    );
  }
}
