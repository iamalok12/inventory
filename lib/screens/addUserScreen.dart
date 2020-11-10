import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';

class AddUserScreen extends StatefulWidget {
  AddUserScreen({Key key}) : super(key: key);

  @override
  _AddUserScreenState createState() => _AddUserScreenState();
}

class _AddUserScreenState extends State<AddUserScreen> {
   Color color = Color(0xff351c56);
   DateTime _currentDate = DateTime.now();
   String selected;
   final List<String> items = ['Prexo', 'OpenBox', 'Imported', 'Others'];

   TextEditingController _dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
       appBar: AppBar(
        title: Text('Add User'),
        centerTitle: true,
        backgroundColor: color,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Stack(children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              color: color,
              child: Container(
                height: 30,
                width: 75,
                margin: EdgeInsets.only(
                    top: 30, bottom: height * 0.9, left: 75, right: 75),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.amber),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'Please enter every field',
                    style: TextStyle(color: Color(0xff351c56), fontSize: 18),
                  ),
                ),
              ),
            ),
            Positioned.fill(
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 150),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                  ),
                ),
                child: Column(
                  children: [
                    // Container(
                    //   height: MediaQuery.of(context).size.height * 0.15,
                    //   margin: EdgeInsets.all(30),
                    //   decoration: BoxDecoration(
                    //     boxShadow: [
                    //       BoxShadow(
                    //           color: Colors.grey,
                    //           offset: Offset(0, 0),
                    //           blurRadius: 5.0,
                    //           spreadRadius: 1)
                    //     ],
                    //     color: Colors.white,
                    //     borderRadius: BorderRadius.circular(20),
                    //   ),
                      // child: Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      //   children: [
                      //     Container(
                      //       decoration: BoxDecoration(
                      //           border: Border.all(color: Colors.amber),
                      //           shape: BoxShape.circle),
                      //       child: Padding(
                      //         padding: const EdgeInsets.all(12.0),
                      //         child: Icon(
                      //           Icons.phone_iphone,
                      //           color: color,
                      //           size: 60,
                      //         ),
                      //       ),
                      //     ),
                      //     Padding(
                      //       padding: const EdgeInsets.all(8.0),
                      //       child: VerticalDivider(
                      //         thickness: 2,
                      //         color: color,
                      //       ),
                      //     ),
                      //     Column(
                      //       mainAxisAlignment: MainAxisAlignment.center,
                      //       children: [
                      //         Text(
                      //           'NO:-3567',
                      //           style: TextStyle(color: color, fontSize: 20),
                      //         ),
                      //         SizedBox(
                      //           height: 15,
                      //         ),
                      //         Text(
                      //           'Progress: 45/50',
                      //           style: TextStyle(color: color, fontSize: 20),
                      //         ),
                      //       ],
                      //     )
                      //   ],
                      // ),
                    // ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10,30,10,0),
                      child: Container(
                        padding: EdgeInsets.all(20),
                        width: width * 0.9,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 5.0,
                              spreadRadius: 1.0,
                              offset: Offset(0, 0),
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Inputs(
                              width: width,
                              color: color,
                              text: 'Supplier Name',
                              icon: Icons.font_download,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: width * 0.8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(color: Colors.amber, width: 2),
                              ),
                              child: TextField(
                                keyboardType: TextInputType.datetime,
                                controller: _dateController,
                                decoration: InputDecoration(
                                  hintText: 'ID Proof',
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child:Icon(Icons.perm_identity, color: color,),                                    
                                  ),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Inputs(
                                    width: width,
                                    color: color,
                                    text: 'UserID',
                                    icon: Icons.account_circle,
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: Inputs(
                                    width: width,
                                    color: color,
                                    text: 'Password',
                                    icon: Icons.lock,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: width * 0.8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(color: Colors.amber, width: 2),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: DropdownButton(
                                  value: selected,
                                  onChanged: (value) {
                                    setState(() {
                                      selected = value;
                                    });
                                  },
                                  items: items.map((e) {
                                    return DropdownMenuItem(
                                      value: e,
                                      child: Text(e),
                                    );
                                  }).toList(),
                                  hint: FittedBox(
                                    child: Text('Select Product Type'),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
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
                        ),
                      ),
                    ),
                  ],
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

class Inputs extends StatefulWidget {
  Inputs(
      {Key key,
      @required this.width,
      @required this.color,
      @required this.text,
      @required this.icon})
      : super(key: key);

  final double width;
  final Color color;
  final String text;
  final IconData icon;

  @override
  _InputsState createState() => _InputsState();
}
class _InputsState extends State<Inputs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.amber, width: 2),
      ),
      child: TextField(
        keyboardType: TextInputType.datetime,
        decoration: InputDecoration(
          hintText: widget.text,
          prefixIcon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: Icon(widget.icon),
              onPressed: () async {},
              color: widget.color,
            ),
          ),
          border: OutlineInputBorder(borderSide: BorderSide.none),
        ),
      ),
    );
  }
}