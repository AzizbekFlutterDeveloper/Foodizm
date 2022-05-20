import 'package:flutter/material.dart';
import 'package:foodizm/screens/login_page.dart/order_page.dart';
import 'package:foodizm/screens/login_page.dart/phone_page.dart';
import 'package:foodizm/screens/login_page.dart/splash_page.dart';

class Routes{
  Route? onGenerateRoute(RouteSettings settings){
    final args = settings.arguments;
    switch (settings.name) {
      case '/splash':
        return MaterialPageRoute(builder: (context) =>const SplashPage(),);
      case '/order':
        return MaterialPageRoute(builder: (context) =>const OrderPage(),);
      case '/phone':
        return MaterialPageRoute(builder: (context) =>const PhonePage(),);
      default:
        return null;
    } 
  }
}