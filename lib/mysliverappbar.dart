import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final onPress;
  const MyAppBar({Key? key, this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.black,
      elevation: 14,
      leading: Padding(
        padding: EdgeInsets.fromLTRB(3, 7, 0, 7),
        child: InkWell(
          onTap: () {},
          child: Ink.image(
            image: AssetImage('images/logo.jpg'),
          ),
        ),
      ),
      expandedHeight: 344,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
          background: Image.asset(
            'images/white.jpg',
            fit: BoxFit.fill,
          ),
          titlePadding: EdgeInsets.all(0),
          collapseMode: CollapseMode.pin,
          title: Container(
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: onPress,
                    icon: Icon(Icons.menu),
                    color: Colors.orangeAccent[400],
                    iconSize: 30),
              ],
            ),
          )),
    );
  }
}
