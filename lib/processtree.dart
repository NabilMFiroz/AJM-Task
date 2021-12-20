import 'package:flutter/material.dart';

class ProcessTree extends StatelessWidget {
  const ProcessTree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.zero,
        color: Colors.grey[200],
        child: Image.asset(
          'images/process/process_tree.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
