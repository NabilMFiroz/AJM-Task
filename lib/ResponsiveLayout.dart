import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class ResponsiveLayout extends StatelessWidget {
  final children;
  const ResponsiveLayout({Key? key, this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width < 500) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'images/process/header.png',
            width: MediaQuery.of(context).size.width * 0.7,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.width * (1.1 * 264 / 599),
                child: AutoSizeText(
                  '{',
                  maxFontSize: 500,
                  minFontSize: 50,
                  style: TextStyle(
                    fontSize: 200,
                    color: Colors.blue[900],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 7),
                width: MediaQuery.of(context).size.width * 0.65,
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    'WE FOLLOW AGILE SCRUM BASED DEVELOPMENT \n APPROACH, WHERE EVERYDAY OUR TEAM  OF \n BEST DEVELOPERS AND PROJECT MANAGERS \n BRING TO REALITY YOUR IDEAS, EVEN IF IT NEEDS \n SPENDING COUNTLESS HOUR OF THEIR SKILLS IN \n FRONT OF PC ALL-DAY , EVERYDAY.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      height: 2,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[900],
                    ),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.width * (1.1 * 264 / 599),
                child: AutoSizeText(
                  '}',
                  maxFontSize: 200,
                  minFontSize: 50,
                  style: TextStyle(
                    fontSize: 200,
                    color: Colors.blue[900],
                  ),
                ),
              ),
            ],
          ),
        ],
      );
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          'images/process/header.png',
          width: MediaQuery.of(context).size.width * 0.4,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.width * (0.45 * 264 / 599),
              child: AutoSizeText(
                '{',
                maxFontSize: 500,
                minFontSize: 50,
                style: TextStyle(
                  fontSize: 200,
                  color: Colors.blue[900],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 7),
              width: MediaQuery.of(context).size.width * 0.35,
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(
                  'WE FOLLOW AGILE SCRUM BASED DEVELOPMENT \n APPROACH, WHERE EVERYDAY OUR TEAM  OF \n BEST DEVELOPERS AND PROJECT MANAGERS \n BRING TO REALITY YOUR IDEAS, EVEN IF IT NEEDS \n SPENDING COUNTLESS HOUR OF THEIR SKILLS IN \n FRONT OF PC ALL-DAY , EVERYDAY.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    height: 2,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[900],
                  ),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.width * (0.45 * 264 / 599),
              child: AutoSizeText(
                '}',
                maxFontSize: 200,
                minFontSize: 50,
                style: TextStyle(
                  fontSize: 200,
                  color: Colors.blue[900],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
