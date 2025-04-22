import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/usecase/usecase.dart';
import 'package:ecommerce_app/domain/auth/repository/auth.dart';
import 'package:ecommerce_app/service_locator.dart';

class GetAgesUsecase implements Usecase<Either,dynamic> {
  @override
  Future<Either> call({dynamic params}) async{
    return await sl<AuthRepository>().getAges();
  }

}