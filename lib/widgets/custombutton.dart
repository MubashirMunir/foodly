import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  const CustomButton(
      {super.key,
      required this.text,
      required this.onTap,
      required this.loading,
      required this.color,
      });
  final String text;
  final VoidCallback onTap;
  final bool loading;
  final Color color;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: 300,
        height: 40,
        decoration: BoxDecoration(
          color:widget.color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: widget.loading
              ? const CircularProgressIndicator(
                  color: Colors.white,
                  strokeAlign: -4,
                )
              : Text(
                  widget.text,
                  style: const TextStyle(color: Colors.white),
                ),
        ),
      ),
    );
  }
}
