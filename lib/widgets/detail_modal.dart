import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailModal {
  final String title;
  final String description;
  final String phonePic;
  final String development;
  final List<String> tools;
  final List<String> screenshots;
  final String linkToCode;
  final String linkToLive;
  DetailModal({
    this.title,
    this.description,
    this.phonePic,
    this.development,
    this.tools,
    this.screenshots,
    this.linkToCode,
    this.linkToLive,
  });
  mainBottomSheet(BuildContext context) {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      context: context,
      builder: (BuildContext context) {
        return Details(
          title: title,
          description: description,
          phonePic: phonePic,
          development: development,
          tools: tools,
          screenshots: screenshots,
          linkToLive: linkToLive,
          linkToCode: linkToCode,
        );
      },
    );
  }
}

class Details extends StatelessWidget {
  final String title;
  final String description;
  final String phonePic;
  final String development;
  final List<String> tools;
  final List<String> screenshots;
  final String linkToCode;
  final String linkToLive;
  Details({
    this.title,
    this.description,
    this.phonePic,
    this.development,
    this.tools,
    this.screenshots,
    this.linkToCode,
    this.linkToLive,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Text(
              title,
              style: Theme.of(context).textTheme.headline3,
            ),
            SizedBox(height: 30),
            Wrap(
              children: [
                FlatButton.icon(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Theme.of(context).iconTheme.color),
                  ),
                  onPressed: () => _handlePress(linkToCode),
                  label: Padding(
                    padding: const EdgeInsets.only(
                      top: 4,
                      right: 4,
                      bottom: 4,
                    ),
                    child: Text(
                      'Github',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  icon: Padding(
                    padding: const EdgeInsets.only(
                      top: 4,
                      left: 4,
                      bottom: 4,
                    ),
                    child: FaIcon(
                      FontAwesomeIcons.github,
                      size: 18,
                      color: Color(0xff313030),
                    ),
                  ),
                ),
                SizedBox(width: 30),
                FlatButton.icon(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Theme.of(context).iconTheme.color),
                  ),
                  onPressed: () => _handlePress(linkToLive),
                  icon: Padding(
                    padding: const EdgeInsets.only(
                      top: 4,
                      left: 4,
                      bottom: 4,
                    ),
                    child: FaIcon(
                      FontAwesomeIcons.googlePlay,
                      size: 16,
                      color: Color(0xff313030),
                    ),
                  ),
                  label: Padding(
                    padding: const EdgeInsets.only(
                      top: 4,
                      right: 4,
                      bottom: 4,
                    ),
                    child: Text(
                      'Live',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            // Divider(
            //   color: Theme.of(context).textTheme.bodyText1.color,
            //   endIndent: MediaQuery.of(context).size.width * 0.43,
            //   indent: MediaQuery.of(context).size.width * 0.43,
            //   thickness: 1,
            // ),
            SizedBox(height: 30),
            Text(
              description,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(height: 30),

            Container(
              // color: Colors.blue,
              width: double.infinity,
              child: Image(
                image: AssetImage(phonePic),
                // fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Development',
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(height: 30),
            Text(
              development,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(height: 30),
            Container(
              child: Wrap(
                alignment: WrapAlignment.center,
                children: List.generate(
                  tools.length,
                  (index) => Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18.0),
                      border: Border.all(
                        color: Theme.of(context)
                            .textTheme
                            .bodyText1
                            .color
                            .withOpacity(0.2),
                        width: 1,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        tools[index],
                        style: TextStyle(
                          fontSize: 14,
                          color: Theme.of(context)
                              .textTheme
                              .bodyText1
                              .color
                              .withOpacity(0.6),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              child: CarouselSlider(
                options: CarouselOptions(
                  viewportFraction: 0.65,
                  autoPlay: true,
                  pauseAutoPlayOnTouch: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  height: MediaQuery.of(context).size.height * 0.50,
                  enlargeCenterPage: true,
                ),
                items: screenshots.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        height: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: Container(
                          child: Image(
                            image: AssetImage(i),
                            fit: BoxFit.contain,
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: 15),
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
