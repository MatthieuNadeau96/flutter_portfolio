import 'package:flutter/material.dart';
import 'package:flutter_portfolio/bloc/navigation_bloc.dart';

class ContactScreen extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text('Contact'),
      ),
    );
    ;
  }
}
