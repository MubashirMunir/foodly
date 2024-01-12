import 'package:dummy/widgets/appbar_text.dart';
import 'package:dummy/widgets/custom_text.dart';
import 'package:dummy/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../widgets/custombutton.dart';
import 'forgetpassword_viewModel.dart';

class ForgetPassword extends StackedView<ForgetPasswordModel> {
  const ForgetPassword({super.key});

  @override
  Widget builder(
      BuildContext context, ForgetPasswordModel viewModel, Widget? child) {
    return Scaffold(
      appBar: AppBar(
        title: const AppbarText(text: 'Forget Password',),
      ),
      body: Column(
        children: [
          const CustomText(text: "Forget password"),
          const Padding(
            padding:
            EdgeInsets.only(right: 30.0, left: 20, top: 0, bottom: 0),
            child: Text(
              "Enter Your Email or phone number to Sign in to enjoy your meal",
              style: TextStyle(fontSize: 18,color: Colors.black54),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              autovalidateMode: AutovalidateMode.always,
              key: viewModel.formKey,
              child: Padding(
                padding: const EdgeInsets.only(top: 100),
                child: CustomTextField(controller: viewModel.emailController, type: TextInputType.emailAddress, hintText: "Enter email address", text: 'Enter email address',),
              )
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: CustomButton(
                text: 'Send Code',
              color: Colors.green,
              loading: viewModel.loading,
              onTap: () =>
             // viewModel.uploadDataToFirebase(),
              viewModel.sendResetEmail(),


            ),
          ),
        ],
      ),
    );
  }

  @override
  ForgetPasswordModel viewModelBuilder(BuildContext context) =>
      ForgetPasswordModel();
}
