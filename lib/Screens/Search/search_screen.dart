import 'package:banking_app/Screens/Search/searchscreen_controller.dart';
import 'package:banking_app/utlis/app_colors.dart';
import 'package:banking_app/utlis/app_dimen.dart';
import 'package:banking_app/widgets/searchwidget/searchwidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});
  final SearchscreenController controller = Get.put(SearchscreenController());
  @override
  Widget build(BuildContext context) {
    AppDimens.init(context);
    Get.put(SearchController());
    return Scaffold(
      body: GetBuilder<SearchscreenController>(
        builder: (_) {
          return Container(
            height: AppDimens.screenHeight,
            width: AppDimens.screenWidth,
            color: AppColors.whiteColor,
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Search",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: AppDimens.dimen20),

                  Wrap(
                    runSpacing: AppDimens.dimen40,

                    children: controller.searchitem.map((item) {
                      return Searchwidget(
                        heading: item.heading,
                        subheading: item.subheading,
                        icon: item.icon,
                        onTap: item.onTap,
                      );
                    }).toList(),
                  ),
                ],
              ).paddingSymmetric(horizontal: AppDimens.dimen40),
            ),
          );
        },
      ),
    );
  }
}
