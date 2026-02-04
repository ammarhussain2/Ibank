import 'package:banking_app/Screens/Search/search_screen.dart';
import 'package:banking_app/Screens/bottomnavbar/bottomnav_Controller.dart';
import 'package:banking_app/Screens/home/Home_screen.dart';
import 'package:banking_app/Screens/profile/profile_screen.dart';
import 'package:banking_app/Screens/setting/setting_screen.dart';
import 'package:banking_app/utlis/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class MainNavScreen extends StatefulWidget {
  const MainNavScreen({super.key});

  @override
  State<MainNavScreen> createState() => _MainNavScreenState();
}

class _MainNavScreenState extends State<MainNavScreen> {
  late PersistentTabController _tabController;
  final BottomNavController controller = Get.put(BottomNavController());

  @override
  void initState() {
    super.initState();
    _tabController = PersistentTabController(initialIndex: 0);
  }

  List<Widget> _buildScreens() {
    return [HomeScreen(), SearchScreen(), ProfileScreen(), SettingScreen()];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Image.asset("assets/icons/filledhome.png", color: Colors.white),
        inactiveIcon: Image.asset(
          "assets/icons/unfilledhome.png",
          color: Color(0xff898989),
        ),
        title: "Home",
        activeColorPrimary: AppColors.primaryColor,
        activeColorSecondary: AppColors.whiteColor,
        inactiveColorPrimary: AppColors.whiteColor,
        textStyle: TextStyle(color: Colors.white),
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset("assets/icons/search.png", color: Colors.white),
        inactiveIcon: Image.asset("assets/icons/search.png"),
        title: "Search",
        activeColorPrimary: AppColors.primaryColor,
        activeColorSecondary: AppColors.whiteColor,
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset("assets/icons/message.png", color: Colors.white),
        inactiveIcon: Image.asset("assets/icons/message.png"),
        title: "Message",
        activeColorPrimary: AppColors.primaryColor,
        activeColorSecondary: AppColors.whiteColor,
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(
          "assets/icons/settingfilled.png",
          color: Colors.white,
        ),
        inactiveIcon: Image.asset("assets/icons/settingunfilled.png"),
        title: "Setting",
        activeColorPrimary: AppColors.primaryColor,
        activeColorSecondary: AppColors.whiteColor,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavController>(
      builder: (_) {
        return PersistentTabView(
          context,
          controller: _tabController,
          screens: _buildScreens(),
          items: _navBarsItems(),
          onItemSelected: (index) {
            controller.changeTab(index);
          },
          animationSettings: NavBarAnimationSettings(
            navBarItemAnimation: ItemAnimationSettings(
              curve: Curves.easeInCirc,
            ),
            screenTransitionAnimation: ScreenTransitionAnimationSettings(
              screenTransitionAnimationType:
                  ScreenTransitionAnimationType.slide,
              animateTabTransition: true,
            ),
          ),
          confineToSafeArea: true,
          backgroundColor: Colors.white,
          navBarStyle: NavBarStyle.style7,
          stateManagement: true,

          handleAndroidBackButtonPress: true,
        );
      },
    );
  }
}
