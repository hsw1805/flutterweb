import 'package:closet/listView.dart';
import 'package:flutter/material.dart';

class AppBarDrawer extends StatefulWidget {
  final int selectedIndex;
  final Function(int) onItemClick;
  const AppBarDrawer({
    Key? key,
    required this.selectedIndex,
    required this.onItemClick
  }) : super(key : key);

  @override
  State<AppBarDrawer> createState() => _AppBarDrawerState();
}

class _AppBarDrawerState extends State<AppBarDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(           //Drawer을 써서 옆 쪽 리스트  만들기!

      backgroundColor: Colors.black.withOpacity(0.05), //drawer 배경화면 색
      child: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          DrawerList(
              icon: Icons.home,
              title: 'Home',
              selected: widget.selectedIndex == 0,
              onTap: (){
                widget.onItemClick(0);
                Navigator.pop(context);
              }),
          DrawerList(
            title: 'Outer',
            selected: widget.selectedIndex == 1,
            onTap: () {
              widget.onItemClick(1);
              Navigator.pop(context);
            },
          ),
          DrawerList(
            title: 'Top',
            selected: widget.selectedIndex == 2,
            onTap: () {
              widget.onItemClick(2);
              Navigator.pop(context);
            },
          ),
          DrawerList(
            title: 'Body',
            selected: widget.selectedIndex == 3,
            onTap: () {
              widget.onItemClick(3);
              Navigator.pop(context);
            },
          ),
          DrawerList(
            title: 'Accessories',
            selected: widget.selectedIndex == 4,
            onTap: () {
              widget.onItemClick(4);
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
