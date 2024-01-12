import 'package:dummy/screens/cart/cart_viewModel.dart';
import 'package:dummy/widgets/appbar_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stacked/stacked.dart';

class CartView extends StackedView<CartViewModel> {
  const CartView({super.key});


  @override
  Widget builder(BuildContext context, CartViewModel viewModel, Widget? child) {
   return Scaffold(
     appBar: AppBar(
       actions: [IconButton(onPressed: (){viewModel.cleaner();}, icon:const Icon(Icons.clear_all))],
       title: const AppbarText(text: "Cart",),),
     body:ListView.builder(
         itemCount: viewModel.cartService.cartList.length,
         itemBuilder: (context, index){

       return ListTile(
         onLongPress: (){viewModel.delete(index);},
         // onTap:(){viewModel.delete(index);},
         subtitle: Text(viewModel.cartService.cartList[index].name),
         trailing:Text("\$${viewModel.cartService.cartList[index].price}") ,
         title:Row(
           children: [
             Image.network(viewModel.cartService.cartList[index].imageUrl,width:45,height:45),
           ],
         ),);
     })
   );
  }

  @override
  CartViewModel viewModelBuilder(BuildContext context)=>CartViewModel();
}
