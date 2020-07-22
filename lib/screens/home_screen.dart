import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello My Name is Matthieu Nadeau.',
              style: Theme.of(context).textTheme.headline3,
            ),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. \n' +
                  'Etiam efficitur purus non augue facilisis, sed congue justo congue.',
              style: Theme.of(context).textTheme.bodyText1,
            )
          ],
        ),
      ),
    );
  }
}
