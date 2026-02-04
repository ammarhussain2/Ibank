import 'package:banking_app/utlis/app_colors.dart';
import 'package:banking_app/utlis/app_dimen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'withdraw_controller.dart';

class WithdrawScreen extends StatelessWidget {
  WithdrawScreen({super.key});

  final WithdrawController controller = Get.put(WithdrawController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: GetBuilder<WithdrawController>(
            builder: (controller) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Header
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
                    child: Image.asset(
                      "assets/images/withdraw.png",
                      height: 150,
                    ),
                  ),

                  const SizedBox(height: 24),

                  _textField("Enter account / Account number"),
                  const SizedBox(height: 16),
                  _textField("Phone number"),

                  const SizedBox(height: 24),

                  Text(
                    "Choose Amount",
                    style: TextStyle(
                      fontSize: AppDimens.dimen16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  const SizedBox(height: 16),

                  /// Amount buttons
                  Wrap(
                    spacing: 12,
                    runSpacing: 12,
                    children: [
                      ...controller.amounts.map(
                        (amount) => _amountButton(context, controller, amount),
                      ),
                      _otherAmountButton(context, controller),
                    ],
                  ),

                  const Spacer(),

                  /// Verify Button
                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(
                      onPressed: controller.moveVerify,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: controller.isVerifyEnabled
                            ? AppColors.primaryColor
                            : Colors.grey.shade300,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      child: const Text(
                        "Verify",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  /// UI widgets only 👇

  Widget _amountButton(
    BuildContext context,
    WithdrawController controller,
    int amount,
  ) {
    return GestureDetector(
      onTap: () => controller.selectAmount(amount),
      child: Container(
        width: (MediaQuery.of(context).size.width - 56) / 3,
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: controller.isSelected(amount)
              ? AppColors.primaryColor
              : Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: controller.isSelected(amount)
                ? AppColors.primaryColor
                : Colors.grey.shade300,
          ),
        ),
        child: Text(
          "\$$amount",
          style: TextStyle(
            color: controller.isSelected(amount) ? Colors.white : Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  Widget _otherAmountButton(
    BuildContext context,
    WithdrawController controller,
  ) {
    return GestureDetector(
      onTap: () => controller.selectAmount(-1),
      child: Container(
        width: (MediaQuery.of(context).size.width - 56) / 3,
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: controller.isSelected(-1)
              ? AppColors.primaryColor
              : Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: controller.isSelected(-1)
                ? AppColors.primaryColor
                : Colors.grey.shade300,
          ),
        ),
        child: Text(
          "Other",
          style: TextStyle(
            color: controller.isSelected(-1) ? Colors.white : Colors.black,
            fontWeight: FontWeight.w600,
          ),
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
