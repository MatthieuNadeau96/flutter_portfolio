import 'package:flutter/material.dart';
import 'package:flutter_portfolio/bloc/navigation_bloc.dart';

class HomeScreen extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints(maxWidth: 550),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Matthieu Nadeau',
              style: Theme.of(context).textTheme.headline3,
            ),
            SizedBox(height: 15),
            Text(
              'Mobile Developer',
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(height: 15),
            Text(
              'I am a self taught developer with a passion for creating things big and small.',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
      ),
    );
  }
}
