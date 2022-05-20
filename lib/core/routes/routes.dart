import 'package:flutter/material.dart';
import 'package:foodizm/screens/home_page/home_page.dart';
import 'package:foodizm/screens/login_page.dart/splash_page.dart';

class Routes{
  Route? onGenerateRoute(RouteSettings settings){
    final args = settings.arguments;
    switch (settings.name) {
      case '/splash':
        return MaterialPageRoute(builder: (context) =>const SplashPage(),);
       
      default:
        return null;
    } 
  }
}