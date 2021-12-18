import 'package:flutter/material.dart';
import 'package:flutter_application_sliverappbar/blogcontain.dart';
import 'package:flutter_application_sliverappbar/model/BlogType.dart';

List<BlogType> bList = [
  BlogType(
    img: 'images/blogs/blogimg2.jpg',
    title:
        '8 Crucial Points: Is Your Website Missing The Relationship With Users?',
    head:
        "You're missing the gravy train if you're not using all marketing elements of your website to their full capacity",
    bDate: '10-Sep-16',
  ),
  BlogType(
    img: 'images/blogs/blogimg3.jpg',
    title: 'Mobile Apps Which Is Built For Your Business Success',
    head:
        'Mobile apps have become ubiquitous, yet it can be difficult to have own mobile app',
    bDate: '05-Sep-16',
  ),
  BlogType(
    img: 'images/blogs/blogimg1.jpg',
    title:
        'Business Change All The Time.. Considering A Website Redesign? Try These Steps First.',
    head:
        'Consider and learn a build , a measure approach before starting a redesign',
    bDate: '15-Aug-16',
  ),
  BlogType(
    img: 'images/blogs/blogimg4.jpg',
    title: 'Why Your Bussiness Needs Its Own Mobile App',
    head:
        'You use apps to manage your key business processes for ordering inventory, monitoring cash flow..',
    bDate: '02-Aug-16',
  ),
  BlogType(
    img: 'images/blogs/blogimg5.jpg',
    title: 'Time Is Money: 3 Ways To Network Meaningfully',
    head:
        'Knowing how to network is just as important as the art of networking itself',
    bDate: '08-Jul-16',
  ),
  BlogType(
    img: 'images/blogs/blogimg6.jpg',
    title: 'WHAT RETAILERS CAN TEACH FIS ABOUT MARKETING',
    head:
        'Many financial institutions don’t want to admit it, but the truth is simple – financial institutions are retailers',
    bDate: '20-Jun-16',
  ),
  BlogType(
    img: 'images/blogs/blogimg7.jpg',
    title: 'Email Marketing With Mobile Apps: A Well-Suited Combination',
    head:
        'Email marketing connects you with your customers, you’re gonna love mobile apps.',
    bDate: '23-May-16',
  ),
  BlogType(
    img: 'images/blogs/blogimg8.jpg',
    title: 'Best Ways To Test Your Website’s Mobile-Friendliness',
    head:
        'understand the benefits of how the search engine helps point people to your website.',
    bDate: '12-May-16',
  ),
];

class BlogList extends StatelessWidget {
  const BlogList({Key? key}) : super(key: key);
  final double dateCircleHeight = 120;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Container(
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.only(bottom: 5),
              color: Colors.grey[900],
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 7, 10, 0),
                      child: Text(
                        'OUR BLOG',
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
                        "What's Trending",
                        style: TextStyle(
                          color: Colors.orangeAccent,
                          //fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ],
                ),
              )),
          Container(
            padding: EdgeInsets.only(bottom: 30),
            color: Colors.grey[700],
            child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (listViewContent, index) {
                final bl = bList[index];

                return BlogContainer(bcontent: bl);
              },
              itemCount: bList.length,
            ),
          ),
        ],
      ),
    );
  }
}
