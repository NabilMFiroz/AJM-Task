import 'package:flutter/material.dart';
import 'package:flutter_application_sliverappbar/about.dart';
import 'package:flutter_application_sliverappbar/appsbanner.dart';
import 'package:flutter_application_sliverappbar/blogslist.dart';
import 'package:flutter_application_sliverappbar/imgcarousel.dart';
import 'package:flutter_application_sliverappbar/mysliverappbar.dart';
import 'package:flutter_application_sliverappbar/mysquare.dart';
import 'package:flutter_application_sliverappbar/mystickyheader.dart';
import 'package:flutter_application_sliverappbar/process.dart';
import 'package:flutter_application_sliverappbar/processtree.dart';
import 'package:flutter_application_sliverappbar/techneed.dart';
import 'package:flutter_application_sliverappbar/techneedform.dart';
import 'package:flutter_application_sliverappbar/testimonialcardslider.dart';
import 'package:flutter_application_sliverappbar/workimgcarousel.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isVisibleM = false;
  bool isVisibleF = false;
  void onMenuPress() {
    setState(() => isVisibleM = !isVisibleM);
  }

  void onFormPress() {
    setState(() => isVisibleF = !isVisibleF);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent[400],
      body: CustomScrollView(
        slivers: [
          MyAppBar(onPress: onMenuPress),
          MyStickyHeader(isVisi: isVisibleM),
          ImgSlider(),
          WorkImgSlider(),
          AboutSection(),
          ProcessBox(),
          ProcessTree(),
          TCardSlider(),
          AppsBanner(),
          BlogList(),
          TechNeedH(onAPress: onFormPress),
          TechNeedForm(
            isVis: isVisibleF,
          ),
          MySquareG(),
        ],
      ),
    );
  }
}
