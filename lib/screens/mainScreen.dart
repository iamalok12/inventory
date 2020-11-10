import 'package:flutter/material.dart';
import 'package:inventory_app/models/mainCurveWhite.dart';
import 'package:inventory_app/screens/addUserScreen.dart';
import 'package:inventory_app/screens/stockDetail.dart';
import 'package:inventory_app/screens/stockEntry.dart';
import 'package:inventory_app/screens/adminPanel.dart';


class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
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
              top: height * 0.05,
              left: width * 0.15,
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
              bottom: height * 0.4,
              left: width * 0.1,
              child: Row(
                children: [
                  Grid('Stock Entry', 'assets/stockEntry.jpg',StockEntry()),
                  SizedBox(
                    width: 20,
                  ),
                  Grid('Admin Panel', 'assets/adminPanel.png',AdminPanel()),
                ],
              ),
            ),
            Positioned(
              bottom: height * 0.15,
              left: width * 0.1,
              child: Row(
                children: [
                  Grid('Add User', 'assets/addUser.png',AddUserScreen()),
                  SizedBox(
                    width: 20,
                  ),
                  Grid('Stock Details', 'assets/stockData.jpg',StockDetail())
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
  Widget routes;

  Grid(this.title, this.img,this.routes);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      focusColor: Colors.white.withOpacity(0.5),
      onTap: () {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => routes));
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
    );
  }
}
