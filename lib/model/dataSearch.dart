import 'package:class_firends/styles/fontStyle.dart';
import 'package:flutter/material.dart';

class DataSearch extends SearchDelegate<String>{
  final groups = [
    "Temas selectos de ingenieria de software",
    "Frances 2",
    "Frances 1",
    "Frances 3",
    "Amarres 1",
    "Lecturas del diablo 9",
    "Compiladores",
    "Arte y ciencia",
    "Bases de datos",
    "Algoritmos distribuidos",
    "Computación y su entorno empresarial"
  ];

  final recentGroups = [
    "Temas selectos de ingenieria de software",
    "Compiladores",
    "Arte y ciencia"
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
      return[IconButton(icon: Icon(Icons.clear), onPressed: (){
        query = " ";
      })];
    }
  
    @override
    Widget buildLeading(BuildContext context) {
      return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow, 
          progress: transitionAnimation
        ), 
        onPressed: (){
          close(context, null);
        });
    }
  
    @override
    Widget buildResults(BuildContext context) {
      return Card(
        color: Colors.red,
      );
      
    }
  
    @override
    Widget buildSuggestions(BuildContext context) {
      final suggestionList = query.isEmpty
        ? recentGroups
        : groups.where((p) => p.startsWith(query)).toList();

      return ListView.builder(
        itemBuilder: (context,index)=> ListTile(
          onTap: (){
            showResults(context);
          },
          leading: Icon(Icons.group),
          title: RichText(text: TextSpan(
            text:suggestionList[index].substring(0,query.length),
            style: dTitleStyle,
            children: [
              TextSpan(
                text: suggestionList[index].substring(0,query.length),
                style: dSimpleStyle
              )]
          )),
        ),
      itemCount: suggestionList.length,
      );
  }
  
}