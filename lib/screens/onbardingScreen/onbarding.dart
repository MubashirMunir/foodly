import 'package:dummy/modules/onboardingmodule.dart';
import 'package:dummy/widgets/custombutton.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'onboarding_ViewModel.dart';

class OnboardingView extends StackedView<OnboardingViewModel> {
  const OnboardingView({super.key});

  @override
  Widget builder(
      BuildContext context, OnboardingViewModel viewModel, Widget? child) {
    return Scaffold(
        // appBar: AppBar(
        //   systemOverlayStyle: const SystemUiOverlayStyle(
        //     statusBarColor: Colors.transparent,
        //   ),
        //   backgroundColor: Colors.white,
        //   actions: [
        //     // TextButton(
        //     //     child: const Text(
        //     //       "skip",
        //     //       style: TextStyle(color: Colors.blue),
        //     //     ),
        //     //     onPressed: () => {
        //     //       if (viewModel.currentIndex == screens.length - 1)
        //     //         {
        //     //           Navigator.pushReplacement(context,
        //     //               MaterialPageRoute(builder: (context) => const StartupScreen()))
        //     //         }
        //     //     })
        //   ],
        // ),
        body: PageView.builder(
            onPageChanged: (int index) => {viewModel.currentIndex = index},
            controller: viewModel.controller,
            itemCount: screens.length,
            itemBuilder: (context, index) {
              return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.network(screens[index].image),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      screens[index].text,
                      style:
                          const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0, right: 40),
                      child: Text(
                        screens[index].desc,
                        style: const TextStyle(color: Colors.black38),
                      ),
                    ),
                    CustomButton(
                        color: Colors.green,
                        onTap: () {
                          viewModel.getStarted(screens, index);
                        },
                        text: 'Get Started',
                        loading: false),
                  ]);
            }));
  }

  @override
  OnboardingViewModel viewModelBuilder(BuildContext context) =>
      OnboardingViewModel();
}
