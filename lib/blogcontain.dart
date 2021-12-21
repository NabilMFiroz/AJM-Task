import 'package:flutter/material.dart';

class BlogContainer extends StatelessWidget {
  final bcontent;
  const BlogContainer({Key? key, this.bcontent}) : super(key: key);
  final double dateCircleHeight = 120;
  @override
  Widget build(BuildContext context) {
    final pimg = -dateCircleHeight * 0.5;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Colors.orangeAccent[400], //grey[900],
        shadowColor: Colors.black,
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(20),
            highlightColor: Colors.blue.withOpacity(0.4),
            splashColor: Colors.blue.withOpacity(0.7),
            onTap: () {},
            child: Stack(
              alignment: Alignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(14),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(14),
                        child: Image.asset(
                          bcontent.img,
                          scale: 2,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        bcontent.title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          //color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        bcontent.head,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: pimg,
                  left: 40,
                  child: buildBlogDate(),
                ),
                Positioned(
                  top: 8,
                  left: 70,
                  child: Column(
                    children: [
                      Text(
                        bcontent.bDate,
                        style: TextStyle(
                          color: Colors.orangeAccent[400],
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildBlogDate() => CircleAvatar(
        radius: dateCircleHeight / 2,
        backgroundColor: Colors.orangeAccent[400], //grey[900],
        child: CircleAvatar(
          radius: dateCircleHeight / 2.5,
          backgroundColor: Colors.grey[800],
        ),
      );
}
