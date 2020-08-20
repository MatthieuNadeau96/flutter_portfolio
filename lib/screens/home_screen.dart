import 'package:flutter/material.dart';
import 'package:flutter_portfolio/bloc/navigation_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 30),
        constraints: BoxConstraints(maxWidth: 550),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Matthieu Nadeau',
              style: Theme.of(context).textTheme.headline3,
            ),
            SizedBox(height: 15),
            // Text(
            //   'Mobile Developer',
            //   style: Theme.of(context).textTheme.headline4,
            // ),
            Text(
              'A mobile developer with a passion for learning.',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            SizedBox(height: 15),
            Container(
              width: 300,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.github,
                        color: Color(0xff313030),
                      ),
                      onPressed: () =>
                          _handlePress('https://github.com/MatthieuNadeau96/'),
                    ),
                  ),
                  Container(
                    child: IconButton(
                      icon: Icon(
                        Icons.mail,
                        size: 26,
                        color: Color(0xffD7574C),
                      ),
                      onPressed: () =>
                          _handlePress('mailto:matthieunadeau96@gmail.com'),
                    ),
                  ),
                  Container(
                    child: IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.linkedin,
                        color: Color(0xff1277B5),
                      ),
                      onPressed: () => _handlePress(
                          'https://www.linkedin.com/in/matthieu-nadeau-28321013a'),
                    ),
                  ),
                  Container(
                    child: IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.instagram,
                        color: Color(0xff963AA1),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    child: IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.twitter,
                        color: Color(0xff1DA1F2),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
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
