





import 'package:dummy/Services/cart_service.dart';
import 'package:dummy/app/app.locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../app/app.router.dart';
import '../../modules/food_item.dart';

class PaymentViewModel extends BaseViewModel{
 NavigationService navigationService=NavigationService();
 CartService cartService =locator<CartService>();
 void set(FoodItem foodItem){
  cartService.cartList.add(foodItem);
  rebuildUi();
 }
 bool loading =false;


 navigateToCart(){
  navigationService.navigateToCartView();

 }
}