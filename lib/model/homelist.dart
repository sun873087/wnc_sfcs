import 'package:wnc_sfcs/app_design_course/home_design_course.dart';
import 'package:wnc_sfcs/app_fitness/fitness_app_home_screen.dart';
import 'package:wnc_sfcs/app_hotel_booking/hotel_home_screen.dart';
import 'package:wnc_sfcs/app_introduction_animation/introduction_animation_screen.dart';
import 'package:flutter/widgets.dart';

class HomeList {
  HomeList({
    this.navigateScreen,
    this.imagePath = '',
  });

  Widget? navigateScreen;
  String imagePath;

  static List<HomeList> homeList = [
    HomeList(
      imagePath: 'assets/app_introduction_animation/introduction_animation.png',
      navigateScreen: IntroductionAnimationScreen(),
    ),
    HomeList(
      imagePath: 'assets/app_hotel/hotel_booking.png',
      navigateScreen: HotelHomeScreen(),
    ),
    HomeList(
      imagePath: 'assets/app_fitness/fitness_app.png',
      navigateScreen: FitnessAppHomeScreen(),
    ),
    HomeList(
      imagePath: 'assets/app_design_course/design_course.png',
      navigateScreen: DesignCourseHomeScreen(),
    ),
  ];
}
