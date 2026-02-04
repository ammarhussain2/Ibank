import 'package:banking_app/Screens/home/home_controller.dart';
import 'package:banking_app/utlis/app_colors.dart';
import 'package:banking_app/utlis/app_dimen.dart';
import 'package:banking_app/widgets/homecard/homecard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    AppDimens.init(context);
    Get.put(HomeController());
    return Scaffold(
      body: GetBuilder<HomeController>(
        builder: (_) {
          return Container(
            height: AppDimens.screenHeight,
            width: AppDimens.screenWidth,
            color: AppColors.primaryColor,
            child: Column(
              children: [
                SizedBox(height: AppDimens.dimen70),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppDimens.dimen20),
                  child: Row(
                    children: [
                      CircleAvatar(
                        child: Image.asset("assets/images/profilepic.png"),
                      ),
                      SizedBox(width: AppDimens.dimen24),
                      const Text(
                        "Hi, Push Puttichai",
                        style: TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset("assets/icons/notification.png"),
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
                    child: Column(
                      children: [
                        SizedBox(
                          height: AppDimens.dimen330,
                          width: AppDimens.screenWidth,
                          child: Image.asset("assets/images/card.png"),
                        ),
                        Wrap(
                          spacing: 10,
                          runSpacing: 10,
                          children: controller.cardItems.map((card) {
                            return Homecard(
                              name: card.name,
                              icon: card.icon,
                              onTap: card.onTap,
                            );
                          }).toList(),
                        ),
                      ],
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
