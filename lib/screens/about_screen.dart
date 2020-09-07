import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/bloc/navigation_bloc.dart';
import 'package:flutter_portfolio/widgets/timeline.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutScreen extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(maxWidth: 550),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              Text(
                'About Me',
                style: Theme.of(context).textTheme.headline3,
              ),
              SizedBox(height: 15),

              Text(
                "I carry 3 years of experience designing, developing, and testing mobile and web applications. Earlier this year, I started learning how to use Dart and Flutter to create mobile applications. This portfolio represents the work I’ve put together in the past few months.\n " +
                    "\nI currently live in Rhode Island and I'm eager to travel. In my free time I like to code, make music, and hangout with my dog Tasha. I'm quite used to coding and working alone so I'm very much looking forward to the opportunity of working with and being part of a team.",
                style: Theme.of(context).textTheme.bodyText2,
              ),

              // SizedBox(height: 30),
              // Text(
              //   'My Timeline',
              //   style: Theme.of(context).textTheme.headline3,
              // ),
              // SizedBox(height: 30),
              // Text(
              //   'Mobile Developer',
              //   style: Theme.of(context).textTheme.headline4,
              // ),
              // SizedBox(height: 15),
              // Timeline(
              //   title: 'January 2020',
              //   description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ' +
              //       'Lorem ipsum dolor sit amet, consectetur adipiscing elit.' +
              //       'Lorem ipsum dolor sit amet, consectetur adipiscing elit.' +
              //       'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
              // ),
              // Timeline(
              //   title: 'March 2020',
              //   description:
              //       'Lorem ipsum dolor sit amet, consectetur adipiscing elit.' +
              //           'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
              // ),
              // Timeline(
              //   title: 'July 2020',
              //   description:
              //       'Lorem ipsum dolor sit amet, consectetur adipiscing elit.' +
              //           'Lorem ipsum dolor sit amet, consectetur adipiscing elit.' +
              //           'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
              // ),
              // // Achievements
              // SizedBox(height: 15),
              // Text(
              //   'Achievements',
              //   style: Theme.of(context).textTheme.headline4,
              // ),
              // SizedBox(height: 15),
              // Timeline(
              //   title: 'January 2020',
              //   description:
              //       'Lorem ipsum dolor sit amet, consectetur adipiscing elit.' +
              //           'Lorem ipsum dolor sit amet.',
              // ),
              // Timeline(
              //   title: 'September 2017',
              //   description:
              //       'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
              // ),
              // // Certificates
              // SizedBox(height: 15),
              // Text(
              //   'Certificates',
              //   style: Theme.of(context).textTheme.headline4,
              // ),
              // SizedBox(height: 15),
              // Timeline(
              //   title: 'January 2020',
              //   description:
              //       'Lorem ipsum dolor sit amet, consectetur adipiscing elit.' +
              //           'Lorem ipsum dolor sit amet.',
              // ),
              // Timeline(
              //   title: 'June 2020',
              //   description:
              //       'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
              // ),
              // Timeline(
              //   title: 'September 2019',
              //   description:
              //       'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
              // ),
              // Timeline(
              //   title: 'September 2017',
              //   description:
              //       'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
              // ),

              // // Education
              // SizedBox(height: 15),
              // Text(
              //   'Education',
              //   style: Theme.of(context).textTheme.headline4,
              // ),
              // SizedBox(height: 15),
              // Timeline(
              //   title: 'January 2020',
              //   description:
              //       'Lorem ipsum dolor sit amet, consectetur adipiscing elit.' +
              //           'Lorem ipsum dolor sit amet.',
              // ),
              // Timeline(
              //   title: 'September 2017',
              //   description:
              //       'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
              // ),

              // SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  void _handlePress(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
