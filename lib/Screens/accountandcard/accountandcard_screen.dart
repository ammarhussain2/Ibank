import 'package:banking_app/Screens/accountandcard/accountandcard_controller.dart';
import 'package:banking_app/utlis/app_colors.dart';
import 'package:banking_app/utlis/app_dimen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountandcardScreen extends StatelessWidget {
  const AccountandcardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(AccountandcardController());
    return GetBuilder<AccountandcardController>(
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            color: Colors.white,
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: AppDimens.dimen24),
                child: Column(
                  children: [
                    Row(
                      children: [
                        BackButton(),
                        Text(
                          "Account and cards",
                          style: TextStyle(
                            fontSize: AppDimens.dimen20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () => controller.changeitem(),

                          child: Container(
                            decoration: BoxDecoration(
                              color: controller.item
                                  ? AppColors.primaryColor
                                  : Color(0xffF2F1F9),
                              borderRadius: BorderRadius.circular(
                                AppDimens.dimen20,
                              ),
                            ),
                            height: AppDimens.dimen60,
                            width: AppDimens.screenWidth * 0.4,
                            child: Center(
                              child: Text(
                                "Account",

                                style: TextStyle(
                                  color: controller.item
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () => controller.changeitem(),
                          child: Container(
                            decoration: BoxDecoration(
                              color: controller.item
                                  ? Color(0xffF2F1F9)
                                  : AppColors.primaryColor,
                              borderRadius: BorderRadius.circular(
                                AppDimens.dimen20,
                              ),
                            ),
                            height: AppDimens.dimen60,
                            width: AppDimens.screenWidth * 0.4,
                            child: Center(
                              child: Text(
                                "Card",
                                style: TextStyle(
                                  color: controller.item
                                      ? Colors.black
                                      : Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: AppDimens.dimen40),
                    controller.item
                        ? Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: AppDimens.dimen100,
                                        child: Image.asset(
                                          "assets/images/profilepic.png",
                                        ),
                                      ),
                                      SizedBox(height: AppDimens.dimen10),
                                      Text(
                                        "Ammar Hussain",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: AppDimens.dimen10),
                              SizedBox(height: AppDimens.dimen10),
                              ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: controller.accounts.length,
                                itemBuilder: (context, index) {
                                  final account = controller.accounts[index];
                                  return Container(
                                    height: AppDimens.screenHeight * 0.15,
                                    width: AppDimens.screenWidth,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(
                                        AppDimens.dimen20,
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: const Color.fromARGB(
                                            255,
                                            96,
                                            96,
                                            96,
                                          ).withOpacity(0.1),
                                          spreadRadius: 1,
                                          blurRadius: 10,
                                          offset: Offset(2, 2),
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              account["title"],
                                              style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: AppDimens.dimen20,
                                              ),
                                            ),
                                            Spacer(),
                                            Text(
                                              account["number"],
                                              style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: AppDimens.dimen20,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: AppDimens.dimen12),
                                        Row(
                                          children: [
                                            Text(
                                              "Available balance",
                                              style: TextStyle(
                                                color: Color(0xff979797),
                                              ),
                                            ),
                                            Spacer(),
                                            Text(
                                              account["balance"],
                                              style: TextStyle(
                                                color: AppColors.primaryColor,
                                                fontSize: AppDimens.dimen16,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: AppDimens.dimen8),
                                        Row(
                                          children: [
                                            Text(
                                              "Branch",
                                              style: TextStyle(
                                                color: Color(0xff979797),
                                              ),
                                            ),
                                            Spacer(),
                                            Text(
                                              account["branch"],
                                              style: TextStyle(
                                                color: AppColors.primaryColor,
                                                fontSize: AppDimens.dimen16,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ).paddingAll(AppDimens.dimen22),
                                  ).paddingOnly(top: AppDimens.dimen10);
                                },
                              ),
                            ],
                          )
                        : Text("This is card"),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
