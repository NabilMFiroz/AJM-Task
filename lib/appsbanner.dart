import 'package:flutter/material.dart';

class AppsBanner extends StatelessWidget {
  const AppsBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        color: Colors.grey,
        height: 400,
        width: 200,
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            Image.asset('images/appslogo/adapt_h.png'),
            Image.asset('images/appslogo/best_ever_h.png'),
            Image.asset('images/appslogo/design_h.png'),
            Image.asset('images/appslogo/fletch_h.png'),
            Image.asset('images/appslogo/mottom_h.png'),
          ],
        ),
      ),
    );
  }
}
