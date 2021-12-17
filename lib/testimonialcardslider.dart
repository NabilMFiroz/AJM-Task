import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_application_sliverappbar/model/Testimonialpage.dart';
import 'package:flutter_application_sliverappbar/testimonial.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class TCardSlider extends StatefulWidget {
  const TCardSlider({Key? key}) : super(key: key);

  @override
  _TCardSliderState createState() => _TCardSliderState();
}

class _TCardSliderState extends State<TCardSlider> {
  int activeIndex = 0;
  final controller = CarouselController();
  List<TPage> tPagelist = [
    TPage(
        img: 'images/testimonial/aditya halan.jpg',
        name: 'Aditya halan',
        quote:
            ' The developers we hired with AJM have been extremely professional and very experienced. These guys are ‘Pro’ and know their game very well /  know what needs done and how to do it.',
        testn: 'Testimonial 1'),
    TPage(
        img: 'images/testimonial/businessman-avatar.png',
        name: 'Joe Ramirez',
        quote:
            'AJM helped me turn my vision into reality. Mahesh, Ashish and their team form the backbone of our platform and are major players in our success to date.',
        testn: 'Testimonial 2'),
    TPage(
        img: 'images/testimonial/businessman-avatar.png',
        name: 'Greg Farnandiz',
        quote:
            'Working with offshore team has never been easier. Team #AJM is always prompt , quick and efficient from idea to deploy.',
        testn: 'Testimonial 3'),
    TPage(
        img: 'images/testimonial/businessman-avatar.png',
        name: 'Tony Harmon',
        quote:
            ' After switching 3 technology vendors, we finally found our one stop development partner.',
        testn: 'Testimonial 4'),
    TPage(
        img: 'images/testimonial/businessman-avatar.png',
        name: 'Thomas Sokoll',
        quote:
            ' The commitment and talent of team AJM is incredible. We are always astonished by the deliverables and the suggestions while brainstorming our ideas and bringing them to reality.',
        testn: 'Testimonial 5'),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          CarouselSlider.builder(
            itemCount: tPagelist.length,
            carouselController: controller,
            itemBuilder: (context, index, realIndex) {
              final pageT = tPagelist[index];

              return TestimonialSlider(tp: pageT);
            },
            options: CarouselOptions(
              height: 560,
              autoPlay: true,
              viewportFraction: 1,
              autoPlayInterval: Duration(seconds: 5),
              onPageChanged: (index, reason) =>
                  setState(() => activeIndex = index),
            ),
          ),
          //const SizedBox(height: 5),
//          buildIndicator(),
        ],
      ),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: tPagelist.length,
        onDotClicked: animatetoslide,
        effect: ScrollingDotsEffect(
          activeDotColor: Colors.black,
          dotWidth: 10,
          dotHeight: 10,
        ),
      );
  void animatetoslide(int index) => controller.animateToPage(index);
}
