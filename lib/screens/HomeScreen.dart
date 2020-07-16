
import 'package:class_firends/model/dataSearch.dart';
import 'package:class_firends/styles/colorStyle.dart';
import 'package:class_firends/styles/fontStyle.dart';
import 'package:class_firends/widgets/CollapsingNavigationDrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'PostsScreen.dart';

class HomeScreen extends StatelessWidget {
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
                Text("Mis Grupos", textAlign: TextAlign.center,style: dTitleStyle,),
                SizedBox(height: ScreenUtil.getInstance().setHeight(15)),
                _cardNumber1(context),
                _cardNumber2(context),
                _cardNumber3(),
                _cardNumber4(),
                _cardNumber5(),
              ],
            ),
          ),
          CollapsingNavigationDrawer(),
          
        ],
      ),
      
    );
  }
}

Widget _cardNumber1(context) {
  return GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context)=> PostsScreen()),
    );
  },
  child: new Card(
    child: Column(
      
      children: <Widget>[
        
        ListTile(
          leading: Icon(Icons.forum, color: drawerBackgroundColor),
          title: Text("Temas selectos de ingenieria de software", style: dSimpleStyle,),
          

        )
      ],
    ),
  ),
  );
}

Widget _cardNumber2(context) {
  return GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context)=> PostsScreen()),
    );
  },
  child: new Card(
    child: Column(
      
      children: <Widget>[
        
        ListTile(
          leading: Icon(Icons.forum, color: drawerBackgroundColor),
          title: Text("Arte y Ciencia", style: dSimpleStyle,),
          

        )
      ],
    ),
  ),
  );
}

Widget _cardNumber3() {
  return Card(
    child: Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.forum, color: drawerBackgroundColor),
          title: Text("Frances 3", style: dSimpleStyle,),

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
          leading: Icon(Icons.forum, color: drawerBackgroundColor),
          title: Text("Lecturas del diablo 9", style: dSimpleStyle,),

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
          leading: Icon(Icons.forum, color: drawerBackgroundColor),
          subtitle: Text("Compiladores", style: dSimpleStyle,),

        )
      ],
    ),
  );
}

