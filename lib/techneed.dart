import 'package:flutter/material.dart';

Icon aic = ic1;
final ic1 = Icon(
  Icons.arrow_drop_down_circle_outlined,
  size: 34,
  color: Colors.white,
);
final ic2 = Icon(
  Icons.arrow_circle_up_outlined,
  size: 34,
  color: Colors.white,
);
bool arrowIc = true;

class TechNeedH extends StatefulWidget {
  const TechNeedH({Key? key}) : super(key: key);

  @override
  _TechNeedHState createState() => _TechNeedHState();
}

class _TechNeedHState extends State<TechNeedH> {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
          padding: EdgeInsets.only(top: 36),
          width: MediaQuery.of(context).size.width,
          height: 150,
          color: Colors.teal,
          child: Column(
            children: [
              Text(
                "WE'RE READY TO FULLFILL YOUR",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              Text(
                "TECHNICAL NEEDS",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                onPressed: toggleArrow,
                icon: aic,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void toggleArrow() => setState(() {
        arrowIc = !arrowIc;
        arrowIc ? aic = ic1 : aic = ic2;
      });
}
