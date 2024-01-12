import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dummy/screens/our_products/products_view.dart';
import 'package:dummy/screens/payment_verify/paymentView.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../home_screen/home_screen_view.dart';

class BottomNavigationViewModel extends IndexTrackingViewModel {
   final FirebaseFirestore firebaseFirestore= FirebaseFirestore.instance;
  // final CollectionReference collectionReference =CollectionReference()


   // void Search(){
   //   firebaseFirestore.doc(id).
   // }





    Widget screens(int index){
      switch(index){
        case 0:
          return const ProductsView();
        case 1:
          return const Home();
        default:
          return const Home();
      }
    }
}