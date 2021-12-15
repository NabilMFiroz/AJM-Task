import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WorkImgSlider extends StatefulWidget {
  const WorkImgSlider({Key? key}) : super(key: key);

  @override
  _WorkImgSliderState createState() => _WorkImgSliderState();
}

class _WorkImgSliderState extends State<WorkImgSlider> {
  int activeIndex = 0;
  final urlImgs = [
    'images/workimgs/Adapt.png',
    'images/workimgs/BEFRG.png',
    'images/workimgs/civic.png',
    'images/workimgs/design.png',
    'images/workimgs/Fletch.png',
    'images/workimgs/motto.png',
  ];

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
        color: Colors.grey[600],
        height: 435,
        child: Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 7, 10, 0),
                child: Text(
                  'OUR WORK',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.orangeAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 4),
                child: Text(
                  'what we have done',
                  style: TextStyle(
                    color: Colors.orangeAccent,
                    //fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              CarouselSlider.builder(
                itemCount: urlImgs.length,
                itemBuilder: (context, index, realIndex) {
                  final urlImg = urlImgs[index];

                  return buildImage(urlImg, index);
                },
                options: CarouselOptions(
                  height: 330,
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) =>
                      setState(() => activeIndex = index),
                ),
              ),
              const SizedBox(height: 17),
              buildIndicator(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildImage(String urlImg, int index) => Container(
        child: Image.asset(
          urlImg,
          fit: BoxFit.contain,
        ),
      );

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: urlImgs.length,
        effect: ScrollingDotsEffect(
          activeDotColor: Colors.orangeAccent,
          dotWidth: 10,
          dotHeight: 10,
        ),
      );
}
