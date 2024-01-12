import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:stacked/stacked.dart';

import '../../widgets/custombutton.dart';
import 'loginwithphone_ViewModel.dart';

class LoginWithPhone extends StackedView<WithPhoneViewModel> {
   LoginWithPhone({super.key});

  @override
  // TODO: implement reactive
  bool get reactive => false;
  final formKey = GlobalKey<FormState>();
   final FocusNode focusNode = FocusNode();

   @override
  Widget builder(
      BuildContext context, WithPhoneViewModel viewModel, Widget? child) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("SigninwithPhone"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Enter Your phone number to Sign in to foodly and enjoy your meal",
                  style: TextStyle(fontSize: 18,color: Colors.black54),
                ),

            IntlPhoneField(
                // initialCountryCode: '+92',
               initialValue: '+92',
              disableAutoFillHints: true,
              keyboardType: TextInputType.phone,
              controller:viewModel.phoneController,
              // focusNode: focusNode,
              decoration: const InputDecoration(
                // labelText: 'Phone Number',
                border: UnderlineInputBorder(

                ),
              ),
              languageCode: "en",

              onChanged: (phone) {
                viewModel.num=phone.completeNumber;
                print(phone.completeNumber);
              },
              onCountryChanged: (country) {
                print('Country changed to: ${country.name}');
              },
            ),
            const SizedBox(
              height: 30,
            ),
            CustomButton(
              color: Colors.green,
              text: 'verify',
              loading: viewModel.loading,
              onTap: () {
                viewModel.verifyPhone();
              },
            )
          ]),
        ));
  }
  @override
  WithPhoneViewModel viewModelBuilder(BuildContext context) =>
      WithPhoneViewModel();
}
