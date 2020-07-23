import 'package:flutter/material.dart';
import 'package:flutter_portfolio/bloc/navigation_bloc.dart';
import 'package:flutter_portfolio/widgets/timeline.dart';

class AboutScreen extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About Me',
              style: Theme.of(context).textTheme.headline3,
            ),
            SizedBox(height: 30),
            Text(
              'Mobile Developer',
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(height: 15),
            Timeline(
              title: 'January 2020',
              description:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit.' +
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.' +
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.' +
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
            ),
            Timeline(
              title: 'March 2020',
              description:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit.' +
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
            ),
            Timeline(
              title: 'July 2020',
              description:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit.' +
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.' +
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
            ),
            // Achievements
            SizedBox(height: 15),
            Text(
              'Achievements',
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(height: 15),
            Timeline(
              title: 'January 2020',
              description:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit.' +
                      'Lorem ipsum dolor sit amet.',
            ),
            Timeline(
              title: 'September 2017',
              description:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
            ),
            // Certificates
            SizedBox(height: 15),
            Text(
              'Certificates',
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(height: 15),
            Timeline(
              title: 'January 2020',
              description:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit.' +
                      'Lorem ipsum dolor sit amet.',
            ),
            Timeline(
              title: 'June 2020',
              description:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
            ),
            Timeline(
              title: 'September 2019',
              description:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
            ),
            Timeline(
              title: 'September 2017',
              description:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
            ),

            // Education
            SizedBox(height: 15),
            Text(
              'Education',
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(height: 15),
            Timeline(
              title: 'January 2020',
              description:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit.' +
                      'Lorem ipsum dolor sit amet.',
            ),
            Timeline(
              title: 'September 2017',
              description:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
            ),
          ],
        ),
      ),
    );
  }
}
