import 'package:flutter/widgets.dart';
import 'package:vanpool/screens/menu/menu_screen.dart';
import 'package:vanpool/screens/sing_in/sign_in_screen.dart';
import 'package:vanpool/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  MenuScreen.routeName: (context) => MenuScreen(),
};
