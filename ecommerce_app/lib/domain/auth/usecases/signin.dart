import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/usecase/usecase.dart';
import 'package:ecommerce_app/data/auth/models/user_signin_req.dart';
import 'package:ecommerce_app/domain/auth/repository/auth.dart';
import 'package:ecommerce_app/service_locator.dart';

class SigninUseCase implements Usecase<Either,UserSigninReg> {
  @override
  Future<Either> call({UserSigninReg ? params}) async{
   return sl<AuthRepository>().signin(params!);
  }
 

}