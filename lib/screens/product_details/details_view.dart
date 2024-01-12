import 'package:dummy/modules/food_item.dart';
import 'package:dummy/ui_helper/tost_message.dart';
import 'package:dummy/widgets/custombutton.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../widgets/appbar_text.dart';
import 'details_viewModel.dart';

// ignore: must_be_immutable
class DetailView extends StackedView<DetailViewModel> {
  // ignore: prefer_typing_uninitialized_variables


  FoodItem foodItem;


   DetailView({super.key, required this.foodItem,});

  @override
  Widget builder(
      BuildContext context, DetailViewModel viewModel, Widget? child) {

    int prices=int.parse(foodItem.price);
     int total=prices*viewModel.value;

    return Scaffold(
      appBar: AppBar(
        title: const AppbarText(
          text: 'Details',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(foodItem.imageUrl),
            const SizedBox(
              height: 20,
            ),
             Text(foodItem.name,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            const SizedBox(
              height: 10,
            ),
            ListTile(
                title: const Text('Mangoes'),
                leading: Radio(
                  toggleable: true,

                  onChanged: (value) {viewModel.slected();
                  },
                  value:viewModel.s1?1:0,
                  groupValue: 1,
                )),
            ListTile(
                title: const Text('Banana'),
                leading: Radio(
                  toggleable: true,

                  onChanged: (value) {
                    viewModel.slected2();
                  },
                  value:viewModel.s2?1:0,
                  groupValue: 1,
                )),
            const AppbarText(text: 'Bottom Cookies Your Favourite'),
            ListTile(
                title: const Text('Mangoes'),
                leading: Radio(
                  toggleable: true,
                  onChanged: (value) {
                    viewModel.slected3();
                  },
                  value: viewModel.s3?1:0,
                  groupValue:1,
                )),
            ListTile(
                title: const Text('Banana'),
                leading: Radio(
                  toggleable: true,
                  onChanged: (value) {
                    viewModel.slected4();
                  },
                  value: viewModel.s4?1:0,
                  groupValue:1,
                )),

           Text("\$${prices*viewModel.value}"),
          SizedBox(width: 120,
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: (){
                  if(viewModel.value==1){
                 utils().toast("Not less then one please");
                  }
                  viewModel.minus();
                },
                    icon:const Text('Minus')
                  ),
              Text(viewModel.value.toString()),
                IconButton(onPressed: ()=>viewModel.add(), icon:const Text('Add'))
            ],),
          ),

            CustomButton(text: 'Place Your Order ', onTap: ()=>viewModel.navigateToDetails(foodItem,viewModel.value,total), loading: viewModel.loading,color: Colors.green,),


          ],
        ),

      ),

    );

  }

  @override
  DetailViewModel viewModelBuilder(BuildContext context) => DetailViewModel();
}
