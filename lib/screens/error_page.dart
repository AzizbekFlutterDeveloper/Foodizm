import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:foodizm/core/extension/size_extension.dart';
class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset("assets/animation/noInternet.json"),
          Text("no internet".tr(), style: TextStyle(color: Colors.black, fontSize: context.h * 0.051),)
        ],
      ),
    );
  }
}