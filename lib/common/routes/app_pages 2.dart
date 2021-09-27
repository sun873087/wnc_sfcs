import 'package:get/get.dart';
import 'package:wnc_sfcs/home_screen.dart';
import 'package:wnc_sfcs/navigation_home_screen.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = AppRoutes.Navigation;

  static final routes = [
    GetPage(
      name: AppRoutes.Navigation, 
      page:()=> NavigationHomeScreen(),
      transition: Transition.downToUp,
    ),
    GetPage(
      name: AppRoutes.Home, 
      page:()=> MyHomePage()
    ),
  ];

  // // 404
  // static final unknownRoute = GetPage(
  //   name: AppRoutes.NotFound,
  //   page: () => NotfoundView(),
  // );
}