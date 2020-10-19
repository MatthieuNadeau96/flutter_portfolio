import 'package:flutter_portfolio/model/project_model.dart';

final String image = 'assets/images';

List<ProjectModel> getProjects() {
  List<ProjectModel> projects = [
    ProjectModel(
      title: 'Flow Time',
      description:
          'Flow Time is an alternate productivity system to the Pomodoro technique. Using 90 minute intervals, as opposed to 25, this timer allows you to reach your flow state and be more productive. It also includes an optional coffee timer, to keep track of how long you\'ve been drinking your coffee, to help prevent staining and damaging your teeth. ',
      displayPic: '$image/flow_time/flow_screen.png',
      phonePic: '$image/flow_time/phone_pic.png',
      screenshots: [
        '$image/flow_time/all_playing_dark.png',
        '$image/flow_time/settings.png',
        '$image/flow_time/not_playing_dark.png',
        '$image/flow_time/action_buttons.png',
        '$image/flow_time/flow_playing_no_coffee.png',
      ],
      development:
          'Being my first real-world Flutter application. I wanted to create something that would be useful for me, something that could help me stay focused and create more applications in the future.',
      tools: [
        'Flutter',
        'Dart',
        'Shared Preferences',
        'Audio Player',
        'Notifications',
      ],
      linkToLive:
          'https://play.google.com/store/apps/details?id=com.matthieunadeau.flow_time',
      linkToCode: 'https://github.com/MatthieuNadeau96/flow_time',
    ),
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
          'This project help me grasp the concept of BLoC state management, as well as fetching APIs with Dart & Flutter. The biggest challenge I faced with this project, was not only understanding how to use BLoC, but also teaching myself the importance of setting up the data models and repositories beforehand. A fun takeaway for me with this project was learning how to use Rive to make the icon animation I added when the user purchases a ticket.',
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
          'With this shop application I learned how to use Providers to manage state, how to use forms, how to send Http requests, and how to authenticate users.',
      tools: ['Flutter', 'Dart', 'Firebase'],
      linkToLive: 'https://flutter-shop-app-9a5c9.web.app/#/',
      linkToCode: 'https://github.com/MatthieuNadeau96/Flutter_shop_app',
    ),
    ProjectModel(
      title: 'Chat app',
      description:
          'A pretty straightforward chat application that allows the user to send and receive messages after authenticating.',
      displayPic: '$image/flutter_messenger/logging_in.png',
      phonePic: '$image/flutter_messenger/phone_pic.png',
      screenshots: [
        '$image/flutter_messenger/logging_out.png',
        '$image/flutter_messenger/logging_in.png',
        '$image/flutter_messenger/chat_screen.png'
      ],
      development:
          'This project utilizes Firebase\'s authentication to allow user\'s to log in and sign up, and cloud firestore to receive and send messages. ',
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
