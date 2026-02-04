import 'package:banking_app/Screens/Signup/signup1_screen.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';

class SignupController extends GetxController {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool obscurePassword = true;
  bool isButtonEnabled = false;

  @override
  void onInit() {
    super.onInit();
    usernameController.addListener(_validateForm);
    passwordController.addListener(_validateForm);
  }

  void togglePasswordVisibility() {
    obscurePassword = !obscurePassword;
    update();
  }

  void _validateForm() {
    final isFilled =
        usernameController.text.trim().isNotEmpty &&
        passwordController.text.trim().isNotEmpty;
    if (isButtonEnabled != isFilled) {
      isButtonEnabled = isFilled;
      update();
    }
  }

  void onForgotPassword() {
    // TODO: Handle forgot password
    print('Forgot Password tapped');
  }

  naviagtetosignup1page() {
    Get.to(() => Signup1Screen());
  }

  void onSignIn() {
    // TODO: Handle sign in
    naviagtetosignup1page();
    print(
      'Sign in clicked: ${usernameController.text}, ${passwordController.text}',
    );
  }
}
