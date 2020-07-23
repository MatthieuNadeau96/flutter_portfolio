import 'package:flutter/material.dart';
import 'package:flutter_portfolio/bloc/navigation_bloc.dart';

class AboutScreen extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About Me',
            style: Theme.of(context).textTheme.headline3,
          ),
          SizedBox(height: 15),
          Text(
            'Mobile Developer',
            style: Theme.of(context).textTheme.headline4,
          ),
          SizedBox(height: 15),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi sollicitudin sem a orci semper hendrerit.',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          SizedBox(height: 30),
          Text(
            'Mobile Developer',
            style: Theme.of(context).textTheme.headline4,
          ),
          SizedBox(height: 15),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi sollicitudin sem a orci semper hendrerit. \n' +
                'Aliquam semper ligula id arcu vestibulum, et ornare lorem hendrerit. Suspendisse pretium ligula eget libero aliquet, nec tincidunt libero iaculis.',
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ],
      ),
    );
  }
}
