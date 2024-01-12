import 'package:dummy/screens/our_products/our_products_viewModel.dart';
import 'package:dummy/widgets/appbar_text.dart';
import 'package:dummy/widgets/custom_dot.dart';
import 'package:dummy/widgets/custom_first_stack.dart';
import 'package:dummy/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ProductsView extends StackedView<ProductsViewModel> {
  const ProductsView({super.key});


  @override
  Widget builder(BuildContext context, viewModel, Widget? child) {
  return Scaffold(appBar: AppBar(actions: [

    IconButton(onPressed: (){},
      icon: const Icon(Icons.search))]
    ),
    body:  Column(children: [
    const CustomText(text: "Mayfield Bakery & Cafe"),
      const Padding(
        padding: EdgeInsets.only(right:80.0,bottom: 20,top: 20),
        child: SizedBox(width: 230,
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            Text("Chinese",style: TextStyle(color: Colors.grey),),
            CustomDot(),
            Text("American",style: TextStyle(color: Colors.grey),),
            CustomDot(),
            Text("Deshi Food",style: TextStyle(color: Colors.grey),)

          ],),
        ),
      ),
    const SizedBox(width: 300,
      child: Row(mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("4.3"),
          Icon(Icons.star,color: Colors.green,size: 15,),
          Text("200+ Ratings")
        ],),
    ),
      const SizedBox(height: 20,),
      SizedBox(width: 280,
        child: Row(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Icon(Icons.monetization_on,color: Colors.green,size: 15,),
            const Text("Free",style: TextStyle(fontWeight: FontWeight.bold),),
            const SizedBox(width: 35,),
            const Icon(Icons.watch_later,color: Colors.green,size: 15,),
            const Text("25",style: TextStyle(fontWeight: FontWeight.bold),),
            const SizedBox(width: 85,),
            Container(
              height: 30,
              width: 80,
              decoration: BoxDecoration(border: Border.all(color: Colors.green),
                  borderRadius: BorderRadius.circular(5)),
              child: const Center(child: Text("Take Away",style: TextStyle(color: Colors.green),)),)
          ]),
      ),
      const SizedBox(width: 280,
        child: Padding(
          padding: EdgeInsets.only(right: 150),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [Text("Delivery",style: TextStyle(color: Colors.green,fontSize: 12),),
              Text("Minutes",style: TextStyle(color: Colors.green,fontSize: 12),),],),
        ),
      ),

      const Padding(
        padding: EdgeInsets.only(right: 180,bottom: 10),
        child: AppbarText(text: 'Feature Items',),
      ),
      SizedBox(
        height: 230,
        child: ListView(
            reverse: false,
            scrollDirection: Axis.horizontal,
            children: const [
              FirstStack(
                  delivery: "free delivery",
                  location: "San Fransisco",
                  name: "Cafe Brichore,s",
                  time: "40min",
                  image: "https://cdn.pixabay.com/photo/2017/04/04/01/08/fruits-2200001_640.jpg",
                  rating: "4.4"),
              FirstStack(
                  delivery: "free delivery",
                  location: "San fransisco",
                  name: "daylight Coffee",
                  time: "40min",
                  image: "https://th.bing.com/th/id/OIP.eD7MpRmuCp5oKFlcdoKmuwHaE8?rs=1&pid=ImgDetMain",
                  rating: "4.4"),
              FirstStack(
                  delivery: "free delivery",
                  location: "San Fransisco",
                  name: "Pomegranite",
                  time: "40min",
                  image: "assets/images/cat2.jpg",
                  rating: "4.4"),
              FirstStack(
                  delivery: "free delivery",
                  location: "San Fransisco",
                  name: "Potato",
                  time: "40min ",
                  image: "https://cdn.pixabay.com/photo/2017/11/25/17/17/sandwich-2977251_640.jpg",
                  rating: "4.4"),
              FirstStack(
                  delivery:"free delivery",
                  location:"San Fransisco",
                  name: "Mario Italiano",
                  time: "40min",
                  image: "https://cdn.pixabay.com/photo/2015/05/04/10/16/vegetables-752153_640.jpg",
                  rating: "4.4"),
              FirstStack(
                  delivery: "free delivery",
                  location: "Colarodo Street",
                  name: "Zinger Burger",
                  time: "40min ",
                  image: "https://cdn.pixabay.com/photo/2016/03/10/18/44/top-view-1248955_640.jpg",
                  rating: "4.4"),
            ]),
      ),
     // SizedBox(height: 40,
     //   width: MediaQuery.of(context).size.width*2,
     //   child: ListView(children: const [
     //         BoldText(boldText: "Standford")
     //   ],),
     // )





    ]),
  );
  }

  @override
  viewModelBuilder(BuildContext context) => ProductsViewModel();
}
