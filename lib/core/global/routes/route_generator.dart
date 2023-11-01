import 'package:accessories_store/core/global/routes/routes.dart';
import 'package:accessories_store/core/utils/app_string.dart';
import 'package:accessories_store/screens/about_store_screen.dart';
import 'package:accessories_store/screens/categories_screen.dart';
import 'package:accessories_store/screens/chating_screen.dart';
import 'package:accessories_store/screens/check_out_screen.dart';
import 'package:accessories_store/screens/done_screen.dart';
import 'package:accessories_store/screens/enter_information_screen.dart';
import 'package:accessories_store/screens/faild_screen.dart';
import 'package:accessories_store/screens/favorite_screen.dart';
import 'package:accessories_store/screens/forget_password_screen.dart';
import 'package:accessories_store/screens/home_screen.dart';
import 'package:accessories_store/screens/layout_screen.dart';
import 'package:accessories_store/screens/map_screen.dart';
import 'package:accessories_store/screens/my_cart_screen.dart';
import 'package:accessories_store/screens/my_profile_screen.dart';
import 'package:accessories_store/screens/no_return_screen.dart';
import 'package:accessories_store/screens/order_history_screen.dart';
import 'package:accessories_store/screens/return_screen.dart';
import 'package:accessories_store/screens/sign_in_screen.dart';
import 'package:accessories_store/screens/sign_up_screen.dart';
import 'package:accessories_store/screens/start_page_screen.dart';
import 'package:accessories_store/screens/successfuly_pay_screen.dart';
import 'package:accessories_store/screens/verification_screen.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> getRoutes(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.startRoute:
        return MaterialPageRoute(
          builder: (context) => const StartPageScreen(),
        );
      case Routes.signUpRoute:
        return MaterialPageRoute(
          builder: (context) => const SignUpScreen(),
        );
      case Routes.signInRoute:
        return MaterialPageRoute(
          builder: (context) => const SignInScreen(),
        );
      case Routes.forgetPasswordRoute:
        return MaterialPageRoute(
          builder: (context) => const ForgetPasswordScreen(),
        );

      case Routes.verificationRoute:
        return MaterialPageRoute(
          builder: (context) => const VerificationScreen(),
        );
      case Routes.enterInformationRoute:
        return MaterialPageRoute(
          builder: (context) => const EnterTheInformScreen(),
        );
      case Routes.doneRoute:
        return MaterialPageRoute(
          builder: (context) => const DoneScreen(),
        );
      case Routes.layoutRoute:
        return MaterialPageRoute(
          builder: (context) => const LayoutScreen(),
        );
      case Routes.homeRoute:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      case Routes.favoriteRoute:
        return MaterialPageRoute(
          builder: (context) => const FavoriteScreen(),
        );
      case Routes.cartRoute:
        return MaterialPageRoute(
          builder: (context) => const MyCartScreen(),
        );
      case Routes.profileRoute:
        return MaterialPageRoute(
          builder: (context) => const MyProfileScreen(),
        );
      case Routes.orderHistoryRoute:
        return MaterialPageRoute(
          builder: (context) => const OrderHistoryScreen(),
        );
      case Routes.categoriesRoute:
        return MaterialPageRoute(
          builder: (context) => const CategoriesScreen(),
        );
      case Routes.aboutStoreRoute:
        return MaterialPageRoute(
          builder: (context) => const AboutStoreScreen(),
        );
      case Routes.mapRoute:
        return MaterialPageRoute(
          builder: (context) => const MapScreen(),
        );
      case Routes.successfulyPayRoute:
        return MaterialPageRoute(
          builder: (context) => const SuccessfullyPayScreen(),
        );
      case Routes.chattingRoute:
        return MaterialPageRoute(
          builder: (context) => const ChattingScreen(),
        );
      case Routes.noReturnRoute:
        return MaterialPageRoute(
          builder: (context) => const NoReturnScreen(),
        );
      case Routes.returnRoute:
        return MaterialPageRoute(
          builder: (context) => const ReturnScreen(),
        );
      case Routes.checkOutRoute:
        return MaterialPageRoute(
          builder: (context) => const CheckOutScreen(),
        );
      case Routes.faildRoute:
        return MaterialPageRoute(
          builder: (context) => const FaildScreen(),
        );
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (context) => Scaffold(
        appBar: AppBar(),
        body: const Text(AppString.notFound),
      ),
    );
  }
}
