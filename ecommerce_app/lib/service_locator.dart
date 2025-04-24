

import 'package:ecommerce_app/data/auth/repository/auth_repository_imp.dart';
import 'package:ecommerce_app/data/auth/source/auth_firebase_service.dart';
import 'package:ecommerce_app/domain/auth/repository/auth.dart';
import 'package:ecommerce_app/domain/auth/usecases/get_ages.dart';
import 'package:ecommerce_app/domain/auth/usecases/signup.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;
 
Future<void> initializeDependecies() async {

    //services

    sl.registerSingleton<AuthFirebaseService>(
        AuthFirebaseServiceImpl()
    );

    //repositories

    sl.registerSingleton<AuthRepository>(
        AuthRepositoryImp()
    );

    //usecases

    sl.registerSingleton<SignupUsecase>(
      SignupUsecase()
    );

    sl.registerSingleton<GetAgesUsecase>(
      GetAgesUsecase()
    );


}