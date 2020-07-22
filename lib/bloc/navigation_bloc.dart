import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portfolio/screens/about_screen.dart';
import 'package:flutter_portfolio/screens/contact_screen.dart';
import 'package:flutter_portfolio/screens/home_screen.dart';
import 'package:flutter_portfolio/screens/work_screen.dart';

enum NavigationEvents {
  HomeScreenClickEvent,
  WorkScreenClickEvent,
  AboutScreenClickEvent,
  ContactScreenClickEvent,
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  NavigationBloc(NavigationStates initialState) : super(initialState);

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.HomeScreenClickEvent:
        yield HomeScreen();
        break;
      case NavigationEvents.WorkScreenClickEvent:
        yield WorkScreen();
        break;
      case NavigationEvents.AboutScreenClickEvent:
        yield AboutScreen();
        break;
      case NavigationEvents.ContactScreenClickEvent:
        yield ContactScreen();
        break;
    }
  }
}
