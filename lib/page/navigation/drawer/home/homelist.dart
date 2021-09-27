import 'package:flutter/widgets.dart';

class HomeList {
  HomeList({
    this.navigateScreen,
    this.imagePath = '',
  });

  Widget? navigateScreen;
  String imagePath;

  static List<HomeList> homeList = [
    // HomeList(
    //   imagePath: 'assets/app_introduction_animation/introduction_animation.png',
    //   navigateScreen: IntroductionAnimationScreen(),
    // ),
    HomeList(
      imagePath: 'assets/images/app/hotel/hotel_booking.png',
      // navigateScreen: HotelHomeScreen(),
    ),
    // HomeList(
    //   imagePath: 'assets/app_fitness/fitness_app.png',
    //   navigateScreen: FitnessAppHomeScreen(),
    // ),
    // HomeList(
    //   imagePath: 'assets/app_design_course/design_course.png',
    //   navigateScreen: DesignCourseHomeScreen(),
    // ),
  ];
}
