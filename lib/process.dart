import 'package:flutter/material.dart';
import 'package:flutter_application_sliverappbar/ResponsiveLayout.dart';

class ProcessBox extends StatelessWidget {
  const ProcessBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.fromLTRB(5, 15, 5, 20),
        color: Colors.grey[200],
        child: ResponsiveLayout(),
      ),
    );
  }
}
