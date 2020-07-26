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
            SizedBox(height: 15),
            Container(
              width: 280,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.github,
                        color: theme.iconTheme.color,
                      ),
                      onPressed: () =>
                          _handlePress('https://github.com/MatthieuNadeau96/'),
                    ),
                  ),
                  Container(
                    child: IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.instagram,
                        color: theme.iconTheme.color,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    child: IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.twitter,
                        color: theme.iconTheme.color,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    child: IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.solidEnvelope,
                        color: theme.iconTheme.color,
                      ),
                      onPressed: () =>
                          _handlePress('mailto:matthieunadeau96@gmail.com'),
                    ),
                  ),
                  Container(
                    child: IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.linkedin,
                        color: theme.iconTheme.color,
                      ),
                      onPressed: () => _handlePress(
                          'https://www.linkedin.com/in/matthieu-nadeau-28321013a'),
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
