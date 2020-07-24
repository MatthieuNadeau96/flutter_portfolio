import 'package:flutter/material.dart';
import 'package:flutter_portfolio/bloc/navigation_bloc.dart';
import 'package:flutter_portfolio/model/project_model.dart';
import 'package:flutter_portfolio/repository/repository.dart';
import 'package:flutter_portfolio/widgets/detail_modal.dart';

class WorkScreen extends StatefulWidget with NavigationStates {
  @override
  _WorkScreenState createState() => _WorkScreenState();
}

class _WorkScreenState extends State<WorkScreen> {
  List<ProjectModel> projects = List<ProjectModel>();
  @override
  void initState() {
    super.initState();
    projects = getProjects();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
                childAspectRatio: 3 / 4,
              ),
              itemBuilder: (context, index) {
                final ProjectModel project = projects[index];
                return InkWell(
                  onTap: () {
                    DetailModal(
                      title: project.title,
                      description: project.description,
                      phonePic: project.phonePic,
                      development: project.development,
                      tools: project.tools,
                      screenshots: project.screenshots,
                    ).mainBottomSheet(context);
                  },
                  child: Container(
                    child: Center(
                        child: Image(
                      image: AssetImage(project.phonePic),
                      fit: BoxFit.contain,
                    )),
                  ),
                );
              },
              itemCount: projects.length,
            ),
          ),
        ],
      ),
    );
  }
}
