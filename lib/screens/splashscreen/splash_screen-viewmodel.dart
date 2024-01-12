import 'dart:async';
import 'package:dummy/app/app.router.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

int? initScreen;
class StartupScreenViewModel extends BaseViewModel {
  final _navigationService=NavigationService();
  Future<String> initScreen() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    final initScreen = sp.getInt("initScreen");
    await sp.setInt("initScreen", 1);
    return initScreen == null ? Routes.onboardingView:Routes.loginView;
  }
  void isLogin() async {
    final auth = FirebaseAuth.instance;
    final user = auth.currentUser;
        if (user != null) {
          Timer(const Duration(seconds: 2),
              () => _navigationService.replaceWith(Routes.bottomNavigationView));
        }
        else {
          String route =await initScreen();
          print(route);
          Timer(const Duration(seconds: 2),
              () async => _navigationService.replaceWith(route));
        }
  }
}