import 'dart:async';
import 'package:flutter/material.dart';

import 'LoginScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => LoginScreen(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
       color: Colors.white,
       child: Column(
         children: <Widget>[
           Expanded(
             flex: 2,
             child: Container(
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   Padding(padding: EdgeInsets.only(top: 80.0)),
                   Image(image: AssetImage("assets/img/logoSplash.png"),width: 200.0),
                   
                 ],
               ),
             ),
           ),
           Expanded(
             flex: 1,
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 Padding(padding: EdgeInsets.only(top: 30.0)),
                 Text("from",
                 textAlign: TextAlign.center,
                 style: TextStyle(fontStyle: FontStyle.italic, fontSize: 15.0, color: Colors.black54),),
                 Text("TaquitoSoftware",
                 textAlign: TextAlign.center,
                 style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17.0, color: Colors.black87),)
               ],
             ),
           )
         ]
       ),
    );
  }
}