import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portfolio/bloc/navigation_bloc.dart';

import 'package:flutter_portfolio/model/navigation_model.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  List<NavigationModel> _navItems = List<NavigationModel>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navItems = getNavigationItems();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.16,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: CircleAvatar(
              backgroundColor: Theme.of(context).iconTheme.color,
              maxRadius: 25,
              backgroundImage: AssetImage('assets/images/profile_pic.jpg'),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _navItems.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Container(
                    child: IconButton(
                      onPressed: () {
                        switch (_navItems[index].title) {
                          case ('Home'):
                            BlocProvider.of<NavigationBloc>(context)
                                .add(NavigationEvents.HomeScreenClickEvent);
                            break;
                          case ('Projects'):
                            BlocProvider.of<NavigationBloc>(context)
                                .add(NavigationEvents.WorkScreenClickEvent);
                            break;
                          case ('About'):
                            BlocProvider.of<NavigationBloc>(context)
                                .add(NavigationEvents.AboutScreenClickEvent);
                            break;
                          case ('Contact'):
                            BlocProvider.of<NavigationBloc>(context)
                                .add(NavigationEvents.ContactScreenClickEvent);
                            break;
                        }
                      },
                      icon: Icon(
                        _navItems[index].icon,
                        color: Theme.of(context).iconTheme.color,
                      ),
                      tooltip: _navItems[index].title,
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
