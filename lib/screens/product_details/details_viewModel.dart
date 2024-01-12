import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../app/app.router.dart';
class DetailViewModel extends BaseViewModel{


  final db=FirebaseFirestore.instance.collection('123456789').get();
  final firebase=FirebaseFirestore.instance.collection('food_item');
  final ref=FirebaseFirestore.instance.collection('food_item').get();
  final NavigationService _navigationService =NavigationService();


    // void getid(){
    //     firebase.where('',isEqualTo: )
    //   print(firebase);
    // }

 bool loading =false;
  int value=1;


  void pop(){
    _navigationService.back();
  }

  void navigateToOrder(){

    loading =false;
    rebuildUi();
    _navigationService.navigateTo(Routes.orderView);
  }
    bool s2=false;
   bool s1=false;
   bool s3=false;
   bool s4=false;

  List options=['Fruity','Sauce'];
   void slected(){
  s1 = !s1;

  rebuildUi();
}
  void slected2(){

    s2 = !s2;

    rebuildUi();
  }
  void slected3(){

    s3 = !s3;

    rebuildUi();
  }
  void slected4(){

    s4 = !s4;

    rebuildUi();
  }
void minus(){
      if(value >1){
        rebuildUi();
        value--;
      }

}
  void add(){
    rebuildUi();
    value++;
  }
void navigateToDetails(foodItem,quantity,total){
     // getid();
     _navigationService.navigateToOrderView(foodItem: foodItem,quantity: quantity,total:total );
}
}
