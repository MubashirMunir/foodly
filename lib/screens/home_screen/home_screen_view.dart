import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dummy/modules/food_item.dart';
import 'package:dummy/screens/home_screen/home_screen_ViewModel.dart';
import 'package:dummy/widgets/appbar_text.dart';
import 'package:dummy/widgets/carousal_slider.dart';
import 'package:dummy/widgets/custom_second_stack.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:stacked/stacked.dart';
import '../../widgets/custom_first_stack.dart';



class Home extends StackedView<HomeScreenViewModel> {
initState(){

}
  const Home({super.key});
  final String url =
      "https://th.bing.com/th/id/OIP.R1xaCVpmYeewpbClrYbopAHaD4?rs=1&pid=ImgDetMain";
  @override
  Widget builder(
      BuildContext context, HomeScreenViewModel viewModel, Widget? child) {
    return Scaffold(
      appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () => viewModel.auth
                    .signOut()
                    .then((value) => viewModel.navigation()),
                icon: const Icon(Icons.login))
          ],
          centerTitle: true,
          title: const AppbarText(
            text: "Home",
          )),
      body: SingleChildScrollView(
        child: FutureBuilder(
            future: viewModel.ref,
            builder: (context,
                AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>>
                    snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting ||
                  snapshot.hasData == false) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return const Center(child: Text('has error'));
              }
              viewModel.foodItems = snapshot.data!.docs
                  .map((e) => FoodItem.fromJson(e.data()))
                  .toList();
              return Column(children: [
                const AppbarText(text: "San Fransisco"),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_drop_down_outlined)),
                Stack(children: [
                  // InkWell(
                  // onTap: (){print(currentIndex);},
                  // // images.map((pics) =>Image.network(pics["image_path"])).toList(),
                  // child:
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: CarousalSlider(
                            controller: viewModel.carouselController)),
                  ),
                  Positioned(
                      top: 200,
                      bottom: 10,
                      left: 130,
                      right: 0,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                              viewModel.images.asMap().entries.map((entry) {
                            print(entry);
                            print(entry.key);
                            return GestureDetector(
                                onTap: () => viewModel.carouselController
                                    .animateToPage(entry.key),
                                child: Container(
                                  height: 7,
                                  width: viewModel.currentIndex == entry.key
                                      ? 7
                                      : 9,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 3),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color:
                                        viewModel.currentIndex == entry.key
                                            ? Colors.white
                                            : Colors.green,
                                  ),
                                ));
                          }).toList())),
                ]),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Featured Partner",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "see all",
                        style: TextStyle(color: Colors.green),
                      )
                    ]),
                ),
                SizedBox(
                  height: 200,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: viewModel.foodItems.length,
                        itemBuilder: (context, index) {
                          return FirstStack(
                          location:
                          viewModel.foodItems[index].city.toString(),
                          name: viewModel.foodItems[index].name,
                          image: viewModel.foodItems[index].imageUrl,
                          time: viewModel.foodItems[index].deliveryPrice
                              .toString(),
                          delivery: viewModel
                              .foodItems[index].deliveryPrice
                              .toString(),
                          rating: viewModel.foodItems[index].rating
                              .toString(),
                          );
                        })),
                Container(
                  margin: const EdgeInsets.all(10),
                  height: 200,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Image.network(url),),
                ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: viewModel.foodItems.length,
                    itemBuilder: (context, index) {
                      return InkWell(onTap: (){viewModel.navigatoDetail(index);},
                        child: Column(
                          children: [
                          SecondStack(location: viewModel.foodItems[index].deliveryPrice.toString(),
                            name: viewModel.foodItems[index].name.toString(),
                            time: viewModel.foodItems[index].city.toString(),
                            image: viewModel.foodItems[index].imageUrl.toString(),
                            price:viewModel.foodItems[index].city.toString(),
                            rating: viewModel.foodItems[index].rating.toString(),
                            firstImage: viewModel.foodItems[index].imageUrl.toString(),
                            country: viewModel.foodItems[index].city.toString(),
                            thirdImage: viewModel.foodItems[index].imageUrl.toString(),
                            fourthImage: viewModel.foodItems[index].imageUrl.toString(),
                            secondImage: viewModel.foodItems[index].imageUrl.toString(),
                            textrating: viewModel.foodItems[index].rating.toString(),
                          ),
                        ],),
                      );
                    }),
   ]);
            }),
      ),
    );
  }
@override
void onViewModelReady(HomeScreenViewModel viewModel) => SchedulerBinding.instance
    .addPostFrameCallback((timeStamp) =>viewModel.cartService.get());

  @override
  HomeScreenViewModel viewModelBuilder(BuildContext context) =>
      HomeScreenViewModel();
}
