import 'package:flutter_portfolio/model/project_model.dart';

final String image = 'assets/images';

List<ProjectModel> getProjects() {
  List<ProjectModel> projects = [
    ProjectModel(
      title: 'Chat App',
      description:
          'A Chat application based on a dribbble post. Not functional.',
      phonePic: '$image/mockup1.png',
      screenshots: [
        '$image/mockup1.png',
        '$image/mockup1.png',
        '$image/mockup1.png'
      ],
      development:
          'Developed less than a week with the help of a youtube video.',
      tools: ['Flutter', 'Dart'],
    ),
    ProjectModel(
      title: 'Productive Timer',
      description:
          'Countdown timer that uses the Pomodoro Technique. After every 20 minute work session ' +
              'the user will be prompted for a 5 minute break. After 4 completed work sessions will be a big break, ' +
              'usually 20 minutes.',
      phonePic: '$image/mockup2.png',
      screenshots: [
        '$image/mockup2.png',
        '$image/mockup2.png',
        '$image/mockup2.png'
      ],
      development:
          'This project utilizes Datetime countdown functionality and state managment.',
      tools: [
        'Flutter',
        'Dart',
        'Something else',
        'Third Party thing',
        'Otherthing',
      ],
    ),
    ProjectModel(
      title: 'Personal Expenses',
      description:
          'This application is designed to help the user keep track of their weekly expenses. ' +
              'The user can simply add an expense by filling out the form, indicating the name of the item, which day ' +
              'it was purchases and how much the item cost.',
      phonePic: '$image/mockup3.png',
      screenshots: [
        '$image/mockup3.png',
        '$image/mockup3.png',
        '$image/mockup3.png'
      ],
      development: 'This project used state managment.',
      tools: [
        'Flutter',
        'Dart',
        'Something else',
        'Third Party thing',
        'Otherthing',
      ],
    ),
    ProjectModel(
      title: 'Meals App',
      description: 'A simple meal recipe application.',
      phonePic: '$image/mockup4.png',
      screenshots: [
        '$image/mockup4.png',
        '$image/mockup4.png',
        '$image/mockup4.png'
      ],
      development:
          'Developed to learn the ins and out of Flutters grid and sorting.',
      tools: ['Flutter', 'Dart'],
    ),
    ProjectModel(
      title: 'Snake Game',
      description:
          'Classic snake game. User controls the snake as it grows from collecting the food on screen. ' +
              'But be careful not to eat yourself!',
      phonePic: '$image/mockup5.png',
      screenshots: [
        '$image/mockup5.png',
        '$image/mockup5.png',
        '$image/mockup5.png'
      ],
      development:
          'Developed less than a week with the help of a youtube video.',
      tools: [
        'Flutter',
        'Dart',
        'Snake',
        'Yes',
      ],
    ),
    ProjectModel(
      title: 'Xylophone',
      description: 'A very simply musical instrument app.',
      phonePic: '$image/mockup6.png',
      screenshots: [
        '$image/mockup6.png',
        '$image/mockup6.png',
        '$image/mockup6.png'
      ],
      development:
          'Developed in a day. Taught me how to add sound assets in Flutter.',
      tools: [
        'Flutter',
        'Dart',
        'Music',
        'Cmon',
      ],
    ),
  ];
  return projects;
}
