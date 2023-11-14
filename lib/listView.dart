import 'package:flutter/material.dart';

class DrawerList extends StatelessWidget {
  final IconData? icon;
  final String title;
  final bool selected;
  final VoidCallback onTap;

  const DrawerList({
    Key? key,
    this.icon,
    required this.title,
    required this.selected,
    required this.onTap
  }) : super(key : key);


  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: icon !=null ? Icon(icon, color: Colors.white,):null,
      title: Text(
        icon == null?'        $title' : title,
        style: const TextStyle(color: Colors.white),
      ),
      selected: selected,
      onTap: onTap,
    );
  }
}
