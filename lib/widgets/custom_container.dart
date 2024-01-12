import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
   const CustomContainer({super.key,required this.image});
  final String image ;
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: MediaQuery.of(context).size.height*.28,
      width: MediaQuery.of(context).size.width*.95,
      decoration: BoxDecoration( image: DecorationImage(fit: BoxFit.cover,
          image: NetworkImage(image) ),
          borderRadius: const BorderRadius.all(Radius.circular(7),
          )
      ),
    );
  }
}
