import 'package:flutter/material.dart';
import 'package:mit/src/config/images.dart';
import 'package:mit/src/config/theme.dart';
import 'package:mit/src/widgets/drawer.dart';

class HomePage extends StatefulWidget {
  HomePage({
    super.key,
    required this.title,
  });
  final String title;
  final backgroundColor = AppTheme.backgroundColor;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: widget.backgroundColor,
      appBar: AppBar(
        backgroundColor: widget.backgroundColor,
        shadowColor: AppTheme.backgroundColor,
        foregroundColor: AppTheme.itemColor,
      ),
      endDrawer: DrawerWidget(),
      body: Column(
        children: <Widget>[
          Container(
            transform: Matrix4.translationValues(-70.0, -10.0, 0.0),
            child: Image.asset(
              DroneImages.world,
              height: DroneSizes.double200,
            ),
          ),
          SizedBox(
            height: DroneSizes.double20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: (width - DroneSizes.double100) / 2),
                child: SizedBox(
                  height: DroneSizes.double100,
                  child: Image.asset(
                    DroneImages.logo,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
