import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final dTitleStyle = TextStyle(
  fontSize: ScreenUtil.getInstance().setSp(45),
  fontFamily: "Oxygen-Bold",
  letterSpacing: 0.5
);

final dSimpleStyle = TextStyle(
  fontSize: ScreenUtil.getInstance().setSp(30),
  fontFamily: "Oxygen"
);

final dSimpleOutCardStyle = TextStyle(
  fontSize: ScreenUtil.getInstance().setSp(30),
  color: Colors.white,
  fontFamily: "Oxygen-Bold",
);

final dLinkStyle = TextStyle(
  color: Colors.blue,
  fontFamily: "Oxigen",
  fontSize: ScreenUtil.getInstance().setSp(28)
);

final dLinkOutCardStyle = TextStyle(
  color: Colors.blue,
  fontFamily: "Oxygen-Bold",
  fontSize: ScreenUtil.getInstance().setSp(28)
);

final dListTitleDefaultTextStyle = TextStyle(
  color: Colors.white70,
  // fontSize: 20.0, 
  fontFamily: "Oxigen",
  // fontWeight: FontWeight.w600
);

final dListTitleSelectedTextStyle = TextStyle(
  color: Colors.white, 
  // fontSize: 20.0, 
  fontFamily: "Oxigen",
  // fontWeight: FontWeight.w600
);

final dButtonStyle = TextStyle(
  color: Colors.white,
  fontFamily: "Oxygen-Bold",
  fontSize: 18,
  letterSpacing: 1.0
);