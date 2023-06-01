import 'package:flutter/material.dart';
import 'package:mit/src/config/theme.dart';

class MenuDrawer extends StatelessWidget {
  IconData icon;
  String text;
  final itemColor = AppTheme.itemColor;

  MenuDrawer({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: ListTile(
        leading: Icon(
          icon,
          color: itemColor,
        ),
        title: Text(text),
        textColor: itemColor,
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
