import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationModel {
  final String title;
  final IconData icon;
  bool isSelected;

  NavigationModel({
    this.title,
    this.icon,
    this.isSelected,
  });
}

List<NavigationModel> getNavigationItems() {
  List<NavigationModel> navigationItems = [
    NavigationModel(
      title: 'Home',
      icon: Icons.home,
      isSelected: true,
    ),
    NavigationModel(
      title: 'Projects',
      icon: Icons.work,
      isSelected: false,
    ),
    NavigationModel(
      title: 'About',
      icon: Icons.person,
      isSelected: false,
    ),
  ];
  return navigationItems;
}
