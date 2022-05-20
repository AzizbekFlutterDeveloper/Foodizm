import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodizm/screens/login_page.dart/_bloc/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  late PageController pageController = PageController();
  int pageIndex = 0;

  
  void pageView(v){
    pageIndex = v;
    emit(PageState());
  }
}