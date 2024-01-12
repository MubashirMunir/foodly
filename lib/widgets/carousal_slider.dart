import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';

class CarousalSlider extends StatelessWidget {
  const CarousalSlider({super.key, required this.controller});

  final CarouselController controller;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: [
        SizedBox(child: Image.network("https://cdn.pixabay.com/photo/2016/01/31/19/41/apple-1172060_640.jpg")),
    SizedBox(child: Image.network("https://th.bing.com/th/id/OIP.83e5FIYR2t-3drvUxWi06gHaE7?w=800&h=533&rs=1&pid=ImgDetMain")),
    SizedBox(child: Image.network("https://www.celebritycruises.com/blog/content/uploads/2020/09/food-on-a-cruise-mast-grill-cheeseburger-768x512.jpg")),
    ],
    carouselController: controller,
    options: CarouselOptions(
    autoPlayAnimationDuration: const Duration(seconds: 3),
    viewportFraction: 1,
    autoPlay: true,
    autoPlayCurve: Curves.ease,
    aspectRatio: 2,
    height: 250,
    scrollDirection: Axis.horizontal,
    onPageChanged: (index, reason) {
    }));
  }
}
