import 'package:flutter/material.dart';
import 'package:inventory_app/models/mainCurveWhite.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff351c56),
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Inventory App',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: Container(
        color: Color(0xff351c56),
        child: Stack(
          children: [
            Positioned(
              top: 50,
              left: 65,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.amber),
                child: Text(
                  'What would you like to do',
                  style: TextStyle(color: Color(0xff351c56), fontSize: 20),
                ),
              ),
            ),
            ClipPath(
              clipper: mainCurveWhite(),
              child: Container(color: Colors.white),
            ),
            Positioned(
              bottom: 300,
              left: 30,
              child: Row(
                children: [
                  Grid('Stock Entry', 'assets/stockEntry.jpg',null),
                  SizedBox(
                    width: 20,
                  ),
                  Grid('Admin Panel', 'assets/adminPanel.png',null)
                ],
              ),
            ),
            Positioned(
              bottom: 100,
              left: 30,
              child: Row(
                children: [
                  Grid('Add User', 'assets/addUser.png',null),
                  SizedBox(
                    width: 20,
                  ),
                  Grid('Stock Details', 'assets/stockData.jpg',null)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Grid extends StatelessWidget {
  final String title;
  final String img;
  Function onpress;

  Grid(this.title, this.img,this.onpress);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        focusColor: Colors.white.withOpacity(0.5),
        onTap: () {
          if (title == 'Stock Entry') {
            Navigator.of(context).pushNamed('StockDetails');
          }
        },
        child: Container(
          height: MediaQuery.of(context).size.height * 0.2,
          width: MediaQuery.of(context).size.height * 0.2,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Stack(
            fit: StackFit.expand,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  img,
                  fit: BoxFit.cover,
                ),
              ),
              Center(
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  color: Colors.black45,
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
