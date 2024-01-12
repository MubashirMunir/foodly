import 'package:dummy/app/app.router.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../ui_helper/tost_message.dart';

class WithPhoneViewModel extends BaseViewModel {
  final phoneController = TextEditingController();
  final _navigationService = NavigationService();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  var num;



  void navigatetoVerify(phoneNumber,verifiationId){
    _navigationService.replaceWithVerifyScreenView(Phonenumber: phoneNumber,verifiationId:verifiationId );
  }

  bool loading = false;
  void verifyPhone(){
    loading=true;
    rebuildUi();
    print(phoneController.text);
    print(phoneController.value);
    print(phoneController);

    _auth.verifyPhoneNumber(
        phoneNumber: num,
        verificationCompleted: (_) {
          print('object');
          _navigationService.replaceWith(Routes.verifyScreenView);
          loading=false;
          rebuildUi();},
        verificationFailed:(e){
          utils().toast(e.toString());
          loading=false;
          rebuildUi();
        },
        codeSent: (String verificationId, int? token) {
          _navigationService.replaceWithVerifyScreenView(Phonenumber:num,verifiationId: verificationId);
          // Navigator.push(MaterialPageRoute(
          //     builder: (context) =>
          //         VerifyScreen(verifiationId: verificationId)));
          loading = false;
        },
        codeAutoRetrievalTimeout: (e) {
          loading = false;
          utils().toast(e.toString());
        });
    const Duration(seconds: 10);

   }
}
