
import 'package:class_firends/styles/fontStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class RecoverCard extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(bottom: 1),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0.0, 15.0),
            blurRadius: 15.0
          ),
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0.0, -10.0),
            blurRadius: 10.0
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0 ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: ScreenUtil.getInstance().setHeight(20)),
            Text("¿Has olvidado tu matricula?", 
              textAlign: TextAlign.center,
              style: dTitleStyle,
            ),
            SizedBox(height: ScreenUtil.getInstance().setHeight(60)),
            Text("Por favor ingresa tu correo electrónico, oprime aceptar y te enviaremos tu matricula", 
              textAlign: TextAlign.center,
              style: dSimpleStyle,
            ),
            SizedBox(height: ScreenUtil.getInstance().setHeight(25)),
            Text("Correo",
              style: dSimpleStyle,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "correo@ejemplo.com",
                hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0))
            ),
            SizedBox(height: ScreenUtil.getInstance().setHeight(45)),
          ],
        )
      ),
    );
  }
}