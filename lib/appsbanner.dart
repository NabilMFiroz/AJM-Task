import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class AppsBanner extends StatefulWidget {
  const AppsBanner({Key? key}) : super(key: key);

  @override
  _AppsBannerState createState() => _AppsBannerState();
}

class _AppsBannerState extends State<AppsBanner> {
  final logoimgs = [
    'images/appslogo/adapt_h.png',
    'images/appslogo/best_ever_h.png',
    'images/appslogo/design_h.png',
    'images/appslogo/fletch_h.png',
    'images/appslogo/mottom_h.png',
  ];

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
          margin: EdgeInsets.only(top: 20),
          color: Colors.grey[700],
          height: 80,
          child: CarouselSlider.builder(
            itemCount: logoimgs.length,
            itemBuilder: (context, index, realIndex) {
              final logos = logoimgs[index];

              return buildLogo(logos, index);
            },
            options: CarouselOptions(
              height: 40,
              autoPlay: true,
              reverse: true,
              viewportFraction: 1,
            ),
          )),
    );
  }

  Widget buildLogo(String logos, int index) => Container(
        child: Image.asset(
          logos,
          fit: BoxFit.cover,
        ),
      );
}
