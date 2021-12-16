import 'package:flutter/material.dart';
import 'package:flutter_application_sliverappbar/about.dart';
import 'package:flutter_application_sliverappbar/imgcarousel.dart';
import 'package:flutter_application_sliverappbar/mysliverappbar.dart';
import 'package:flutter_application_sliverappbar/mysquare.dart';
import 'package:flutter_application_sliverappbar/mystickyheader.dart';
import 'package:flutter_application_sliverappbar/process.dart';
import 'package:flutter_application_sliverappbar/processtree.dart';
import 'package:flutter_application_sliverappbar/workimgcarousel.dart';

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
          ImgSlider(),
          WorkImgSlider(),
          AboutSection(),
          ProcessBox(),
          ProcessTree(),
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
