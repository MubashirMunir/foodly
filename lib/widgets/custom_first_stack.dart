import 'package:dummy/widgets/custom_dot.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstStack extends StatelessWidget {
  const FirstStack({super.key,
    required this.location,
    required this.name,
    required this.time,
    required this.image,
    required this.rating,
    required this.delivery,
  });
  final String image;
  final String time;
  final String name;
  final String rating;
  final String location;
  final String delivery;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 110,
        width: 140,
        margin: const EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
            image:
                DecorationImage(fit: BoxFit.cover, image: NetworkImage(image)),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            )),
      ),
      Container(
          margin: const EdgeInsets.only(
            top: 120,
          ),
          height: 100,
          width: 155,
          child: Stack(children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                children: [
                  Text(name, style: const TextStyle(fontSize: 18)),
                  Text(location.toString()),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50,left: 7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      height: 20,
                      width: 25,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          color: Colors.green),
                      alignment: Alignment.center,
                      child: Text(rating, style: const TextStyle(color: CupertinoColors.white, fontSize: 10))
                  ),
                  Text(time.toString(), style: const TextStyle(fontSize: 12)),
                  const CustomDot(),
                  Text(delivery.toString(), style: const TextStyle(fontSize: 12)),

                ],
              ),
            )
          ]))
    ]);
  }
}
