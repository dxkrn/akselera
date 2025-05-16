import 'package:akselera/app/modules/home/controllers/home_controller.dart';
import 'package:akselera/config/text_config.dart';
import 'package:akselera/config/theme_config.dart';
import 'package:akselera/utils/helpers/path_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

import 'home_view.dart';

class HomeNavView extends GetView<HomeController> {
  const HomeNavView({super.key});

  List<Widget> _buildScreens() {
    return const [
      HomeView(),
      Placeholder(
        child: Center(child: Text('Pesanan')),
      ),
      Placeholder(
        child: Center(child: Text('Promo')),
      ),
      Placeholder(
        child: Center(child: Text('Akun')),
      ),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        contentPadding: 0,
        iconSize: 0,
        textStyle: paragraph1TextStyle.copyWith(fontSize: 0),
        inactiveIcon: Material(
          color: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                setIconPath('icon-home', ImageType.svg),
                height: 24,
              ),
              Text(
                "Beranda",
                style: paragraph3TextStyle.copyWith(fontSize: 10),
              ),
            ],
          ),
        ),
        icon: Material(
          color: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                setIconPath('icon-home-active', ImageType.svg),
                height: 24,
              ),
              Text(
                "Beranda",
                style: paragraph3TextStyle.copyWith(fontSize: 10),
              ),
            ],
          ),
        ),
        title: '',
        activeColorPrimary: primaryUnion,
        inactiveColorPrimary: darkGrey,
      ),
      PersistentBottomNavBarItem(
        contentPadding: 0,
        iconSize: 0,
        textStyle: paragraph1TextStyle.copyWith(fontSize: 0),
        icon: Material(
          color: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                setIconPath('icon-order', ImageType.svg),
                height: 24,
              ),
              Text(
                "Pesanan",
                style: paragraph3TextStyle.copyWith(fontSize: 10),
              ),
            ],
          ),
        ),
        title: '',
        activeColorPrimary: primaryUnion,
        inactiveColorPrimary: darkGrey,
      ),
      PersistentBottomNavBarItem(
        contentPadding: 0,
        iconSize: 0,
        textStyle: paragraph1TextStyle.copyWith(fontSize: 0),
        icon: Material(
          color: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                setIconPath('icon-promo', ImageType.svg),
                height: 24,
              ),
              Text(
                "Promo",
                style: paragraph3TextStyle.copyWith(fontSize: 10),
              ),
            ],
          ),
        ),
        title: '',
        activeColorPrimary: primaryUnion,
        inactiveColorPrimary: darkGrey,
      ),
      PersistentBottomNavBarItem(
        contentPadding: 0,
        iconSize: 0,
        textStyle: paragraph1TextStyle.copyWith(fontSize: 0),
        icon: Material(
          color: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                setIconPath('icon-profile', ImageType.svg),
                height: 24,
              ),
              Text(
                "Akun",
                style: paragraph3TextStyle.copyWith(fontSize: 10),
              ),
            ],
          ),
        ),
        title: '',
        activeColorPrimary: primaryUnion,
        inactiveColorPrimary: darkGrey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      navBarHeight: 64,
      controller: controller.tabController,
      screens: _buildScreens(),
      items: _navBarsItems(),
      navBarStyle: NavBarStyle.style6,
      backgroundColor: Colors.white,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(0),
        colorBehindNavBar: Colors.transparent,
      ),
      padding: const EdgeInsets.symmetric(vertical: 0),
      onItemSelected: (index) {
        controller.changeTab(index);
      },
    );
  }
}
