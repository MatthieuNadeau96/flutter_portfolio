import 'package:flutter/material.dart';

class ProjectModel {
  final String title;
  final String description;
  final String development;
  final List<String> tools;
  final String displayPic;
  final String phonePic;
  final List<String> screenshots;
  final String linkToLive;
  final String linkToCode;

  ProjectModel({
    @required this.title,
    @required this.description,
    this.development,
    this.tools,
    @required this.displayPic,
    @required this.phonePic,
    @required this.screenshots,
    this.linkToLive,
    this.linkToCode,
  });
}
