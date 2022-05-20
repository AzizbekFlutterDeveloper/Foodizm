import 'package:cached_network_image/cached_network_image.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodizm/core/constants/color_constanst.dart';
import 'package:foodizm/core/data/list_data.dart';
import 'package:foodizm/core/extension/size_extension.dart';
import 'package:foodizm/screens/home_page/_bloc/home_cubit.dart';
import 'package:foodizm/screens/login_page.dart/_bloc/login_cubit.dart';
import 'package:foodizm/screens/login_page.dart/_bloc/login_state.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {},
        builder: (context, state) {
          return _myScaffold(context);
        },
      ),
    );
  }

  Scaffold _myScaffold(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SizedBox(
            height: context.h,
            width: context.w,
            child: PageView.builder(
              controller: context.watch<LoginCubit>().pageController,
              itemCount: 3,
              onPageChanged: (v){
                context.read<LoginCubit>().pageView(v);
              },
              itemBuilder: (context, index) {
                return CachedNetworkImage(
                  imageUrl:
                      order[index]['img'],
                  fit: BoxFit.cover,
                );
              },
            ),
          ),
          Positioned(
            child: Container(
              height: context.h * 0.33,
              width: context.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                    top: Radius.circular(context.h * 0.08)),
                color: ConstColor.white,
              ),
              child: Column(
                children: [
                  SizedBox(height: context.h * 0.05),
                  Text(
                    order[context.watch<LoginCubit>().pageIndex]['text1'],
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: context.w * 0.1,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(height: context.h * 0.013),
                  Text(
                    order[context.watch<LoginCubit>().pageIndex]['text2'],
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: context.w * 0.09,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: context.h * 0.017,
                  ),
                  Text(
                    order[context.watch<LoginCubit>().pageIndex]['text3'],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey.shade800,
                      fontSize: context.w * 0.06,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: context.h * 0.05),
                  Row(
                    children: [
                      SizedBox(width: context.w * 0.41),
                      SmoothPageIndicator(
                        controller: context.watch<LoginCubit>().pageController,
                        count: 3,
                        effect: SwapEffect(
                          activeDotColor: ConstColor.yellow,
                        ), // your preferred effect
                        onDotClicked: (index) {},
                      ),
                      SizedBox(width: context.w * 0.2),
                      GestureDetector(
                        child: Chip(
                          label: Text(
                            " Next ",
                            style: TextStyle(
                              color: ConstColor.white,
                              fontSize: context.w * 0.04,
                            ),
                          ),
                          backgroundColor: context.watch<LoginCubit>().pageIndex ==2? ConstColor.yellow : Colors.grey,
                        ),
                        onTap:context.watch<LoginCubit>().pageIndex ==2? (){
                          Navigator.pushNamedAndRemoveUntil(context, '/phone', (route) => false);
                        }:(){},
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
