import 'package:dummy/modules/food_item.dart';
import 'package:dummy/widgets/custombutton.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../widgets/appbar_text.dart';
import 'order_viewModel.dart';

class OrderView extends StackedView<OrderViewModel> {
 final FoodItem foodItem;
 // ignore: prefer_typing_uninitialized_variables
 final quantity;
 // ignore: prefer_typing_uninitialized_variables
 final total;

  const OrderView( this.foodItem, this.quantity, this.total, {super.key});
  @override
  Widget builder(
      BuildContext context, OrderViewModel viewModel, Widget? child) {
    return Scaffold(
      appBar: AppBar(
        title: const AppbarText(
          text: 'Order Details',
        ),

      ),
      body: Column(children: [
        InkWell(
          onTap: () {},
          child: SizedBox(
            width: 350,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text('1'),
                AppbarText(text: foodItem.name),
                Container(
                  height: 20,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                      child: Text("\$${foodItem.price}",
                    style: const TextStyle(color: Colors.white),
                  )),
                )
              ],
            ),
          ),
        ),
        const Text('delicious food for every one'),
        SizedBox(
          width: 320,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Quantity'),
              Text(quantity.toString()),
            ],
          ),
        ),
        SizedBox(
          width: 320,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Text('Total Amount'),
            Text("\$$total"),
          ]),
        ),
        const Spacer(
          flex: 100,
        ),
        CustomButton(
            text: 'Buy Now',
            onTap: () {
      viewModel.navigatePayment(foodItem);

             },
            loading: false,
            color: Colors.green)
      ]),
    );
  }

  @override
  OrderViewModel viewModelBuilder(BuildContext context) => OrderViewModel();
}
