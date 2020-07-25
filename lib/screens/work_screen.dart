import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/bloc/navigation_bloc.dart';
import 'package:flutter_portfolio/model/project_model.dart';
import 'package:flutter_portfolio/repository/repository.dart';
import 'package:flutter_portfolio/widgets/detail_modal.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WorkScreen extends StatefulWidget with NavigationStates {
  @override
  _WorkScreenState createState() => _WorkScreenState();
}

class _WorkScreenState extends State<WorkScreen> {
  List<ProjectModel> projects = List<ProjectModel>();

  String titleDetails;
  String descriptionDetails;
  String phonePicDetails;
  String developmentDetails;
  List<String> toolsDetails;
  List<String> screenshotsDetails;
  bool detailOpened = false;
  @override
  void initState() {
    super.initState();
    projects = getProjects();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final mobile = size.width < 770;
    final desktop = size.width >= 770;

    return Scaffold(
      body: Container(
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                constraints: BoxConstraints(
                    maxWidth: desktop ? size.width * 0.56 : double.infinity),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: mobile ? 2 : 3,
                          mainAxisSpacing: 15,
                          crossAxisSpacing: 15,
                          childAspectRatio: 3 / 4,
                        ),
                        itemBuilder: (context, index) {
                          final ProjectModel project = projects[index];
                          return Container(
                            height: 100,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  detailOpened = true;
                                  titleDetails = project.title;
                                  descriptionDetails = project.description;
                                  phonePicDetails = project.phonePic;
                                  developmentDetails = project.development;
                                  toolsDetails = project.tools;
                                  screenshotsDetails = project.screenshots;
                                });
                                mobile
                                    ? DetailModal(
                                        title: project.title,
                                        description: project.description,
                                        phonePic: project.phonePic,
                                        development: project.development,
                                        tools: project.tools,
                                        screenshots: project.screenshots,
                                      ).mainBottomSheet(context)
                                    : Container();
                              },
                              child: Container(
                                child: Center(
                                    child: Image(
                                  image: AssetImage(project.phonePic),
                                  fit: BoxFit.contain,
                                )),
                              ),
                            ),
                          );
                        },
                        itemCount: projects.length,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            if (desktop)
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).canvasColor,
                    boxShadow: detailOpened
                        ? [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 0,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ]
                        : null,
                  ),
                  // color: Colors.green,
                  child: (titleDetails != null)
                      ? Details(
                          title: titleDetails,
                          description: descriptionDetails,
                          phonePic: phonePicDetails,
                          development: developmentDetails,
                          tools: toolsDetails,
                          screenshots: screenshotsDetails,
                        )
                      : (Container()),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
