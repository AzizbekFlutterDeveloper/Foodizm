import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodizm/screens/login_page.dart/_bloc/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
}