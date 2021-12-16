import 'package:flutter/material.dart';

class TestimonialSlider extends StatelessWidget {
  const TestimonialSlider({Key? key}) : super(key: key);
  final double profileHeight = 120;
  @override
  Widget build(BuildContext context) {
    final pimg = -profileHeight * 0.5;
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(14, 80, 14, 14),
        child: Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Container(
                color: Colors.grey[900],
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(25, 70, 25, 25),
                  child: Column(
                    children: [
                      Text(
                        'Aditay Halan',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Divider(
                        color: Colors.orangeAccent,
                        height: 2,
                        thickness: 2,
                      ),
                      const SizedBox(height: 15),
                      Text(
                        ' The developers we hired with AJM have been extremely professional and very experienced. These guys are ‘Pro’ and know their game very well /  know what needs done and how to do it. ',
                        style: TextStyle(
                          fontSize: 19,
                          color: Colors.white,
                          height: 1.5,
                        ),
                      ),
                      const SizedBox(height: 100),
                      Divider(
                        color: Colors.orangeAccent,
                        thickness: 2,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Testimonial 1',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: pimg,
              child: buildProfileImg(),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildProfileImg() => CircleAvatar(
        radius: profileHeight / 2,
        backgroundColor: Colors.grey[900],
        child: CircleAvatar(
          radius: profileHeight / 2.1,
          backgroundColor: Colors.red,
        ),
        //backgroundImage: ,
      );
}
