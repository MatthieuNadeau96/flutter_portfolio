import 'package:flutter/material.dart';

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
      decoration: BoxDecoration(
          // color: Colors.grey[200],
          ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey,
            maxRadius: 20,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _navItems.length,
              itemBuilder: (context, index) {
                return Container(
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      _navItems[index].icon,
                      color: Colors.grey,
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
