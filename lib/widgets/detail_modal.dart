import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailModal {
  final String title;
  DetailModal({this.title});

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
                  'Project $title',
                  style: Theme.of(context).textTheme.headline3,
                ),
                SizedBox(height: 30),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Tooltip(
                      message: 'View Code',
                      child: IconButton(
                        onPressed: () {},
                        icon: FaIcon(FontAwesomeIcons.github),
                        color: Colors.grey[700],
                      ),
                    ),
                    Tooltip(
                      message: 'Live',
                      child: IconButton(
                        onPressed: () {},
                        icon: FaIcon(FontAwesomeIcons.googlePlay),
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi sollicitudin sem a orci semper hendrerit. \n' +
                      'Aliquam semper ligula id arcu vestibulum, et ornare lorem hendrerit. Suspendisse pretium ligula eget libero aliquet, nec tincidunt libero iaculis. \n' +
                      'Integer non diam consequat, finibus justo a, semper risus. Phasellus urna ligula, maximus et pretium sed, vulputate ut turpis.',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                SizedBox(height: 30),
                Container(
                  color: Colors.grey[300],
                  height: MediaQuery.of(context).size.height * 0.50,
                  width: double.infinity,
                  child: Center(child: Text('Image Goes Here')),
                ),
                SizedBox(height: 30),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi sollicitudin sem a orci semper hendrerit. \n' +
                      'Aliquam semper ligula id arcu vestibulum, et ornare lorem hendrerit. Suspendisse pretium ligula eget libero aliquet, nec tincidunt libero iaculis.',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                SizedBox(height: 30),
                CarouselSlider(
                  options: CarouselOptions(
                    height: MediaQuery.of(context).size.height * 0.50,
                    enlargeCenterPage: true,
                  ),
                  items: [1, 2, 3, 4, 5].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 10.0),
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text(
                                'Image $i',
                              ),
                            ));
                      },
                    );
                  }).toList(),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
