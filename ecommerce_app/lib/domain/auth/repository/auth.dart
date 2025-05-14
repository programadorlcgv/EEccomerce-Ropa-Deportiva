import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/data/auth/models/user_creation_req.dart';
import 'package:ecommerce_app/data/auth/models/user_signin_req.dart';

abstract class AuthRepository {

  Future<Either> signup(UserCreationReq user);
  Future<Either> signin(UserSigninReg user);
  Future<Either> getAges();
  Future<Either> sendPasswordResetEmail(String email);

  

}