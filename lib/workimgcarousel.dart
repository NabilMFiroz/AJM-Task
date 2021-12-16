import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_application_sliverappbar/model/Work.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WorkImgSlider extends StatefulWidget {
  const WorkImgSlider({Key? key}) : super(key: key);

  @override
  _WorkImgSliderState createState() => _WorkImgSliderState();
}

class _WorkImgSliderState extends State<WorkImgSlider> {
  int activeIndex = 0;
  final controller = CarouselController();
  List<Work> worktag = [
    Work(
      img: 'images/workimgs/Adapt.png',
      title: 'ADAPT',
      tagline: 'CMS based E-Commerce App',
    ),
    Work(
      img: 'images/workimgs/BEFRG.png',
      title: 'BEST EVER FLAT RATE GUIDE',
      tagline: 'Fully Customize CMS and Application for Technicians',
    ),
    Work(
      img: 'images/workimgs/civic.png',
      title: 'MY CIVIC',
      tagline: 'Cloud Based Multi-Application Platform',
    ),
    Work(
      img: 'images/workimgs/design.png',
      title: 'DESIGN ME',
      tagline: 'E-Commerce App for Designing and Sublimation Printing',
    ),
    Work(
      img: 'images/workimgs/Fletch.png',
      title: 'FLETCH',
      tagline: 'Education Based App for Students and School/University',
    ),
    Work(
      img: 'images/workimgs/motto.png',
      title: 'MOTTOMOBILE',
      tagline: 'Code free Mobile App with White Labels',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
        color: Colors.grey[900],
        height: 646,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
                  'What we have done',
                  style: TextStyle(
                    color: Colors.orangeAccent,
                    //fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              CarouselSlider.builder(
                carouselController: controller,
                itemCount: worktag.length,
                itemBuilder: (context, index, realIndex) {
                  final work = worktag[index];

                  return buildImage(work, index);
                },
                options: CarouselOptions(
                  height: 497,
                  initialPage: 2,
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) =>
                      setState(() => activeIndex = index),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: previous,
                    icon: Icon(
                      Icons.arrow_back_ios_rounded,
                      color: Colors.orangeAccent,
                    ),
                  ),
                  buildIndicator(),
                  IconButton(
                    onPressed: next,
                    icon: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.orangeAccent,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildImage(Work work, int index) => Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              work.img,
              fit: BoxFit.contain,
              scale: 1,
            ),
            const SizedBox(height: 10),
            Text(
              work.title,
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              work.tagline,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.orangeAccent,
              ),
            ),
          ],
        ),
      );

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: worktag.length,
        effect: ScrollingDotsEffect(
          activeDotColor: Colors.orangeAccent,
          dotWidth: 10,
          dotHeight: 10,
        ),
      );
  void previous() => controller.previousPage();
  void next() => controller.nextPage();
}
