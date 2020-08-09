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

              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "I carry 3 years of experience developing, testing, and publishing software applications. In 2020, I started learning how to use Dart and Flutter to create mobile applications. Because of the current situation surrounding Covid19, I’ve been able to spend more time focusing on what I’m most passionate about. This portfolio represents the work I’ve put together in the past few months.\n " +
                          "\nI currently live in Rhode Island but I'm eager to travel. In my free time I like to make music, playing strategy games, and pet Tasha. Tasha is my dog. She's one of the smart kind that can work a phone and has made her own ",
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    TextSpan(
                        text: "Instagram.",
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => _handlePress(
                              'https://www.instagram.com/tashathetoad/')),
                  ],
                ),
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
