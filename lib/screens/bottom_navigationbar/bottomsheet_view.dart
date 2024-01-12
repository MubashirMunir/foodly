import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stacked/stacked.dart';

import 'bottom_navbar_viewModel.dart';


class BottomNavigationView extends StackedView<BottomNavigationViewModel> {
  const BottomNavigationView({super.key});

  @override
  Widget builder(
      BuildContext context, BottomNavigationViewModel viewModel, Widget? child) {
    return Scaffold(
      body: viewModel.screens(viewModel.currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: viewModel.currentIndex,
        onTap: viewModel.setIndex,
          selectedFontSize: 8,
          selectedIconTheme: const IconThemeData(
            color: Colors.green,
          ),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "Search",
              icon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              label: "order",
              icon: Icon(Icons.local_offer),
            ),
            BottomNavigationBarItem(
              label: "profile",
              icon: Icon(Icons.person),
            ),
          ],
         ),
    );
  }

  @override
  BottomNavigationViewModel viewModelBuilder(BuildContext context) =>
      BottomNavigationViewModel();


}

