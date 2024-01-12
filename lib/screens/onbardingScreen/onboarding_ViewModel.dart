import 'package:dummy/app/app.router.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
class OnboardingViewModel extends BaseViewModel {
  final _navigatoionService = NavigationService();
  final controller = PageController();
  var currentIndex = 0;

  int isView =0;

  onboardInfo() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    await sp.setInt(Routes.onboardingView, isView);
  }
  void getStarted(screens, index) {
    if (index == screens.length - 1) {
                 // onboardInfo();
      _navigatoionService.replaceWithBottomNavigationView();
    }
    controller.nextPage(
        duration: const Duration(milliseconds: 300), curve: Curves.linear);
  }
}
