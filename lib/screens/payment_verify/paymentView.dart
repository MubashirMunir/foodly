import 'package:dummy/screens/payment_verify/paymentViewModel.dart';
import 'package:dummy/widgets/appbar_text.dart';
import 'package:dummy/widgets/bold_text.dart';
import 'package:dummy/widgets/custombutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stacked/stacked.dart';

class PaymentView extends StackedView<PaymentViewModel> {
  var foodItem;

   PaymentView({required this.foodItem});

  @override
  Widget builder(BuildContext context, PaymentViewModel viewModel, Widget? child) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Text(viewModel.cartService.cartList.length.toString()),
          IconButton(
              onPressed: (){
                viewModel.navigateToCart();
                viewModel.cartService.cartList;
              },
              icon: const Icon(Icons.shopping_cart))
        ],
        title: const AppbarText(text: "Payment"),),
    body:   Column(
      children: [
      const BoldText(boldText: "Add Your Payment Methods"),
      const SizedBox(height: 150,),
       const Padding(
         padding: EdgeInsets.all(30.0),
         child: Text('This card will only charge when you place your order'),
       ),
       const Padding(
         padding: EdgeInsets.all(20.0),
         child: TextField(
             decoration: InputDecoration(contentPadding: EdgeInsets.all(15),
                 hintText: "444 333 222 11",hintStyle: TextStyle(color: Colors.black12),
                 suffixIcon: Icon(Icons.card_giftcard),
                 border: OutlineInputBorder(),
                 enabledBorder: OutlineInputBorder())),
       ),
              const Spacer(),
        CustomButton(text: "Add to Cart", onTap: (){

          viewModel.set(foodItem);
          viewModel.cartService.save();
          }, loading: viewModel.loading, color: Colors.green)
    ],),
    );
  }

  @override
  PaymentViewModel viewModelBuilder(BuildContext context) =>PaymentViewModel();
}
