import 'package:dummy/screens/signup_screen/signup_screen_viewModel.dart';
import 'package:dummy/widgets/custom_text.dart';
import 'package:dummy/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stacked/stacked.dart';
import '../../widgets/appbar_text.dart';
import '../../widgets/custombutton.dart';

class SignUp extends StackedView<SignUpViewModel> {
  const SignUp({super.key});

  @override
  Widget builder(
      BuildContext context, SignUpViewModel viewModel, Widget? child) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppbarText( text: 'SignUp',
        ),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: CustomText(text: 'Create Your Account'),
            ),
            Form(
              key: viewModel.formKey,
              child: Padding(
                padding: const EdgeInsets.only(left: 30.0,right: 30),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                  const Text(
                    "Enter Your Email or phone number to Sign in to enjoy your meal",
                    style: TextStyle(fontSize: 18,color: Colors.black54),
                  ),
                  const SizedBox(height: 30,),
                  CustomTextField(controller: viewModel.fatherNameController, type: TextInputType.emailAddress, hintText: "Enter Your Name", text: 'enter your name ',),
                  const SizedBox(height: 20),
                 CustomTextField(controller: viewModel.emailController, type: TextInputType.emailAddress, hintText: "Enter Email address", text: 'enter correct email',),
                   const SizedBox(height: 20),
                  CustomTextField(controller: viewModel.passwordController, type: TextInputType.emailAddress, hintText: "Enter password", text: 'enter password ',),
                  const SizedBox(height: 100),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(
                          color: Colors.green,
                          loading: viewModel.loading,
                          text: 'Create Account',
                          onTap:()=>viewModel.createAccount()),
                    ]),
                  TextButton(
                      onPressed: () {
                        viewModel.navigateToLogin();
                      },
                      child: const Text("already have an account"))
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  SignUpViewModel viewModelBuilder(BuildContext context) => SignUpViewModel();
}
