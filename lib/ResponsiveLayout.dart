import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class ResponsiveLayout extends StatelessWidget {
  final children;
  const ResponsiveLayout({Key? key, this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
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
                width: MediaQuery.of(context).size.width * 0.7,
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    'WE FOLLOW AGILE SCRUM BASED DEVELOPMENT APPROACH, \n WHERE EVERYDAY OUR TEAM  OF BEST DEVELOPERS AND \n PROJECT MANAGERS BRING TO REALITY YOUR IDEAS,\n EVEN IF IT NEEDS SPENDING COUNTLESS HOURS \n OF THEIR SKILLS IN FRONT OF PC ALL-DAY , EVERYDAY.',
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
          children: [
            Container(
              height: MediaQuery.of(context).size.width * (0.5 * 264 / 599),
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
                  'WE FOLLOW AGILE SCRUM BASED DEVELOPMENT APPROACH, \n WHERE EVERYDAY OUR TEAM  OF BEST DEVELOPERS AND \n PROJECT MANAGERS BRING TO REALITY YOUR IDEAS,\n EVEN IF IT NEEDS SPENDING COUNTLESS HOURS \n OF THEIR SKILLS IN FRONT OF PC ALL-DAY , EVERYDAY.',
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
              height: MediaQuery.of(context).size.width * (0.5 * 264 / 599),
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
