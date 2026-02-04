import 'package:banking_app/Screens/withdraw/verfy_controller.dart';
import 'package:banking_app/utlis/app_dimen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyScreen extends StatelessWidget {
  VerifyScreen({super.key});
  final VerfyController controller = Get.put(VerfyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: GetBuilder<VerfyController>(
          builder: (controller) {
            return Column(
              children: [
                Row(
                  children: [
                    const BackButton(),
                    Text(
                      "Withdraw",
                      style: TextStyle(
                        fontSize: AppDimens.dimen24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                Center(
                  child: Image.asset("assets/images/withdraw.png", height: 150),
                ),

                const SizedBox(height: 24),

                _textField("Enter account / Account number"),
                const SizedBox(height: 16),
                _textField("Phone number"),
              ],
            ).paddingAll(AppDimens.dimen16);
          },
        ),
      ),
    );
  }

  Widget _textField(String label) {
    return SizedBox(
      height: AppDimens.dimen60,
      child: TextField(
        controller: label.contains("account")
            ? controller.accountController
            : controller.phoneController,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(color: Color(0xFFCBCBCB)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13),
            borderSide: const BorderSide(color: Color(0xFFCBCBCB)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13),
            borderSide: const BorderSide(color: Color(0xFFCBCBCB), width: 2),
          ),
        ),
      ),
    );
  }
}
