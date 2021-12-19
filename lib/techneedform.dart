import 'package:flutter/material.dart';

class TechNeedForm extends StatefulWidget {
  const TechNeedForm({Key? key}) : super(key: key);

  @override
  _TechNeedFormState createState() => _TechNeedFormState();
}

class _TechNeedFormState extends State<TechNeedForm> {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
          height: 550,
          padding: EdgeInsets.all(25),
          margin: EdgeInsets.zero,
          color: Colors.teal,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.chat,
                    size: 35,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "LET'S TALK",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              SizedBox(height: 25),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Name',
                  hintStyle: TextStyle(color: Colors.white),
                  labelText: 'Your Name',
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.white, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide:
                        BorderSide(color: Colors.orangeAccent, width: 3),
                  ),
                ),
                style: TextStyle(color: Colors.white, fontSize: 16),
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.done,
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  hintText: 'name@example.com',
                  hintStyle: TextStyle(color: Colors.white),
                  labelText: '@Email',
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.white, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide:
                        BorderSide(color: Colors.orangeAccent, width: 3),
                  ),
                ),
                style: TextStyle(color: Colors.white, fontSize: 16),
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.done,
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  hintText: '+91',
                  hintStyle: TextStyle(color: Colors.white),
                  labelText: 'Phone Number',
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.white, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide:
                        BorderSide(color: Colors.orangeAccent, width: 3),
                  ),
                ),
                style: TextStyle(color: Colors.white, fontSize: 16),
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.done,
              ),
              SizedBox(height: 10),
              TextFormField(
                minLines: 5,
                maxLines: 5,
                style: TextStyle(color: Colors.white, fontSize: 16),
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  labelText: "Tell us what's on your mind..",
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.white, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide:
                        BorderSide(color: Colors.orangeAccent, width: 3),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => FocusScope.of(context).unfocus(),
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(180, 50),
                    primary: Colors.white,
                    onPrimary: Colors.teal,
                    elevation: 12,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12))),
                child: Text(
                  'Get in Touch',
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          )),
    );
  }
}
