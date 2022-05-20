import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodizm/screens/home_page/_bloc/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
}