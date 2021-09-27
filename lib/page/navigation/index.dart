import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wnc_sfcs/common/theme/app_theme.dart';

import 'drawer/Help/index.dart';
import 'drawer/drawerIndex.dart';
import 'drawer/drawer_user_controller.dart';
import 'drawer/home/index.dart';

class DrawerIndexController extends GetxController {
  Widget screenView = const MyHomePage();
  Rx<DrawerIndex> drawerIndex = DrawerIndex.HOME.obs;

  void changeIndex(DrawerIndex drawerIndexdata) {
    if (drawerIndex.value != drawerIndexdata) {
      drawerIndex.value = drawerIndexdata;
      if (drawerIndex.value == DrawerIndex.HOME) {
        screenView = MyHomePage();
      } else if (drawerIndex.value == DrawerIndex.Help) {
        screenView = HelpScreen();
      } else if (drawerIndex.value == DrawerIndex.FeedBack) {
      } else if (drawerIndex.value == DrawerIndex.Invite) {
      } else {
        //do in your way......
      }
    }
  }
}

class Navigation extends StatelessWidget {
  final DrawerIndexController logic = Get.put(DrawerIndexController());
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.nearlyWhite,
      child: SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: AppTheme.nearlyWhite,
            body: Obx(() => DrawerUserController(
                  screenIndex: logic.drawerIndex.value,
                  drawerWidth: MediaQuery.of(context).size.width * 0.75,
                  onDrawerCall: (DrawerIndex drawerIndexdata) {
                    logic.changeIndex(drawerIndexdata);
                  },
                  screenView: logic.screenView,
                ))),
      ),
    );
  }
}