import 'package:flutter/material.dart';
import 'package:foodizm/core/base/base_view.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModal: SplashPage(),
      onPageBuilder: (context, widget) {
        return Scaffold(
          body: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              "assets/images/splash_image.jpg",
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}
