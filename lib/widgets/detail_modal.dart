import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailModal {
  final String title;
  final String description;
  final String phonePic;
  final String development;
  final List<String> tools;
  final List<String> screenshots;
  DetailModal({
    this.title,
    this.description,
    this.phonePic,
    this.development,
    this.tools,
    this.screenshots,
  });

  mainBottomSheet(BuildContext context) {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.headline3,
                ),
                SizedBox(height: 30),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: FaIcon(FontAwesomeIcons.github),
                      color: Colors.grey[700],
                      tooltip: 'View Code',
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: FaIcon(FontAwesomeIcons.googlePlay),
                      color: Colors.grey[700],
                      tooltip: 'Live',
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Divider(
                  color: Theme.of(context).textTheme.bodyText1.color,
                  endIndent: MediaQuery.of(context).size.width * 0.43,
                  indent: MediaQuery.of(context).size.width * 0.43,
                  thickness: 1,
                ),
                SizedBox(height: 30),
                Text(
                  description,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                SizedBox(height: 30),
                Container(
                  height: MediaQuery.of(context).size.height * 0.50,
                  width: double.infinity,
                  child: Image(
                    image: AssetImage(phonePic),
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
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Theme.of(context).textTheme.bodyText1.color,
                            width: 1,
                          ),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                        child: Text(
                          tools[index],
                          style: Theme.of(context).textTheme.bodyText1,
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
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(10)),
                            child: Container(
                              child: Image(
                                image: AssetImage(i),
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
