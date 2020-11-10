import 'package:flutter/material.dart';
import 'package:inventory_app/screens/mainScreen.dart';
import '../models/mainCurve.dart';

class Start_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Positioned(
              top: 125,
              right: 50,
              child: Image.asset(
                'assets/img.png',
                height: MediaQuery.of(context).size.height * 0.3,
              ),
            ),
            Align(
              alignment: Alignment(0, 92),
              child: ClipPath(
                clipper: mainCurve(),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.99,
                  color: Color(0xff351c56),
                ),
              ),
            ),
            Positioned(
              bottom: 200,
              left: 100,
              child: Text(
                'Welcome User!',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            Positioned(
              bottom: 50,
              left: 40,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.width * 0.15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.amber,
                ),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => MainScreen()));
                  },
                  child: Text(
                    'Get Started',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
