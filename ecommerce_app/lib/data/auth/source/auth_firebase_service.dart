import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/data/auth/models/user_creation_req.dart';
import 'package:ecommerce_app/data/auth/models/user_signin_req.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthFirebaseService {
  Future<Either> signup(UserCreationReq user);
  Future<Either> signin(UserSigninReg user);
  Future<Either> getAges();

}

class AuthFirebaseServiceImpl extends AuthFirebaseService {
  @override
  Future<Either> signup(UserCreationReq user) async {
    try {

      var returnedData = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: user.email!, 
        password: user.password!
      );

      await FirebaseFirestore.instance.collection('user').doc(
        returnedData.user!.uid
      ).set(
        {
          'firstName' : user.firstName,
          'lastName' : user.lastName,
          'email' : user.email,
          'gener' : user.gender,
          'age' : user.age,
        }
      );

      return const Right(
        'Se registro correctamente'
      );

    } on FirebaseAuthException catch (e) {

      String message = '';
      
      if(e.code == 'weak-password') {
        message = 'La contraseña proporcionada es demasiado débil';
      } else if (e.code == 'email-already-in-use') {
        message = 'Ya existe una cuenta con ese correo electrónico.';
      }

      return  Left(message);
    }
  }
  
  @override
  Future<Either> getAges() async {
    try {

      var returnedData = await FirebaseFirestore.instance.collection('Ages').get();

      return Right(
        returnedData.docs
      );

    } catch (e) {
      return const Left(
        'Por favor intenta de nuevo'
      );
    }
    
  }
  
  @override
  Future<Either> signin(UserSigninReg user) async{
     try {

      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: user.email!, 
        password: user.password!
      );


      return const Right(
        'inicio de sesión exitoso'
      );

    } on FirebaseAuthException catch (e) {

      String message = '';
      
      if(e.code == 'weak-password') {
        message = 'La contraseña proporcionada es demasiado débil';
      } else if (e.code == 'email-already-in-use') {
        message = 'Ya existe una cuenta con ese correo electrónico.';
      }

      return  Left(message);
    }
  }

}