import 'package:flutter/material.dart';
//this page contains all the modified widgets

class Cardx extends StatelessWidget {
  Cardx({@required this.icon,this.onpress,this.cwidth,this.cheight,this.txt});
  String txt;
  IconData icon;
  Function onpress;
  double cheight,cwidth;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(10),boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],),
        height: cheight,
        width: cwidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(icon,size: 60,color: Color(0xfffdc206),),
            Text(txt,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
          ],
        ),
      ),
    );
  }
}//square widget used in admin panel

class CustomInput extends StatelessWidget {

  CustomInput({this.hintText,this.data,this.isObsecure,this.controller,this.onpress});
  final TextEditingController controller;
  final IconData data;
  final String hintText;
  bool isObsecure = true;
  Function onpress=null;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Colors.amber)
      ),
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.all(10),
      child: TextFormField(
        onTap: onpress,
        controller: controller,
        obscureText: isObsecure,
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(data, color:Color(0xff351c56)),
          focusColor: Colors.black,
          hintText: hintText,
        ),
      ),
    );
  }
}//input text widget in stock entry screen
