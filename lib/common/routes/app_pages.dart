import 'package:get/get.dart';
import 'package:wnc_sfcs/page/navigation/index.dart';
import 'package:wnc_sfcs/page/notfound/index.dart';

part 'app_routes.dart';

abstract class AppPages {
  
  static const INITIAL = AppRoutes.Navigation;

  // 路由
  static final routes = [
    // 白名單
    // GetPage(
    //   name: AppRoutes.Login,
    //   page: () => LoginView(),
    //   transition: Transition.downToUp,
    // ),
    GetPage(
      name: AppRoutes.Navigation, 
      page:()=> Navigation()
    )
  ];

  // 404
  static final unknownRoute = GetPage(
    name: AppRoutes.NotFound,
    page: () => NotfoundView(),
  );
}