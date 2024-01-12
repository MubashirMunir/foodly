import 'package:flutter/material.dart';
import 'package:material_text_fields/labeled_text_field.dart';
import 'package:material_text_fields/material_text_fields.dart';
import 'package:material_text_fields/theme/material_text_field_theme.dart';
class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.controller,
      required this.text,
      required this.icon,
      required this.click,
      required this.obsecure,
      required this.validator,
        required this.inputType,
  });
  final TextEditingController controller;
  final String text;
  final IconData icon;
  final VoidCallback click;
  final bool obsecure;
  final String? Function(String?)  validator;
  final TextInputType inputType;
  @override
  Widget build(BuildContext context) {
    return
      LabeledTextField(
        title: "",
        labelSpacing: 8,
        titleStyling: const TextStyle(
          fontSize: 10,
          color: Colors.black,
          fontWeight: FontWeight.w700,
        ),
        textField: MaterialTextField(
          keyboardType: TextInputType.emailAddress,
          hint: text,

          textInputAction: TextInputAction.done,
          obscureText: obsecure,
          theme: FilledOrOutlinedTextTheme(
            fillColor: Colors.grey.withAlpha(20),
            radius: 7,
          ),
          suffixIcon:IconButton(onPressed: click, icon:Icon(icon,size: 17,)
          ),
          controller: controller,
          validator: validator,
        ),
      );
    //   MaterialTextField(
    //   theme: InputDecorationTheme(
    //       border: ,
    //       enabledBorder: OutlineInputBorder()),
    //   obscureText:obsecure ,
    // keyboardType: inputType,
    // hint: text,
    // textInputAction: TextInputAction.next,
    //    validator: validator,
    // suffixIcon: Icon(icon),
    // controller: controller
    // // validator: FormValidation.emailTextField,
    // );





    // return TextFormField(
    //   style: const TextStyle(fontSize: 15),
    //     cursorWidth: 1,
    //     cursorColor: Colors.grey,
    //     keyboardType: inputType,
    //     validator: validator,
    //     autocorrect: true,
    //     enableSuggestions: true,
    //     obscureText: obsecure,
    //     controller: controller,
    //     decoration: InputDecoration(
    //       enabledBorder: const UnderlineInputBorder(
    //         borderSide:BorderSide(color: Colors.grey,width: .1) ,
    //       ),
    //       hintText: text,
    //       suffix: IconButton(
    //         icon: Icon(icon),
    //         onPressed: click,
    //       ),
    //       // labelText: text,
    //          border: InputBorder.none
    //     )
    // );

  }
}
