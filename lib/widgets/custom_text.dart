import 'package:flutter/cupertino.dart';

class CustomText extends StatelessWidget {
   const CustomText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 80,left: 00),
      child: Text(text,style: const TextStyle(fontSize: 25),),
    );
  }
}
