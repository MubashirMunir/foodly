import 'package:dummy/widgets/custom_text.dart';
import 'package:dummy/widgets/custom_textFormFeild.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../widgets/appbar_text.dart';
import '../../widgets/custombutton.dart';
import 'login_viewModel.dart';

class LoginView extends StackedView<LoginViewModel> {
  const LoginView({super.key,});
  @override
  Widget builder(
      BuildContext context, LoginViewModel viewModel, Widget? child) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        title:  const AppbarText(text: 'Sign in',)
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomText(text: "Welcome To Foody"),
            const Padding(
              padding:
                  EdgeInsets.only(right: 40, left: 30, top: 0, bottom: 0),
              child: Text(
                "Enter Your Email or phone number to Sign in to enjoy your meal or Create new account",
                style: TextStyle(fontSize: 18,color: Colors.black54),
              ),
            ),
            Form(
              key: viewModel.formKey,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                    children: [
                  CustomTextField(
                    inputType: TextInputType.emailAddress,
                 validator: viewModel.emailValidation,
                    obsecure: false,
                    click: () {},
                    icon: Icons.email,
                    controller: viewModel.emailController,
                    text: 'Email Address',
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomTextField(
                    inputType: TextInputType.text,
                    icon: viewModel.isObsecure ? Icons.visibility : Icons.visibility_off,
                    validator: viewModel.passwordValidation,
                    obsecure: viewModel.isObsecure,
                    click: () {viewModel.obSecure();},
                    controller: viewModel.passwordController,
                    text: 'Enter Password',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    onPressed: () => viewModel.navigateToForgetPassword(),
                    child: const Text("Forget password?"),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomButton(
                      color: Colors.green,
                      loading: viewModel.loading,
                      onTap: () => viewModel.login(),
                      text: 'Sign in'),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don,t have an account ?"),
                      TextButton(
                          onPressed: () => viewModel.signup(),
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(color: Colors.blueAccent),
                          )),
                    ],
                  ),
                  CustomButton(
                      text: "Login With Phone",
                      onTap: () => viewModel.loginWithPhone(),
                      loading: viewModel.loading,
                      color: Colors.blue)
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  LoginViewModel viewModelBuilder(BuildContext context) => LoginViewModel();
}
