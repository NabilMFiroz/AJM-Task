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
      height: 520,
      color: Colors.grey[600],
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Services',
            style: TextStyle(
              fontSize: 30,
              color: Colors.amber,
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
