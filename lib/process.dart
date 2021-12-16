import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ProcessBox extends StatelessWidget {
  const ProcessBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.all(5),
        color: Colors.grey[200],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'images/process/header.png',
              width: MediaQuery.of(context).size.width * 0.3,
            ),
            Row(
              children: [
                Container(
                  height: MediaQuery.of(context).size.width * (0.4 * 264 / 599),
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
                  width: MediaQuery.of(context).size.width * 0.3,
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
                  height: MediaQuery.of(context).size.width * (0.4 * 264 / 599),
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
        ),
      ),
    );
  }
}
