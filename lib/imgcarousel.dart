import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ImgSlider extends StatefulWidget {
  const ImgSlider({Key? key}) : super(key: key);

  @override
  _ImgSliderState createState() => _ImgSliderState();
}

class _ImgSliderState extends State<ImgSlider> {
  int activeIndex = 0;
  final urlImgs = [
    'images/Cloud_Saas_2.jpg',
    'images/Technocal_consultant.jpg',
    'images/UI_UX.jpg',
    'images/Web_development_3.jpg',
    'images/Hire.jpg',
    'images/Mobile_development_1.jpg',
    'images/Project_Management.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 647,
        child: Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 4, 10, 0),
                child: Text(
                  'SERVICES',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 4),
                child: Text(
                  'what we do',
                  style: TextStyle(
                    color: Colors.grey[800],
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
                  height: 556,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 2),
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
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
        child: ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: Image.asset(
            urlImg,
            fit: BoxFit.cover,
          ),
        ),
      );

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: urlImgs.length,
        effect: ScrollingDotsEffect(
          activeDotColor: Colors.black,
          dotWidth: 10,
          dotHeight: 10,
        ),
      );
}
