import 'package:flutter/material.dart';

class ServicesBox extends StatelessWidget {
  const ServicesBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Center(
        //padding: const EdgeInsets.all(50),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: Container(
            color: Colors.grey[400],
            child: Image.asset('images/Project_Management.jpg'),
            height: 446,
            width: 251,
          ),
        ),
      ),
    );
  }
}

class MyServiceBox extends StatelessWidget {
  const MyServiceBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Container(
      margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
      height: 520,
      color: Colors.grey[600],
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Our Work',
            style: TextStyle(
              fontSize: 30,
              color: Colors.orangeAccent,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SingleChildScrollView(
          physics: PageScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ServicesBox(),
              ServicesBox(),
              ServicesBox(),
              ServicesBox(),
              ServicesBox(),
              ServicesBox(),
              ServicesBox(),
            ],
          ),
        ),
      ]),
    ));
  }
}
