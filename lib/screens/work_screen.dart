import 'package:flutter/material.dart';
import 'package:flutter_portfolio/bloc/navigation_bloc.dart';
import 'package:flutter_portfolio/widgets/detail_modal.dart';

class WorkScreen extends StatelessWidget with NavigationStates {
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
                return InkWell(
                  onTap: () {
                    DetailModal(title: index.toString())
                        .mainBottomSheet(context);
                  },
                  child: Container(
                    child: Center(
                        child: Image(
                      image: AssetImage('assets/images/mockup${index + 1}.png'),
                      fit: BoxFit.contain,
                    )),
                  ),
                );
              },
              itemCount: 6,
            ),
          ),
        ],
      ),
    );
  }
}
