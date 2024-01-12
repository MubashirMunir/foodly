import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../ui_helper/tost_message.dart';


class SignUpViewModel extends BaseViewModel {
  final _navigationService = NavigationService();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final fatherNameController = TextEditingController();
  final contactController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  bool loading = false;
  final _formKey = GlobalKey<FormState>();
  get formKey => _formKey;

  navigateToLogin() {
    _navigationService.back();
  }

  void createAccount() {
    if (formKey.currentState!.validate()) {
      loading =true;
      rebuildUi();
    _auth.createUserWithEmailAndPassword(
        email: emailController.text.toString(),
        password: passwordController.text.toString())
        .then((value) {
          loading=false;
      utils().toast("Account Created");

      _navigationService.back();

    }).onError((error, stackTrace) {
      loading = false;
      rebuildUi();
      utils().toast(error.toString());
    });
  }

  emailValidation( String? value) {
    if (value!.isEmpty) {
      return "Enter Email";
    } else {}
  }

  String? fatherNameValidation(value) {
    if (value!.isEmpty) {
      return "Enter Father Name";
    } else {
      return null;
    }
  }

  String? phoneValidation(value) {
    if (value!.isEmpty) {
      return "Enter Phone";
    } else {
      return null;
    }
  }

  String? passwordValidation(value) {
    if (value!.isEmpty) {
      return "Enter Password ";
    } else {
      return null;
    }
  }}}