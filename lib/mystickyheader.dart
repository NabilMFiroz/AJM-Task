import 'package:flutter/material.dart';
import 'package:sliver_tools/sliver_tools.dart';

class MyStickyHeader extends StatelessWidget {
  final isVisi;
  const MyStickyHeader({Key? key, this.isVisi}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPinnedHeader(
      child: Visibility(
        visible: isVisi,
        child: SizedBox(
          child: Container(
            color: Colors.black,
            child: ListView(
              padding: EdgeInsets.zero,
              physics: NeverScrollableScrollPhysics(),
              children: [
                ListTile(
                  title: Text(
                    'KNOW US',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  hoverColor: Colors.amber,
                ),
                Divider(
                  color: Colors.amber,
                  thickness: 1,
                  height: 1,
                ),
                ListTile(
                  title: Text(
                    'SERVICES',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  hoverColor: Colors.amber,
                ),
                ListTile(
                  title: Text(
                    'PORTFOLIO',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  hoverColor: Colors.amber,
                ),
                ListTile(
                  title: Text(
                    'LIFE @ NMF',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  hoverColor: Colors.amber,
                ),
                ListTile(
                  title: Text(
                    'GET A QUOTE',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  hoverColor: Colors.amber,
                ),
                ListTile(
                  title: Text(
                    'BLOG',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  hoverColor: Colors.amber,
                ),
                ListTile(
                  title: Text(
                    'CONTACT US',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  hoverColor: Colors.amber,
                ),
              ],
            ),
          ),
          height: 400,
        ),
      ),
    );
  }
}
