
import 'package:flutter/material.dart';

class CustomDot extends StatelessWidget {
  const CustomDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(height:5,width:5,decoration: BoxDecoration(color:Colors.black12,borderRadius:BorderRadius.circular(10)));

  }
}
