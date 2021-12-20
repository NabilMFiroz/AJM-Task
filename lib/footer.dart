import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PageFooter extends StatelessWidget {
  const PageFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        color: Colors.grey[700],
        padding: EdgeInsets.fromLTRB(14, 0, 14, 5),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(17)),
              child: Container(
                color: Colors.grey[900],
                padding: EdgeInsets.fromLTRB(14, 20, 14, 20),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/logo.jpg',
                      scale: 2,
                    ),
                    Text(
                      'AJM Softwares',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          EvaIcons.phoneOutline,
                          color: Colors.orangeAccent,
                          size: 15,
                        ),
                        Text(
                          ' : +91 8764433777 | ',
                          style: TextStyle(
                            color: Colors.orangeAccent,
                          ),
                        ),
                        Icon(
                          Icons.mail_outline,
                          color: Colors.orangeAccent,
                          size: 19,
                        ),
                        Text(
                          ' : info@ajm.in',
                          style: TextStyle(
                            color: Colors.orangeAccent,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.facebook,
                          color: Colors.grey[700],
                        ),
                        SizedBox(width: 10),
                        Icon(
                          EvaIcons.twitter,
                          color: Colors.grey[700],
                        ),
                        SizedBox(width: 10),
                        FaIcon(
                          FontAwesomeIcons.youtube,
                          color: Colors.grey[700],
                        ),
                        //color: Colors.grey[700],
                      ],
                    ),
                    // Icon(
                    //   Icons.arrow_drop_up_rounded,
                    //   size: 70,
                    //   color: Colors.grey[700],
                    // ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 5),
            Text(
              'About Us | Our Services | Portfolio | Contact Us | Blog',
              style: TextStyle(
                color: Colors.orangeAccent,
                fontSize: 10,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'A J M  S O F T W A R E S  @  2 0 1 7 .  A L L  R I G H T S  R E S E R V E D .',
              style: TextStyle(
                color: Colors.orangeAccent,
                fontSize: 11,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
