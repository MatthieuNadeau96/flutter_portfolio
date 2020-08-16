import 'package:flutter_portfolio/model/project_model.dart';

final String image = 'assets/images';

List<ProjectModel> getProjects() {
  List<ProjectModel> projects = [
    ProjectModel(
      title: 'Movie Theater',
      description:
          'This application demonstrates the use of APIs and BLoC state management. ' +
              'With the help of TMDb, this app displays movies that are currently playing in theater. ' +
              'The user is able to swipe between movies, see more details about them, ' +
              'and select available seats based on the time they choose.' +
              '',
      displayPic: '$image/movie_theater/home.png',
      phonePic: '$image/movie_theater/phone_pic.png',
      screenshots: [
        '$image/movie_theater/seat_time.png',
        '$image/movie_theater/details.png',
        '$image/movie_theater/seat_pay.png',
        '$image/movie_theater/cast.png',
      ],
      development:
          'This project help me grasp the concept of BLoC state management, as well as fetching APIs, with Dart & Flutter.',
      tools: ['Flutter', 'Dart', 'TMDb'],
      linkToLive: 'https://matthieunadeau-movie-theater.netlify.app/#/',
      linkToCode: 'https://github.com/MatthieuNadeau96/movie_theater',
    ),
    ProjectModel(
      title: 'Shop App',
      description:
          'An application that allows the user, once they have signed up, to view products in a shop.' +
              ' This shop app has basic e-commerce interaction like adding and removing products from a cart, ' +
              'favoriting products to help them sort, ordering products added in their carts, ' +
              'and users can add and edit their own products.',
      displayPic: '$image/shop_app/shop.png',
      phonePic: '$image/shop_app/phone_pic.png',
      screenshots: [
        '$image/shop_app/sidebar.png',
        '$image/shop_app/cart.png',
        '$image/shop_app/edit.png',
        '$image/shop_app/orders.png',
      ],
      development:
          'Developed less than a week with the help of a youtube video.',
      tools: ['Flutter', 'Dart', 'Firebase'],
      linkToLive: 'https://flutter-shop-app-9a5c9.web.app/#/',
      linkToCode: 'https://github.com/MatthieuNadeau96/Flutter_shop_app',
    ),
    ProjectModel(
      title: 'Chat app',
      description:
          'Chat application that allows the user to send and receive messages.',
      displayPic: '$image/flutter_messenger/logging_in.png',
      phonePic: '$image/flutter_messenger/phone_pic.png',
      screenshots: [
        '$image/flutter_messenger/logging_out.png',
        '$image/flutter_messenger/logging_in.png',
        '$image/flutter_messenger/chat_screen.png'
      ],
      development:
          'This project utilizes Firebase\'s authentication, to allow user\'s to log in and sign up, and cloud firestore to receive and send messages. ',
      tools: [
        'Flutter',
        'Dart',
        'Firebase',
      ],
      linkToLive: 'https://flutter-messenger-48b0e.web.app/#/',
      linkToCode: 'https://github.com/MatthieuNadeau96/flutter_messenger',
    ),
    // ProjectModel(
    //   title: 'Personal Expenses',
    //   description:
    //       'This application is designed to help the user keep track of their weekly expenses. ' +
    //           'The user can simply add an expense by filling out the form, indicating the name of the item, which day ' +
    //           'it was purchases and how much the item cost.',
    //   displayPic: '$image/mockup6.png',
    //   phonePic: '$image/mockup6.png',
    //   screenshots: [
    //     '$image/mockup6.png',
    //     '$image/mockup6.png',
    //     '$image/mockup6.png'
    //   ],
    //   development: 'This project used state managment.',
    //   tools: [
    //     'Flutter',
    //     'Dart',
    //     'Something else',
    //     'Third Party thing',
    //     'Otherthing',
    //   ],
    //   linkToCode:
    //       'https://github.com/MatthieuNadeau96/Flutter_personal_expenses',
    //   linkToLive: 'https://flutter-personal-expense-eb6a2.web.app/#/',
    // ),
    // ProjectModel(
    //   title: 'Productive Timer',
    //   description:
    //       'Countdown timer that uses the Pomodoro Technique. After every 20 minute work session ' +
    //           'the user will be prompted for a 5 minute break. After 4 completed work sessions will be a big break, ' +
    //           'usually 20 minutes.',
    //   displayPic: '$image/mockup6.png',
    //   phonePic: '$image/mockup6.png',
    //   screenshots: [
    //     '$image/mockup6.png',
    //     '$image/mockup6.png',
    //     '$image/mockup6.png'
    //   ],
    //   development:
    //       'This project utilizes Datetime countdown functionality and state managment.',
    //   tools: [
    //     'Flutter',
    //     'Dart',
    //     'Something else',
    //     'Third Party thing',
    //     'Otherthing',
    //   ],
    //   linkToCode: 'https://github.com/MatthieuNadeau96/productive-timer',
    //   linkToLive: 'https://productive-timer-c7c5c.web.app/#/',
    // ),
  ];
  return projects;
}
