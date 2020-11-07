import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner;
import 'package:inventory_app/models/customwidgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StockDetail extends StatefulWidget {
  @override
  _StockDetailState createState() => _StockDetailState();
}

class _StockDetailState extends State<StockDetail> {
  Color color = Color(0xff351c56);
  final TextEditingController _brandName=TextEditingController();
  final TextEditingController _modelName=TextEditingController();
  final TextEditingController _modelRam=TextEditingController();
  final TextEditingController _modelRom=TextEditingController();
  final TextEditingController _modelWSN=TextEditingController();
  final TextEditingController _modelCost=TextEditingController();
  final TextEditingController _modelCondition=TextEditingController();
  final TextEditingController _modelIMEI=TextEditingController();
  final TextEditingController _scanVal=TextEditingController();
  String _brandNameTXT,_modelNameTXT,_modelRamTXT,_modelRomTXT,_modelConditionTXT,_scanValTXT="Scan";//do not use this string instead use _producttype
  Future qrScan()async{
    String barcode=await scanner.scan();
    setState(() {
      _scanValTXT=barcode;
      _scanVal.text=_scanValTXT;
    });

  }//

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Stock Entry'),
        centerTitle: true,
        backgroundColor: color,
        elevation: 0,
      ),
      body:SingleChildScrollView(
        child:Stack(
          children: [
            Container(
              alignment: Alignment.topCenter,
              color: Color(0xff351c56),
              height: height,
              width: double.infinity,
              child: Container(
                margin: EdgeInsets.only(top: 35),
                height: 40,
                width: width*.6,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Center(child: Text("Please fill",style: TextStyle(fontSize: 20),)),
              ),
            ),//decoration part blue color background
            Container(
              padding: EdgeInsets.only(top: 10),
              margin: EdgeInsets.only(top: 100),
              decoration: BoxDecoration(
                  color: Colors.white,
                borderRadius: BorderRadius.only(topLeft:Radius.circular(50))
              ),
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.15,
                    margin: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0, 0),
                            blurRadius: 5.0,
                            spreadRadius: 1)
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.amber),
                              shape: BoxShape.circle),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Icon(
                              Icons.phone_iphone,
                              color: color,
                              size: 60,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: VerticalDivider(
                            thickness: 2,
                            color: color,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Lot Number',
                              style: TextStyle(color: color, fontSize: 20),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              '938467',
                              style: TextStyle(color: color, fontSize: 20),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 5,),
                  Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(10),boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],),
                      width: width*.9,
                      child:Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width:MediaQuery.of(context).size.width/2.5,
                                child: DropdownButton(
                                  underline: SizedBox(),
                                  hint: _brandNameTXT==null
                                      ? Text('Choose Brand')
                                      : Text(
                                    _brandName.text,
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  isExpanded: true,
                                  iconSize: 30.0,
                                  style: TextStyle(color: Colors.black),
                                  items: ['Nokia', 'Samsung', 'I Phone','Others'].map(
                                        (val) {
                                      return DropdownMenuItem<String>(
                                        value: val,
                                        child: Text(val),
                                      );
                                    },
                                  ).toList(),
                                  onChanged: (val) {
                                    setState(
                                          () {
                                        _brandNameTXT=val;
                                        _brandName.text = _brandNameTXT;
                                      },
                                    );
                                  },
                                ),),
                              Container(
                                width:MediaQuery.of(context).size.width/2.5,
                                child: DropdownButton(
                                  underline: SizedBox(),
                                  hint: _modelNameTXT==null
                                      ? Text('Choose Model')
                                      : Text(
                                    _modelName.text,
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  isExpanded: true,
                                  iconSize: 30.0,
                                  style: TextStyle(color: Colors.black),
                                  items: ['Model 1', 'Model 2', 'Model 3','Model 4'].map(
                                        (val) {
                                      return DropdownMenuItem<String>(
                                        value: val,
                                        child: Text(val),
                                      );
                                    },
                                  ).toList(),
                                  onChanged: (val) {
                                    setState(
                                          () {
                                        _modelNameTXT=val;
                                        _modelName.text = _modelNameTXT;
                                      },
                                    );
                                  },
                                ),),
                            ],
                          ),//model and brand
                          SizedBox(height: 5,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width:MediaQuery.of(context).size.width/2.5,
                                child: DropdownButton(
                                  underline: SizedBox(),
                                  hint: _modelRomTXT==null
                                      ? Text('ROM')
                                      : Text(
                                    _modelRom.text,
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  isExpanded: true,
                                  iconSize: 30.0,
                                  style: TextStyle(color: Colors.black),
                                  items: ['16GB', '64GB', '128GB','512GB'].map(
                                        (val) {
                                      return DropdownMenuItem<String>(
                                        value: val,
                                        child: Text(val),
                                      );
                                    },
                                  ).toList(),
                                  onChanged: (val) {
                                    setState(
                                          () {
                                        _modelRomTXT=val;
                                        _modelRom.text = _modelRomTXT;
                                      },
                                    );
                                  },
                                ),),
                              Container(
                                width:MediaQuery.of(context).size.width/2.5,
                                child: DropdownButton(
                                  underline: SizedBox(),
                                  hint: _modelRamTXT==null
                                      ? Text('RAM')
                                      : Text(
                                    _modelRam.text,
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  isExpanded: true,
                                  iconSize: 30.0,
                                  style: TextStyle(color: Colors.black),
                                  items: ['4GB', '6GB', '8GB','12GB'].map(
                                        (val) {
                                      return DropdownMenuItem<String>(
                                        value: val,
                                        child: Text(val),
                                      );
                                    },
                                  ).toList(),
                                  onChanged: (val) {
                                    setState(
                                          () {
                                        _modelRamTXT=val;
                                        _modelRam.text = _modelRamTXT;
                                      },
                                    );
                                  },
                                ),),
                            ],
                          ),//ram rom
                          SizedBox(height: 5,),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                border: Border.all(color: Colors.amber)
                            ),
                            padding: EdgeInsets.all(8),
                            margin: EdgeInsets.all(10),
                            child:Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(_scanValTXT),
                                IconButton(icon: Icon(FontAwesomeIcons.qrcode),onPressed: (){qrScan();}),
                              ],
                            ),
                          ),//wsn
                          SizedBox(height: 5,),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                border: Border.all(color: Colors.amber)
                            ),
                            padding: EdgeInsets.all(8),
                            margin: EdgeInsets.all(10),
                            child:DropdownButton(
                              underline: SizedBox(),
                              hint: _modelConditionTXT==null
                                  ? Text('Model Condition')
                                  : Text(
                                _modelCondition.text,
                                style: TextStyle(color: Colors.black),
                              ),
                              isExpanded: true,
                              iconSize: 30.0,
                              style: TextStyle(color: Colors.black),
                              items: ['OK', 'Damaged'].map(
                                    (val) {
                                  return DropdownMenuItem<String>(
                                    value: val,
                                    child: Text(val),
                                  );
                                },
                              ).toList(),
                              onChanged: (val) {
                                setState(
                                      () {
                                    _modelConditionTXT=val;
                                    _modelCondition.text = _modelConditionTXT;
                                  },
                                );
                              },
                            ),
                          ),
                          SizedBox(height: 5,),
                          CustomInput(hintText: "IMEI",data:FontAwesomeIcons.mobile,controller: _modelIMEI,onpress: null,isObsecure: false,),
                          SizedBox(height: 5,),
                          CustomInput(hintText: "Cost",data: FontAwesomeIcons.rupeeSign,controller: _modelCost,onpress: null,isObsecure: false,),
                        ],
                      )
                  ),
                  SizedBox(height: 10,),
                  Container(
                    margin: EdgeInsets.all(10),
                    width: width * 0.8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: color,
                    ),
                    child: FlatButton(
                      onPressed: () {},
                      child: Text(
                        'Submit',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),//Body
            ),
          ],
        )
      ),
    );
  }
}
