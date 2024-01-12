import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.controller, required this.type, required this.hintText, required this.text});
   final TextEditingController controller;
   final TextInputType type;
   final String hintText;
   final String text;
  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      key: key,
        keyboardType: type,
        controller: controller,
        decoration: InputDecoration(
              enabledBorder: const UnderlineInputBorder(
                borderSide:BorderSide(color: Colors.grey,width: .1) ,
              ),
          hintText: hintText,
          border: InputBorder.none
        ),
        validator: (String? value) {
          if (value!.isEmpty) {
            return text;
          } else {
            return null;
          }
        });
  }
}
