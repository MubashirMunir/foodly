import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../app/app.router.dart';
import '../../ui_helper/tost_message.dart';

class VerifyScreenViewModel extends BaseViewModel {
  TextEditingController firstController = TextEditingController();
  TextEditingController secondController = TextEditingController();
  TextEditingController thirdController = TextEditingController();
  TextEditingController fourthController = TextEditingController();
  TextEditingController fifthController = TextEditingController();
  TextEditingController sixController = TextEditingController();
  final textController = TextEditingController();
  final _navigationService = NavigationService();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final formKey = GlobalKey<FormState>();
  bool loading = false;

  void navigateTohome(){
    _navigationService.replaceWithHome();
  }

  void verify(verifiationId) {
    loading=true;
    rebuildUi();
    final credential = PhoneAuthProvider.credential(
        verificationId: verifiationId,
        smsCode: textController.text.toString());
    try {
      print(textController);
      navigateTohome();
      _auth.signInWithCredential(credential);

    } catch (e) {
      rebuildUi();
      loading = false;
      utils().toast(Error().toString());
    }
  }
}
