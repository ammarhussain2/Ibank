import 'package:banking_app/Screens/Signup/signup_controller.dart';
import 'package:banking_app/utlis/app_colors.dart';
import 'package:banking_app/utlis/app_dimen.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  final SignupController controller = Get.put(SignupController());

  @override
  Widget build(BuildContext context) {
    AppDimens.init(context);

    return Scaffold(
      body: GetBuilder<SignupController>(
        builder: (_) {
          return Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(color: AppColors.primaryColor),
            child: Column(
              children: [
                SizedBox(height: AppDimens.dimen70),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppDimens.dimen10),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset("assets/icons/backarrow.png"),
                      ),
                      const Text(
                        "Sign in",
                        style: TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: AppDimens.dimen10),
                Expanded(
                  child: Container(
                    width: AppDimens.screenWidth,
                    decoration: const BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(30),
                      ),
                    ),
                    child:
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Welcome Back",
                              style: TextStyle(
                                fontSize: 28,
                                color: AppColors.primaryColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const Text("Hello there, sign in to continue"),
                            SizedBox(
                              width: AppDimens.screenWidth,
                              child: Image.asset("assets/icons/lock.png"),
                            ),
                            // Username Field
                            TextField(
                              controller: controller.usernameController,
                              decoration: InputDecoration(
                                labelText: 'Username',
                                labelStyle: const TextStyle(
                                  color: Color(0xFFCBCBCB),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0xFFCBCBCB),
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0xFFCBCBCB),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              style: const TextStyle(color: Colors.black),
                              cursorColor: const Color(0xFFCBCBCB),
                            ),
                            SizedBox(height: AppDimens.dimen10),

                            // Password Field
                            TextField(
                              controller: controller.passwordController,
                              obscureText: controller.obscurePassword,
                              decoration: InputDecoration(
                                hintText: 'Enter your password',
                                hintStyle: const TextStyle(
                                  color: Color(0xFFCBCBCB),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0xFFCBCBCB),
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0xFFCBCBCB),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    controller.obscurePassword
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: const Color(0xFFCBCBCB),
                                  ),
                                  onPressed:
                                      controller.togglePasswordVisibility,
                                ),
                              ),
                              cursorColor: const Color(0xFFCBCBCB),
                            ),

                            // Forgot Password button
                            Align(
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                onPressed: controller.onForgotPassword,
                                child: const Text(
                                  "Forgot Password?",
                                  style: TextStyle(
                                    color: AppColors.primaryColor,
                                  ),
                                ),
                              ),
                            ),

                            // Sign In button
                            SizedBox(
                              width: double.infinity,
                              height: AppDimens.dimen50,
                              child: ElevatedButton(
                                onPressed: controller.isButtonEnabled
                                    ? controller.onSignIn
                                    : null,
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: controller.isButtonEnabled
                                      ? AppColors.primaryColor
                                      : const Color(0xFFCBCBCB),
                                  disabledBackgroundColor: const Color(
                                    0xFFCBCBCB,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                child: const Text(
                                  "Sign In",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: AppDimens.screenWidth,
                              height: AppDimens.dimen120,
                              child: Center(
                                child: Image.asset(
                                  "assets/icons/fingerprint.png",
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Don't have an account? "),
                                TextButton(
                                  onPressed: () {},
                                  child: Text("Sign Up"),
                                ),
                              ],
                            ),
                          ],
                        ).paddingSymmetric(
                          horizontal: AppDimens.dimen20,
                          vertical: AppDimens.dimen10,
                        ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
