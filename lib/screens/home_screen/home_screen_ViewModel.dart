import 'package:carousel_slider/carousel_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dummy/Services/cart_service.dart';
import 'package:dummy/app/app.locator.dart';
import 'package:dummy/app/app.router.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../modules/food_item.dart';

class HomeScreenViewModel extends IndexTrackingViewModel {
  final _navigationService = NavigationService();
  final cartService=locator<CartService>();
  final FirebaseAuth auth = FirebaseAuth.instance;
  final ref=FirebaseFirestore.instance.collection('food_item').get();

  List<FoodItem> foodItems = [];


  void navigatoDetail(index,){
    _navigationService.navigateToDetailView(foodItem:foodItems[index]);
  }

  void navigation() {
    _navigationService.replaceWith(Routes.loginView);
  }
  final CarouselController carouselController = CarouselController();
  final List imageUrls = [
    {'id': 1, 'image_path': "https://i.redd.it/5unn16axx1v81.jpg"},
    {
      'id': 1,
      'image_path': "https://cdn.pixabay.com/photo/2016/01/31/19/41/apple-1172060_640.jpg"},
    {
      'id': 1,
      'image_path':
      "https://anthropocenemagazine.org/wp-content/uploads/2020/04/Panda-2.jpg"
    },
  ];


  final List images = [

    {'id': 1, 'image_path': "https://i.redd.it/5unn16axx1v81.jpg"},
    {
      'id': 1,
      'image_path': "https://cdn.pixabay.com/photo/2016/01/31/19/41/apple-1172060_640.jpg"},
    {
      'id': 1,
      'image_path':
      "https://anthropocenemagazine.org/wp-content/uploads/2020/04/Panda-2.jpg"
    },
  ];

}
