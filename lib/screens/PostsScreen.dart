import 'package:class_firends/model/dataSearch.dart';
import 'package:class_firends/screens/HomeScreen.dart';
import 'package:class_firends/styles/colorStyle.dart';
import 'package:class_firends/styles/fontStyle.dart';
import 'package:class_firends/widgets/CollapsingNavigationDrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PostsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Busca un grupo",style: dListTitleSelectedTextStyle),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: (){
            showSearch(context: context, delegate: DataSearch());
          })
        ],
        elevation: 0.0,
        backgroundColor: drawerBackgroundColor,
      ),

      drawer: Drawer(),
      body: Stack(
        children: <Widget>[
          Container(
            child: ListView(
              
              padding: EdgeInsets.only(left: 75, right: 5, top: 5, bottom: 5),
              children: <Widget>[
                Text("Temas selectos de ingenieria de software", textAlign: TextAlign.center,style: dTitleStyle,),
                SizedBox(height: ScreenUtil.getInstance().setHeight(15)),
                _cardInput(),
                _cardNumber1(),
                _cardNumber2(),
                _cardNumber3(),
                _cardNumber4(),
                _cardNumber5(),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      InkWell(
                        onTap: () => _showDialog(context),
                        child: Text("SALIR",
                            style: dLinkOutCardStyle
                            ),
                      )
                    ],
                  ),
              ],
            ),
          ),
          CollapsingNavigationDrawer(),
          
        ],
      ),
      
    );
  }
}

Widget _cardInput() {
  return Card(
    child: Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.person, color: drawerBackgroundColor),
          title: Text("Yo", style: dSimpleStyle,),
          subtitle: TextField(
              decoration: InputDecoration(
                  hintText: "Comentario",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                WhitelistingTextInputFormatter.digitsOnly],
            ),

        )
      ],
    ),
  );
}

Widget _cardNumber1() {
  return Card(
    child: Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.person, color: drawerBackgroundColor),
          title: Text("Alex Pad", style: dSimpleStyle,),
          subtitle: Text("The most preferred way is to add ListTile as Card child. Not only does ListTile contain the method onTap it also helps you in making Card interesting.", style: dSimpleStyle,),

        )
      ],
    ),
  );
}

Widget _cardNumber2() {
  return Card(
    child: Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.person, color: drawerBackgroundColor),
          title: Text("Uriel Cortés", style: dSimpleStyle,),
          subtitle: Text("@AlexPad, answer is on point. And given the rapid transition of onTap(), a highlight color might be a better alternative.", style: dSimpleStyle,),


        )
      ],
    ),
  );
}

Widget _cardNumber3() {
  return Card(
    child: Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.person, color: drawerBackgroundColor),
          title: Text("Yo", style: dSimpleStyle,),
          subtitle: Text("Flutter use composition over properties. Wrap the desired widget into a clickable one to achieve what you need.", style: dSimpleStyle,),

        )
      ],
    ),
  );
}

Widget _cardNumber4() {
  return Card(
    child: Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.person, color: drawerBackgroundColor),
          title: Text("Uriel Cortés", style: dSimpleStyle,),
          subtitle: Text("You can use Inkwell and insert splashColor which, at the click of the user, creates the rebound effect with the chosen color, on the card .. This is mainly used in material design.", style: dSimpleStyle,),

        )
      ],
    ),
  );
}

Widget _cardNumber5() {
  return Card(
    child: Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.person, color: drawerBackgroundColor),
          title: Text("Jossef Harush", style: dSimpleStyle,),
          subtitle: Text("that depends on what you want to achieve. If you want the Card to fill with the INK, then the InkWell should be inside the Card. Instead, if the InkWell wraps the Card, then an area (by default, a rectangle) outside of the card (but not inside the Card) will fill with the INK You can even have an Inkwell each inside and outside the Card ", style: dSimpleStyle,),


        )
      ],
    ),
  );
}

void _showDialog(context) {
    // flutter defined function
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(20.0)), //this right here
            child: Container(
              height: 150,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: '¿Estas seguro que deseas salir? ')
                    ),
                    SizedBox(
                      width: 320.0,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context)=> HomeScreen()),
                          );
                        },
                        child: Text(
                          "Sí",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: drawerBackgroundColor,
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }

