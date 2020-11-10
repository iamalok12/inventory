import 'package:flutter/material.dart';
import 'package:inventory_app/models/mainCurveWhite.dart';
import 'package:inventory_app/screens/addUserScreen.dart';
import '../screens/mainScreen.dart';

class AdminPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff351c56),
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Admin Panel',
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
              left: 160,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.amber),
                child: Text(
                  'Choose',
                  style: TextStyle(color: Color(0xff351c56), fontSize: 20),
                ),
              ),
            ),
            ClipPath(
              clipper: mainCurveWhite(),
              child: Container(color: Colors.white),
            ),
            SingleChildScrollView(
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 145),
                padding: EdgeInsets.all(8),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Grid("Add User",'assets/adduser.jpg',AddUserScreen()),
                        Grid("Delete User",'assets/deleteuser.png',null),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Grid("Add Suplier",'assets/addsuplier.jpg',null),
                        Grid("Add Model","assets/addmodel.jpg",null)
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Grid("Status",'assets/status.png',null),
                        Grid("Logout",'assets/logout.png',null)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


