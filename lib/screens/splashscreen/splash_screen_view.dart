import 'package:dummy/screens/splashscreen/splash_screen-viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:stacked/stacked.dart';

class StartupScreen extends StackedView<StartupScreenViewModel> {
  const StartupScreen({super.key});

  @override
  Widget builder(
      BuildContext context, StartupScreenViewModel viewModel, Widget? child) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          SizedBox(
              height: 370,
              child: Image.network(
                'https://img.freepik.com/premium-vector/enjoy-your-meal-vector-illustration-variety-delicious-food-home-restaurant_2175-15090.jpg?w=900',
                fit: BoxFit.fitHeight,
              )),
          const SizedBox(
            height: 60,
          ),
          const Text(
            "Lets Try Foodly",
            style: TextStyle(
                fontSize: 38, color: Colors.teal, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 100,
          ),
          const LinearProgressIndicator(
            backgroundColor: Colors.white,
            color: Colors.teal,
          ),
        ],
      ),
    );
  }
  @override
  void onViewModelReady(StartupScreenViewModel viewModel) => SchedulerBinding.instance
      .addPostFrameCallback((timeStamp) => viewModel.isLogin());

  @override
  StartupScreenViewModel viewModelBuilder(BuildContext context) => StartupScreenViewModel();
}
