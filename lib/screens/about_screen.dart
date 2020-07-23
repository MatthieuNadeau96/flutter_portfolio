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
          SizedBox(height: 30),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi sollicitudin sem a orci semper hendrerit. \n' +
                'Aliquam semper ligula id arcu vestibulum, et ornare lorem hendrerit. Suspendisse pretium ligula eget libero aliquet, nec tincidunt libero iaculis. \n' +
                'Integer non diam consequat, finibus justo a, semper risus. Phasellus urna ligula, maximus et pretium sed, vulputate ut turpis.',
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ],
      ),
    );
  }
}
