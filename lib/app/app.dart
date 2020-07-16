import 'package:class_firends/screens/SplashScreen.dart';
import 'package:flutter/material.dart';

class AppClassFriends extends StatelessWidget {
 //
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: SplashScreen(),
    );
  }
}