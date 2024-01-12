import 'package:dummy/Services/cart_service.dart';
import 'package:dummy/app/app.locator.dart';
import 'package:dummy/modules/food_item.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../app/app.router.dart';


class OrderViewModel extends BaseViewModel{
  final NavigationService _navigationService =NavigationService();
  final CartService cartService=locator<CartService>();



       void set(FoodItem foodItem){
         cartService.cartList.add(foodItem);
      rebuildUi();
       }

  void navigateToCart(){
    _navigationService.navigateTo(Routes.cartView);
  }
  void navigatePayment(foodItem){
    _navigationService.navigateToPaymentView(foodItem: foodItem);
  }
}
// Future<String> initScreen() async {
//   SharedPreferences sp = await SharedPreferences.getInstance();
//   final initScreen = sp.getInt("initScreen");
//   await sp.setInt("initScreen", 1);
//   return initScreen == null ? Routes.onboardingView:Routes.loginView;
// }