import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Signup1Controller extends GetxController {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController textinputController = TextEditingController();
  bool ischecked = false;

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

  void toggleCheckbox(bool? value) {
    ischecked = value ?? false;
    update(); // This will trigger GetBuilder
  }

  void _validateForm() {
    final isFilled =
        usernameController.text.trim().isNotEmpty &&
        passwordController.text.trim().isNotEmpty &&
        textinputController.text.trim().isNotEmpty;
    if (isButtonEnabled != isFilled) {
      isButtonEnabled = isFilled;
      update();
    }
  }

  void onForgotPassword() {
    // TODO: Handle forgot password
    print('Forgot Password tapped');
  }

  moveonbackpage() {
    Get.back();
  }

  void onSignIn() {
    // TODO: Handle sign in

    print(
      'Sign in clicked: ${usernameController.text}, ${passwordController.text}',
    );
  }
}
