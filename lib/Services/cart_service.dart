import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../modules/food_item.dart';

class CartService {

  List<FoodItem> cartList = [];

  Future<void> save() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    var stringData = jsonEncode(cartList);
    await sp.setString("key", stringData);

  }
  Future<void> get() async{
    SharedPreferences sp = await SharedPreferences.getInstance() ;
    var data= sp.getString("key");
    var decoded= jsonDecode(data!);
    print( decoded);
    for(int i=0;i<decoded.length;i++){
      decoded[i];
    var fooditems= FoodItem.fromJson(decoded[i]);

      cartList.add(fooditems);
    }

  }


}

