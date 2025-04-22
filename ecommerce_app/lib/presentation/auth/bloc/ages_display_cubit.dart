import 'package:ecommerce_app/domain/auth/repository/usecases/get_ages.dart';
import 'package:ecommerce_app/presentation/auth/bloc/ages_display_states.dart';
import 'package:ecommerce_app/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AgesDisplayCubit extends Cubit<AgesDisplayStates> {
  AgesDisplayCubit() : super(AgesLoading());

  void displayAges() async{
    var returnedData = await sl<GetAgesUsecase>().call();

    returnedData.fold(
      (message) {
        emit(
          AgesLoadFalilure(message: message)
        );
      },
      (data) {
        emit(
          AgesLoaded(ages: data)
        );
      }   
    );
  }
}