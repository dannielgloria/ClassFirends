import 'package:flutter/material.dart';

class NavigationStyle {
  String title;
  IconData icon;

  NavigationStyle({this.title, this.icon});
}

List<NavigationStyle> navigationItems = [
  NavigationStyle(title: "Inicio", icon: Icons.home),
  NavigationStyle(title: "Grupos", icon: Icons.forum),
  NavigationStyle(title: "Add Grupo", icon: Icons.add),
];