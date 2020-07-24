import 'package:flutter/material.dart';
import 'package:flutter_portfolio/bloc/navigation_bloc.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactScreen extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Contact Me',
              style: Theme.of(context).textTheme.headline3,
            ),
            SizedBox(height: 15),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                      FontAwesomeIcons.linkedin,
                      color: theme.iconTheme.color,
                    ),
                    onPressed: () => _handlePress(
                        'https://www.linkedin.com/in/matthieu-nadeau-28321013a'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Container(
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                onPressed: () =>
                    _handlePress('mailto:matthieunadeau96@gmail.com'),
                child: Text(
                  'Email Me',
                  style: TextStyle(color: theme.canvasColor),
                ),
                color: theme.iconTheme.color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void _handlePress(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
