import 'dart:io';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  String amount = '100';
  // ignore: non_constant_identifier_names
  String ItemName = 'Item Variety Name';

  var status5 = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text('Item',
              style: TextStyle(color: Colors.black, fontSize: 30)),
          elevation: 0.0,
          automaticallyImplyLeading: true,
          leading: IconButton(
            icon: Icon(
              Icons.keyboard_arrow_left,
              color: Colors.black,
              size: 40,
            ),
            onPressed: () => exit(0),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
              child: Center(
                child: const SizedBox(
                  width: 354.0,
                  height: 188.0,
                  child: const DecoratedBox(
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16.0),
                        topRight: Radius.circular(16.0),
                        bottomLeft: Radius.circular(16.0),
                        bottomRight: Radius.circular(16.0),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            new Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: new Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text('$ItemName',
                          style: TextStyle(color: Colors.black, fontSize: 24)),
                    ),
                  ),
                  Expanded(
                    child: new Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        'Rs$amount/Kg',
                        style: TextStyle(color: Colors.black, fontSize: 30),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            new Container(
              child: const SizedBox(
                width: 229.0,
                height: 31.0,
                child: const SizedBox(
                  child: Center(
                    child: Text(
                      'Availability',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Center(
                child: new LinearPercentIndicator(
                  width: 350,
                  animation: true,
                  lineHeight: 20.0,
                  animationDuration: 2000,
                  percent: 0.4,
                  center: Text("40.0%"),
                  linearStrokeCap: LinearStrokeCap.roundAll,
                  progressColor: Color(0xFFE53D3D),
                ),
              ),
            ),
            new Container(
              child: const SizedBox(
                width: 229.0,
                height: 40.0,
                child: const SizedBox(
                  child: Center(
                    child: Text(
                      '1kg of 30kg in stock',
                      style: TextStyle(color: Color(0XFFE53D3D), fontSize: 22),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(),
            new Container(
              child: const SizedBox(
                width: 229.0,
                height: 31.0,
                child: const SizedBox(
                  child: Center(
                    child: Text(
                      'Status',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ),
                ),
              ),
            ),
            new Container(
              child: FlutterSwitch(
                width: 70.0,
                height: 40.0,
                valueFontSize: 0.0,
                toggleSize: 30.0,
                value: status5,
                borderRadius: 30.0,
                padding: 8.0,
                showOnOff: true,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            // ignore: deprecated_member_use
            new ButtonTheme.bar(
              child: new ButtonBar(
                alignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: 163,
                    height: 47,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.red)),
                      color: Colors.white,
                      textColor: Color.fromARGB(255, 254, 78, 116),
                      padding: EdgeInsets.all(8.0),
                      onPressed: () {},
                      child: Text(
                        "Remove",
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 163,
                    height: 47,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.red)),
                      onPressed: () {},
                      color: Color.fromARGB(255, 254, 78, 116),
                      textColor: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                            Text("Edit Items", style: TextStyle(fontSize: 14)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
