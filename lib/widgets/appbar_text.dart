import 'package:flutter/material.dart';

class AppbarText extends StatelessWidget {
   const AppbarText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return  Text(text,
      style: const TextStyle(
          color: Colors.black, fontSize: 18),
    );
  }
}
