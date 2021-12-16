import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: Container(
            color: Colors.grey[900],
            child: Padding(
              padding: const EdgeInsets.fromLTRB(25, 22, 25, 25),
              child: Column(
                children: [
                  Text(
                    'MOBILE APP DEVELOPMENT COMPANY',
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
                    'AJM Softwares is a topmost Mobile app development company based in India and USA, delivering custom and enterprise web and mobile solutions with high level of accuracy and efficiency across multiple platforms. We are unique because we’ve a full-service approach to mobile and web. AJM loves taking ideas and turning them into real apps. We are passionate, creative and have experience developing products as entrepreneurs. We worked with many big brands.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.white,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
