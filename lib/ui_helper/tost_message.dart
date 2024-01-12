import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class utils {
  void toast(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.black,
        fontSize: 15.0);
  }

}
