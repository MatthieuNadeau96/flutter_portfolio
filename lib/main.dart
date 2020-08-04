import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portfolio/bloc/navigation_bloc.dart';
import 'package:flutter_portfolio/screens/about_screen.dart';
import 'package:flutter_portfolio/screens/home_screen.dart';
import 'package:flutter_portfolio/widgets/navbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.blue,
          primaryColorDark: Colors.black,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          canvasColor: Colors.white,
          accentColor: Color(0xffEEC271),
          textTheme: TextTheme(
            headline3: TextStyle(
                fontSize: 34, color: Colors.black, fontWeight: FontWeight.bold),
            headline4: TextStyle(
              fontSize: 24,
              color: Colors.black.withOpacity(0.8),
            ),
            headline5: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black.withOpacity(0.8),
            ),
            bodyText1: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.black.withOpacity(0.7), //#868786
            ),
          ),
          iconTheme: IconThemeData(
            color: Colors.black.withOpacity(0.8),
          )),
      home: MainHomeScreen(),
    );
  }
}

class MainHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 0.0),
          child: BlocProvider<NavigationBloc>(
            create: (context) => NavigationBloc(HomeScreen()),
            child: Row(
              children: [
                NavBar(),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: BlocBuilder<NavigationBloc, NavigationStates>(
                      builder: (context, navigationState) {
                        return navigationState as Widget;
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
