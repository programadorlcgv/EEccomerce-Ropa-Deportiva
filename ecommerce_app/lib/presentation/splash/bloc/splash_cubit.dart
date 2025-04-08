
import 'package:ecommerce_app/presentation/splash/bloc/splash_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(DisplaySplash());

  Future<void> appStarted() async {
    await Future.delayed(Duration(seconds: 2));
    emit(
      UnAuthenticaded()
    );
  }


}