import 'package:flutter/material.dart';
import 'package:mit/src/config/theme.dart';
import 'package:mit/src/data/pages/homepage/homepage.dart';

import 'menu/drawer_menu.dart';

class DrawerWidget extends StatelessWidget {
  final backgroundColor = AppTheme.backgroundColor;
  final itemColor = AppTheme.itemColor;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(60.0),
        ),
        child: Drawer(
          backgroundColor: backgroundColor,
          shadowColor: backgroundColor,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                color: backgroundColor,
                height: 70,
                child: DrawerHeader(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.clear,
                          color: itemColor,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              MenuDrawer(
                icon: Icons.scoreboard,
                text: 'Scores',
              ),
              MenuDrawer(
                icon: Icons.payment,
                text: 'Prize Payout',
              ),
              MenuDrawer(
                icon: Icons.rule_folder,
                text: 'Rules',
              ),
              MenuDrawer(
                icon: Icons.call_merge_outlined,
                text: 'Support',
              ),
              MenuDrawer(
                icon: Icons.circle_notifications,
                text: 'About',
              ),
              MenuDrawer(
                icon: Icons.bookmark_add,
                text: 'Buy OurBbook',
              ),
              InkWell(
                onTap: () => Navigator.pushNamed(
                    context,
                    '${HomePage(
                      title: '',
                    )}'),
                child: MenuDrawer(
                  icon: Icons.sign_language_outlined,
                  text: 'Sign Out',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
