import 'package:banking_app/Screens/Signup/signup1controller.dart';
import 'package:banking_app/utlis/app_colors.dart';
import 'package:banking_app/utlis/app_dimen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Signup1Screen extends StatelessWidget {
  Signup1Screen({super.key});

  final Signup1Controller controller = Get.put(Signup1Controller());

  @override
  Widget build(BuildContext context) {
    AppDimens.init(context);
    return Scaffold(
      body: GetBuilder<Signup1Controller>(
        builder: (_) {
          return Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(color: AppColors.primaryColor),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(height: AppDimens.dimen70),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppDimens.dimen10),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: controller.moveonbackpage,
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
                              child: Image.asset(
                                "assets/icons/Illustration-2.png",
                              ),
                            ),
                            TextField(
                              controller: controller.usernameController,
                              decoration: InputDecoration(
                                labelText: 'Name',
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
                            TextField(
                              controller: controller.textinputController,
                              decoration: InputDecoration(
                                labelText: 'Textinput',
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
                            SizedBox(height: AppDimens.dimen10),

                            // Checkbox + Terms text
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Checkbox(
                                  value: controller.ischecked,
                                  onChanged: controller.toggleCheckbox,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "By creating an account you accept",
                                      ),
                                      Wrap(
                                        children: [
                                          const Text("to our "),
                                          GestureDetector(
                                            onTap: () {
                                              print(
                                                "Terms and Conditions tapped",
                                              );
                                            },
                                            child: const Text(
                                              "term and conditions",
                                              style: TextStyle(
                                                color: AppColors.primaryColor,
                                                fontWeight: FontWeight.w600,
                                                decoration:
                                                    TextDecoration.underline,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: AppDimens.dimen10),

                            // Sign In Button
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(" Have an account? "),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text("Sign In"),
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
