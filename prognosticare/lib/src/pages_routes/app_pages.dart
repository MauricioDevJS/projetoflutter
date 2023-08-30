import 'package:get/get.dart';
import 'package:prognosticare/src/pages/auth/view/sign_in_screen.dart';
import 'package:prognosticare/src/pages/base/base_screen.dart';
import 'package:prognosticare/src/pages/splash/splash_screen.dart';

import '../pages/auth/view/sign_up_screen.dart';

abstract class AppPages {
  static final pages = <GetPage>[
    GetPage(
      name: PagesRoutes.signInRoute,
      page: () => SignInScreen(),
    ),
    GetPage(
      name: PagesRoutes.signUpRoute,
      page: () => SignUpScreen(),
    ),
    GetPage(
      name: PagesRoutes.baseScreenRoute,
      page: () => BaseScreen(),
    ),
    GetPage(
      name: PagesRoutes.splashRoute,
      page: () => const SplashScreen(),
    ),
  ];
}

abstract class PagesRoutes {
  static const signInRoute = '/signIn';
  static const signUpRoute = '/signUp';
  static const baseScreenRoute = '/baseScreen';
  static const splashRoute = '/';
}
