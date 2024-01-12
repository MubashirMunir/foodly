import 'package:dummy/screens/verify_code/verifyscreen_viewModel.dart';
import 'package:dummy/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stacked/stacked.dart';
import '../../widgets/custombutton.dart';

class VerifyScreenView extends StackedView<VerifyScreenViewModel> {
  var Phonenumber;

  var verifiationId;

   VerifyScreenView({
    required this.Phonenumber,
     required this.verifiationId,
  });

  @override
  Widget builder(
      BuildContext context, VerifyScreenViewModel viewModel, Widget? child) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("LoginWithPhone"),
        ),
        body: Column(
          children: [
            const CustomText(text: "verify phone number"),
            const Text(
              "Enter verification code sent to you at",
              style: TextStyle(fontSize: 18, color: Colors.black54),
            ),
            Text(Phonenumber, style: const TextStyle(fontSize: 18, color: Colors.black54)),
            // Form(
            //   key: viewModel.formKey,
            //   child: Row(
            //     children: [
            //       SizedBox(
            //         height: 50,
            //         width: 50,
            //         child: TextFormField(
            //           decoration: const InputDecoration(
            //             border: OutlineInputBorder(),
            //           ),
            //           key: viewModel.formKey,
            //           controller: viewModel.firstController,
            //           keyboardType: TextInputType.number,
            //           inputFormatters: [
            //             LengthLimitingTextInputFormatter(1),
            //             FilteringTextInputFormatter.digitsOnly
            //           ],
            //           textAlign: TextAlign.center,
            //         ),
            //       ),
            //       SizedBox(
            //         height: 50,
            //         width: 50,
            //         child: TextFormField(
            //           decoration: const InputDecoration(
            //             border: OutlineInputBorder(),
            //           ),
            //           key: viewModel.formKey,
            //           controller: viewModel.secondController,
            //           keyboardType: TextInputType.number,
            //           inputFormatters: [
            //             LengthLimitingTextInputFormatter(1),
            //             FilteringTextInputFormatter.digitsOnly
            //           ],
            //           textAlign: TextAlign.center,
            //         ),
            //       ),
            //       SizedBox(
            //         height: 50,
            //         width: 50,
            //         child: TextFormField(
            //           decoration: const InputDecoration(
            //             border: OutlineInputBorder(),
            //           ),
            //           key: viewModel.formKey,
            //           controller: viewModel.thirdController,
            //           keyboardType: TextInputType.number,
            //           inputFormatters: [
            //             LengthLimitingTextInputFormatter(1),
            //             FilteringTextInputFormatter.digitsOnly
            //           ],
            //           textAlign: TextAlign.center,
            //         ),
            //       ),
            //       SizedBox(
            //         height: 50,
            //         width: 50,
            //         child: TextFormField(
            //           decoration: const InputDecoration(
            //             border: OutlineInputBorder(),
            //           ),
            //           key: viewModel.formKey,
            //           controller: viewModel.fourthController,
            //           keyboardType: TextInputType.number,
            //           inputFormatters: [
            //             LengthLimitingTextInputFormatter(1),
            //             FilteringTextInputFormatter.digitsOnly
            //           ],
            //           textAlign: TextAlign.center,
            //         ),
            //       ),
            //       SizedBox(
            //         height: 50,
            //         width: 50,
            //         child: TextFormField(
            //           decoration: const InputDecoration(
            //             border: OutlineInputBorder(),
            //           ),
            //           key: viewModel.formKey,
            //           controller: viewModel.fifthController,
            //           keyboardType: TextInputType.number,
            //           inputFormatters: [
            //             LengthLimitingTextInputFormatter(1),
            //             FilteringTextInputFormatter.digitsOnly
            //           ],
            //           textAlign: TextAlign.center,
            //         ),
            //       ),
            //       SizedBox(
            //         height: 50,
            //         width: 50,
            //         child: TextFormField(
            //           decoration: const InputDecoration(
            //             border: OutlineInputBorder(),
            //           ),
            //           key: viewModel.formKey,
            //           controller: viewModel.sixController,
            //           keyboardType: TextInputType.number,
            //           inputFormatters: [
            //             LengthLimitingTextInputFormatter(1),
            //             FilteringTextInputFormatter.digitsOnly
            //           ],
            //           textAlign: TextAlign.center,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextFormField(
                        keyboardType: TextInputType.phone,
                        controller: viewModel.textController,
                        decoration: const InputDecoration(
                          hintText: '6 digits code',
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter verification code";
                          } else {
                            return null;
                          }
                        }),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomButton(
                        color: Colors.green,
                        loading: viewModel.loading,
                        text: 'Verify',
                        onTap: () {
                          // viewModel.navigateTohome();
                          viewModel.verify(verifiationId);
                        })
                  ]),
            ),
          ],
        ));
  }

  @override
  VerifyScreenViewModel viewModelBuilder(BuildContext context) =>
      VerifyScreenViewModel();
}
