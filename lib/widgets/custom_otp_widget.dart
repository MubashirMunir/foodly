import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomOtpWidget extends StatelessWidget {
  CustomOtpWidget({super.key, required this.widgetKey});
  final TextEditingController controller = TextEditingController();
  final GlobalKey<FormState> widgetKey;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 50,
      child: TextFormField(
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
        ),
        key: widgetKey,
        controller: controller,
        keyboardType: TextInputType.number,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
        textAlign: TextAlign.center,
      ),
    );
  }
}
