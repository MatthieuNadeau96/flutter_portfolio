import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class Timeline extends StatelessWidget {
  final String title;
  final String description;
  Timeline({this.title, this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TimelineTile(
            isFirst: true,
            isLast: true,
            indicatorStyle: IndicatorStyle(width: 12),
            alignment: TimelineAlign.left,
            rightChild: Container(
              margin: EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  SizedBox(height: 5),
                ],
              ),
            ),
          ),
          TimelineTile(
            indicatorStyle: IndicatorStyle(
              width: 12,
              color: Colors.transparent,
            ),
            bottomLineStyle: LineStyle(width: 1),
            topLineStyle: LineStyle(width: 1),
            alignment: TimelineAlign.left,
            rightChild: Container(
              margin: EdgeInsets.only(left: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    flex: 1,
                    fit: FlexFit.loose,
                    child: Text(
                      description,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
