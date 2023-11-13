import 'package:flutter/material.dart';

class AppBarDrawer extends StatefulWidget {
  const AppBarDrawer({Key? key, required this.selectedIndex}) : super(key: key);

  final int selectedIndex;

  @override
  State<AppBarDrawer> createState() => _AppBarDrawerState();
}

class _AppBarDrawerState extends State<AppBarDrawer> {
  void _onItemClick(int index) {
    print(index);
    setState(() {});
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black.withOpacity(0.05),
      child: ListView(
        padding: EdgeInsets.all(12),
        children: [
          ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.white,
            ),
            title: const Text('Home', style: TextStyle(color: Colors.white)),
            selected: widget.selectedIndex == 0,
            onTap: () {
              _onItemClick(0);
            },
          ),
          ListTile(
            title: const Text('        Outer', style: TextStyle(color: Colors.white)),
            selected: widget.selectedIndex == 1,
            onTap: () {
              _onItemClick(1);
            },
          ),
          ListTile(
            title: const Text('        Top', style: TextStyle(color: Colors.white)),
            selected: widget.selectedIndex == 2,
            onTap: () {
              _onItemClick(2);
            },
          ),
          ListTile(
            title: const Text('        Bottom', style: TextStyle(color: Colors.white)),
            selected: widget.selectedIndex == 3,
            onTap: () {
              _onItemClick(3);
            },
          ),
          ListTile(
            title: const Text('        Accessories', style: TextStyle(color: Colors.white)),
            selected: widget.selectedIndex == 4,
            onTap: () {
              _onItemClick(4);
            },
          ),
        ],
      ),
    );
  }
}
