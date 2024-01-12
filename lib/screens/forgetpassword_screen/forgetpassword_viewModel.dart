import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../app/app.router.dart';
import '../../app/data/items_data.dart';
import '../../ui_helper/tost_message.dart';

class ForgetPasswordModel extends BaseViewModel {
  final emailController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final _navigationService = NavigationService();

  get auth => _auth;
  bool loading = false;
  get formKey => _formKey;
  final _formKey = GlobalKey<FormState>();


  void sendResetEmail() {
    loading=true;
    rebuildUi();
    auth.sendPasswordResetEmail(email: emailController.text).then((value) {
      _navigationService.navigateTo(Routes.verifyScreenView,);
      utils().toast('reset code sent');
      loading = false;
      rebuildUi();
    }).onError({
    loading = false,
    rebuildUi(),
      utils().toast("an error accured"),
    });
  }

  // Future<void> uploadDataToFirebase() async{
  //   for(int i=0;i<itemsData.length;i++){
  //     await FirebaseFirestore.instance.collection('food_item').add(itemsData[i].toJson());
  //   }
  // }
  }

