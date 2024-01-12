import 'dart:convert';
import 'package:dummy/Services/cart_service.dart';
import 'package:dummy/modules/food_item.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked.dart';

import '../../app/app.locator.dart';

class CartViewModel extends BaseViewModel{
final CartService cartService=locator<CartService>();

void cleaner(){
  cartService.cartList.clear();
  rebuildUi();
}
void delete(index){
  cartService.cartList.removeAt(index);
  rebuildUi();
}


}