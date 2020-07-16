import 'package:class_firends/screens/RecoverScreen.dart';
import 'package:class_firends/styles/fontStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginCard extends StatelessWidget {
  
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: ScreenUtil.getInstance().setHeight(15)),
            Text("¡A ESTUDIAR!", 
              textAlign: TextAlign.center,
              style: dTitleStyle,
            ),
            SizedBox(height: ScreenUtil.getInstance().setHeight(45)),
            TextField(
              decoration: InputDecoration(
                  hintText: "Matricula",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                WhitelistingTextInputFormatter.digitsOnly],
            ),
            SizedBox(height: ScreenUtil.getInstance().setHeight(45)),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> RecoverScreen()),
                    );
                  },
                  child: Text("¿Olvidaste tu matricula?",
                      style: dLinkStyle
                      ),
                ),
              ],
            ),
            SizedBox(height: ScreenUtil.getInstance().setHeight(45)),
          ],
        )
      ),
    );
  }
}