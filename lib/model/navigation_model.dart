import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationModel {
  final String title;
  final IconData icon;

  NavigationModel({
    this.title,
    this.icon,
  });
}

List<NavigationModel> getNavigationItems() {
  List<NavigationModel> navigationItems = [
    NavigationModel(title: 'Home', icon: Icons.home),
    NavigationModel(title: 'Projects', icon: Icons.view_compact),
    NavigationModel(title: 'About', icon: Icons.description),
    NavigationModel(title: 'Contact', icon: Icons.email),
  ];
  return navigationItems;
}
