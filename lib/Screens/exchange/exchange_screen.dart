import 'package:banking_app/Screens/exchange/exhange_controller.dart';
import 'package:banking_app/dialogs/app_dialogs.dart';
import 'package:banking_app/utlis/app_colors.dart';
import 'package:banking_app/utlis/app_dimen.dart';
import 'package:banking_app/widgets/currencyinputfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExchangeScreen extends StatelessWidget {
  ExchangeScreen({super.key});
  final controller = Get.put(ExhangeController());

  @override
  Widget build(BuildContext context) {
    AppDimens.init(context);

    return Scaffold(
      body: GetBuilder<ExhangeController>(
        builder: (ctrl) {
          return SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: AppDimens.dimen24),
                child: Column(
                  children: [
                    Row(
                      children: [
                        BackButton(),
                        SizedBox(width: AppDimens.dimen10),
                        Text(
                          "Exchange",
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: AppDimens.dimen30),
                    Image.asset("assets/icons/exchangescreen.png"),
                    SizedBox(height: AppDimens.dimen40),
                    Container(
                      padding: EdgeInsets.all(AppDimens.dimen15),
                      width: AppDimens.screenWidth * 0.85,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 238, 236, 236),
                            blurRadius: AppDimens.dimen30,
                            spreadRadius: AppDimens.dimen10,
                            blurStyle: BlurStyle.outer,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "From",
                            style: TextStyle(color: Color(0xff979797)),
                          ),
                          SizedBox(height: AppDimens.dimen10),
                          CurrencyInputField(
                            controller: ctrl.fromController,
                            onChanged: ctrl.setAmount,
                            onPressed: () {
                              AppDialogs.showCommonDialog(
                                SizedBox(
                                  height: AppDimens.screenHeight * 0.3,
                                  child: ListView.builder(
                                    itemCount: ctrl.allcurrencies.length,
                                    itemBuilder: (context, index) {
                                      final currency =
                                          ctrl.allcurrencies[index];
                                      final isSelected =
                                          currency.code == ctrl.fromCurrency;
                                      return InkWell(
                                        onTap: () {
                                          ctrl.setFromCurrency(currency.code);
                                          Get.back();
                                        },
                                        child: Container(
                                          color: isSelected
                                              ? Colors.blue.withOpacity(0.2)
                                              : null,
                                          padding: EdgeInsets.all(8),
                                          child: Text(
                                            "${currency.code} (${currency.name})",
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              );
                            },
                            selectedCurrency: ctrl.fromCurrency,
                            hint: "Amount",
                            onCurrencyChanged: (_) {},
                          ),
                          SizedBox(height: AppDimens.dimen20),
                          Center(
                            child: GestureDetector(
                              onTap: ctrl.swapCurrencies,
                              child: RotationTransition(
                                turns: Tween(
                                  begin: 0.0,
                                  end: 1.0,
                                ).animate(ctrl.rotationController),
                                child: Image.asset(
                                  "assets/icons/arrow.png",
                                  height: 40,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: AppDimens.dimen20),
                          Text(
                            "To",
                            style: TextStyle(color: Color(0xff979797)),
                          ),
                          SizedBox(height: AppDimens.dimen10),
                          CurrencyInputField(
                            controller: ctrl.toController,
                            onChanged: (_) {},
                            onPressed: () {
                              AppDialogs.showCommonDialog(
                                SizedBox(
                                  height: AppDimens.screenHeight * 0.3,
                                  child: ListView.builder(
                                    itemCount: ctrl.allcurrencies.length,
                                    itemBuilder: (context, index) {
                                      final currency =
                                          ctrl.allcurrencies[index];
                                      final isSelected =
                                          currency.code == ctrl.toCurrency;
                                      return InkWell(
                                        onTap: () {
                                          ctrl.setToCurrency(currency.code);
                                          Get.back();
                                        },
                                        child: Container(
                                          color: isSelected
                                              ? Colors.green.withOpacity(0.2)
                                              : null,
                                          padding: EdgeInsets.all(8),
                                          child: Text(
                                            "${currency.code} (${currency.name})",
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              );
                            },
                            selectedCurrency: ctrl.toCurrency,
                            hint: "Converted",
                            onCurrencyChanged: (_) {},
                          ),
                          SizedBox(height: AppDimens.dimen10),
                          ctrl.toController.text.isEmpty
                              ? SizedBox(height: AppDimens.dimen30)
                              : Row(
                                  children: [
                                    Text(
                                      "Currency rate",
                                      style: TextStyle(
                                        color: AppColors.primaryColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      "1 ${ctrl.fromCurrency} = ${ctrl.initalconversionrate.toStringAsFixed(2)} ${ctrl.toCurrency}",
                                    ),
                                  ],
                                ).paddingSymmetric(
                                  horizontal: AppDimens.dimen6,
                                ),
                          SizedBox(height: AppDimens.dimen20),
                          Center(
                            child: Container(
                              decoration: BoxDecoration(
                                color: ctrl.toController.text.isEmpty
                                    ? Color(0xffF2F1F9)
                                    : AppColors.primaryColor,
                                borderRadius: BorderRadius.circular(18),
                              ),
                              height: AppDimens.dimen50,
                              width: AppDimens.screenWidth * 0.7,
                              child: Center(
                                child: Text(
                                  "Exchange",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.whiteColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
