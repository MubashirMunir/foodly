import 'package:dummy/app/app.locator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../app/app.router.dart';
import '../../ui_helper/tost_message.dart';

class LoginViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _formKey = GlobalKey<FormState>();
  get formKey => _formKey;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  bool isObSecure = false;
  bool loading = false;
  void loadingTrue() {
    rebuildUi();
    loading = true;
  }
  bool get isObsecure=> isObSecure;

  void loadingFalse() {
    rebuildUi();
    loading = false;
  }

  void login() {
    if (formKey.currentState!.validate()) {
      loading = true;
      try {
        _auth
            .signInWithEmailAndPassword(
                email: emailController.text.toString(),
                password: passwordController.text.toString())
            .then((value) {
          _navigationService.replaceWith(Routes.home);
          utils().toast(value.user!.email.toString());
          loading = false;
        }).onError((error, stackTrace) {
          utils().toast(error.toString());
          loading = false;
        });
      } catch (e) {
        e.toString();
      }
    }
  }

  String? emailValidation(String? value) {
    if (value!.isEmpty) {
      return "enter email address";
    } else {}
    return null;
  }

  String? passwordValidation(String? text) {
    if (text!.isEmpty) {
      return "Enter Password";
    } else {
      return null;
    }

  }

  navigateToSignUp() {
    _navigationService.navigateTo(Routes.signUp);
  }

  loginWithPhone() {
    _navigationService.navigateTo(Routes.loginWithPhone);
  }

  signup() {
    _navigationService.navigateTo(Routes.signUp);
  }

  void navigateToForgetPassword() {

    _navigationService.navigateTo(Routes.forgetPassword);
  }
  void obSecure(){
    print("object");
    isObSecure = !isObSecure;
    rebuildUi();

  }
}
