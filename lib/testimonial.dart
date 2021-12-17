import 'package:flutter/material.dart';

class TestimonialSlider extends StatelessWidget {
  final tp;
  const TestimonialSlider({Key? key, this.tp}) : super(key: key);
  final double profileHeight = 120;
  @override
  Widget build(BuildContext context) {
    final pimg = -profileHeight * 0.5;
    return Container(
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
                  padding: const EdgeInsets.fromLTRB(25, 70, 25, 20),
                  child: Column(
                    children: [
                      Text(
                        tp.name,
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
                        tp.quote,
                        style: TextStyle(
                          fontSize: 19,
                          color: Colors.white,
                          height: 1.5,
                        ),
                      ),
                      Spacer(),
                      Divider(
                        color: Colors.orangeAccent,
                        thickness: 2,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        tp.testn,
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
          radius: profileHeight / 2.2,
          backgroundColor: Colors.grey[900],
          backgroundImage: AssetImage(tp.img),
        ),
      );
}
