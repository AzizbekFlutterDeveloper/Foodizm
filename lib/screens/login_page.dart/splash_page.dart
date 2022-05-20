import 'package:flutter/material.dart';
import 'package:foodizm/core/base/base_view.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();
     Future.delayed(Duration(seconds: 4)).then((value){
      Navigator.pushNamedAndRemoveUntil(context, '/order', (route) => false);
    });
  }
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
