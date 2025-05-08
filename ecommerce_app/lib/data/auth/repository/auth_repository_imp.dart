import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/data/auth/models/user_creation_req.dart';
import 'package:ecommerce_app/data/auth/models/user_signin_req.dart';
import 'package:ecommerce_app/data/auth/source/auth_firebase_service.dart';
import 'package:ecommerce_app/domain/auth/repository/auth.dart';
import 'package:ecommerce_app/service_locator.dart';

class AuthRepositoryImp extends AuthRepository {
  @override
  Future<Either> signup(UserCreationReq user) async {
    return await sl<AuthFirebaseService>().signup(user);
  }
  
  @override
  Future<Either> getAges() async {
    return await sl<AuthFirebaseService>().getAges();
  }

  @override
  Future<Either> signin(UserSigninReg user) async{
   return await sl<AuthFirebaseService>().signin(user);
  }

}