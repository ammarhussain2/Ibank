import 'package:banking_app/Screens/setting/setting_controller.dart';
import 'package:banking_app/utlis/app_colors.dart';
import 'package:banking_app/utlis/app_dimen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingScreen extends StatelessWidget {
  SettingScreen({super.key});
  final SettingController controller = Get.put(SettingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<SettingController>(
        builder: (controller) {
          return Container(
            height: AppDimens.screenHeight,
            width: AppDimens.screenWidth,
            color: AppColors.primaryColor,
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: AppDimens.screenHeight * 0.69,
                    width: AppDimens.screenWidth,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                    ),
                  ),
                ),
                SafeArea(
                  child: Text(
                    "Setting",
                    style: TextStyle(
                      fontSize: AppDimens.dimen26,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ).paddingSymmetric(horizontal: AppDimens.dimen26),
                ),
                Positioned(
                  top: AppDimens.dimen140,
                  left: 0,
                  right: 0,
                  child: SizedBox(
                    height: AppDimens.dimen130,
                    child: Image.asset("assets/images/profilepic.png"),
                  ),
                ),
                Positioned(
                  top: AppDimens.dimen280,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Text(
                      "Ammar Hussain",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: AppDimens.dimen20,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: AppDimens.dimen350,
                  left: 0,
                  right: 0,
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: controller.settingsOptions.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: AppDimens.dimen26,
                        ),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () =>
                                  controller.settingcall(index, context),
                              child: Row(
                                children: [
                                  Text(
                                    controller.settingsOptions[index],
                                    style: TextStyle(
                                      fontSize: AppDimens.dimen18,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.hintColor,
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: const Color.fromARGB(
                                      255,
                                      179,
                                      180,
                                      182,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 1,
                              color: Color.fromARGB(255, 179, 180, 182),
                            ).paddingOnly(
                              top: AppDimens.dimen15,
                              bottom: AppDimens.dimen15,
                            ),
                          ],
                        ),
                      );
                    },
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
