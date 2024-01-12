import 'package:dummy/widgets/custom_container.dart';
import 'package:dummy/widgets/custom_dot.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SecondStack extends StatelessWidget {
  const SecondStack({super.key, 
    required this.location,
    required this.name,
    required this.time,
    required this.image,
    required  this.rating,
    required this.price,
    required this.country,
    required this.firstImage,
    required this.secondImage,
    required this.thirdImage,
    required this.fourthImage, required this.textrating,}
      );
  final String country;
  final String price;
  final String image;
  final String time;
  final String name ;
  final String rating;
  final String location;
  final String firstImage;
  final String secondImage;
  final String thirdImage;
  final String fourthImage;
  final String textrating;
  @override
  Widget build(BuildContext context) {
       return Column(
            children: [
               SizedBox(
                    height: MediaQuery.of(context).size.height*.3,
                    width: MediaQuery.of(context).size.width*.95,
                 child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CustomContainer(image: image),
                    const SizedBox(width: 6),
                    CustomContainer(image: firstImage),
                    const SizedBox(width: 6),
                    CustomContainer(image: secondImage),
                    const SizedBox(width: 6),
                    CustomContainer(image: thirdImage),
                    const SizedBox(width: 6),
                    CustomContainer(image: fourthImage),

                  ],),
               ),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(right: 195.0),
                child: Text(name,style: const TextStyle(fontSize: 20),),
              ),
              Row(
                children: [
                  const SizedBox(width: 16,),
                  Text(price),
                  const SizedBox(width: 10,),
                  Container(height:5,width:5,decoration: BoxDecoration(color:Colors.black12,borderRadius:BorderRadius.circular(10)),),
                  const SizedBox(width: 10,),
                  Text(location),
                  const SizedBox(width: 10,),
                  Container(height:5,width:5,decoration: BoxDecoration(color:Colors.black12,borderRadius:BorderRadius.circular(10)),),
                  const SizedBox(width: 10,),
                  Text(country),
                ],),
              Padding(
                padding: const EdgeInsets.only(left: 6),
                child: Row(children: [
                  Container(
                      margin: const EdgeInsets.only(top: 10,left: 6,bottom: 15),
                      height: 20,
                      width: 25,
                      decoration:const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          color: Colors.green),
                      alignment: Alignment.center,
                      child:  Text(rating,style: const TextStyle(color: CupertinoColors.white,fontSize: 10))),
                               const SizedBox(width: 15,),
                 Padding(
                   padding: const EdgeInsets.only(right: 8,bottom: 7),
                   child: Text(time.toString(),style: const TextStyle(fontSize: 12)),
                 ),
               const Padding(
                    padding:  EdgeInsets.only(right: 8,bottom: 7),
                    child: Icon(Icons.star,color: Colors.green,size: 15,)
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8,bottom: 7),
                    child: Text(textrating.toString(),style: const TextStyle(fontSize: 12)),
                  ),
                const  Padding(
                    padding: const EdgeInsets.only(right: 8,bottom: 7),
                    child: Icon(Icons.access_time_sharp,size: 15,),
                  ),
               const Padding(
                    padding: const EdgeInsets.only(right: 5,bottom: 7),
                    child: Text("25Mins",style: const TextStyle(fontSize: 12)),
                  ),
                  CustomDot(),
                const  Padding(
                    padding:  EdgeInsets.only(left:7,bottom: 7),
                    child: Icon(Icons.monetization_on,size: 15,),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 9,bottom: 7),
                    child: Text("Free",style: TextStyle(fontSize: 12)),
                  ),
                ],),
              )
        ]);
  }
}
