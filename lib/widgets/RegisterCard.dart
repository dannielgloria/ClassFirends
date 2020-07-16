
import 'package:class_firends/styles/fontStyle.dart';
import 'package:dropdownfield/dropdownfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class RegisterCard extends StatelessWidget {
  
  String division_id;
  List<String> division = [
    "CBI",
    "CSH",
    "CBS"
  ];

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
            Text("¡REGISTRARSE ES MAS FACIL Y RAPIDO!", 
              textAlign: TextAlign.center,
              style: dTitleStyle,
            ),
            SizedBox(height: ScreenUtil.getInstance().setHeight(25)),
            Text("Nombre",
              style: dSimpleStyle,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "nombre",
                hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0))
            ),
            SizedBox(height: ScreenUtil.getInstance().setHeight(20)),
            Text("Correo",
              style: dSimpleStyle,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "correo@ejemplo.com",
                hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0))
            ),
            SizedBox(height: ScreenUtil.getInstance().setHeight(20)),
            Text("Matricula",
                style: dSimpleStyle,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "Matricula",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                WhitelistingTextInputFormatter.digitsOnly],
            ),
            SizedBox(height: ScreenUtil.getInstance().setHeight(20)),
            Text("Division",
                style: dSimpleStyle,
            ),
            SizedBox(height: ScreenUtil.getInstance().setHeight(10)),
            DropDownField(
              onValueChanged: (dynamic value){
                division_id = value;
              },
              value: division_id,
              hintText: "Division",
              required: false,
              items: division,
            ),
            SizedBox(height: ScreenUtil.getInstance().setHeight(35)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Acepto los términos y condiciones",
                  style: dLinkStyle,
                )
              ],
            ),
            SizedBox(height: ScreenUtil.getInstance().setHeight(30)),
          ],
        )
      ),
    );
  }
}