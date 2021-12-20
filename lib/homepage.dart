import 'package:flutter/material.dart';
import 'package:flutter_application_sliverappbar/about.dart';
import 'package:flutter_application_sliverappbar/appsbanner.dart';
import 'package:flutter_application_sliverappbar/blogslist.dart';
import 'package:flutter_application_sliverappbar/footer.dart';
import 'package:flutter_application_sliverappbar/imgcarousel.dart';
import 'package:flutter_application_sliverappbar/mysliverappbar.dart';
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
  final controller = ScrollController();
  bool isVisibleM = false;
  bool isVisibleF = false;
  bool isVisibleB = false;
  void onMenuPress() {
    setState(() => isVisibleM = !isVisibleM);
  }

  void onFormPress() {
    setState(() => isVisibleF = !isVisibleF);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: isVisibleB ? buildGoTopButton() : null,
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      backgroundColor: Colors.orangeAccent[400],
      body: NotificationListener<ScrollEndNotification>(
        onNotification: (notification) {
          bottomP();
          return true;
        },
        child: CustomScrollView(
          controller: controller,
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
            PageFooter(),
          ],
        ),
      ),
    );
  }

  Widget buildGoTopButton() => FloatingActionButton(
        elevation: 0,
        onPressed: scrollUp,
        child: Icon(
          Icons.arrow_drop_up_rounded,
          size: 50,
          color: Colors.orangeAccent,
        ),
        backgroundColor: Colors.grey[700],
      );

  void scrollUp() {
    final double start = 0;
    controller.animateTo(start,
        duration: Duration(seconds: 1), curve: Curves.easeIn);
    setState(() => isVisibleB = false);
  }

  void bottomP() {
    final double end = controller.position.maxScrollExtent;
    final double cur = controller.position.pixels;
    setState(() => isVisibleB = end == cur);
  }
}
