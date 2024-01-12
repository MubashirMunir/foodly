
import 'package:flutter/cupertino.dart';

class BoldText extends StatelessWidget {
  const BoldText({super.key,required this.boldText});
 final String boldText;
  @override
  Widget build(BuildContext context) {
    return Text(boldText,style: const TextStyle(fontSize: 15));
  }
}
