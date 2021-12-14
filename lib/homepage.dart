import 'package:flutter/material.dart';
import 'package:flutter_application_sliverappbar/mysliverappbar.dart';
import 'package:flutter_application_sliverappbar/mysquare.dart';
import 'package:flutter_application_sliverappbar/mystickyheader.dart';
import 'package:flutter_application_sliverappbar/servicesbox.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isVisible = false;
  void onMenuPress() {
    setState(() => isVisible = !isVisible);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent[400],
      body: CustomScrollView(
        slivers: [
          MyAppBar(onPress: onMenuPress),
          MyStickyHeader(isVisi: isVisible),
          MyServiceBox(),
          MySquareG(),
          MySlider(),
          MySquareG(),
          MySquareG(),
          MySlider(),
          MySlider(),
          MySquareG(),
          MySquareG(),
          MySquareG(),
        ],
      ),
    );
  }
}
