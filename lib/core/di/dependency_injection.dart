import 'package:advanced_docdoc_flutter/core/networking/api_service.dart';
import 'package:advanced_docdoc_flutter/core/networking/dio_factory.dart';
import 'package:advanced_docdoc_flutter/features/login/data/repos/login_repo.dart';
import 'package:advanced_docdoc_flutter/features/login/logic/cubit/login_cubit.dart';
import 'package:advanced_docdoc_flutter/features/sign_up/data/repos/sign_up_repo.dart';
import 'package:advanced_docdoc_flutter/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetit() async {
  //Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  //login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
  //LazySingleton will create the obj just once.
  //Factory will create new obj everytime I need it.
  // m3 al cubit LazySingleton will throw error Cann't emit new state after state close.& you will not find (x) in cubit if it was disposed or distroyed because it was a singleton.

  // signup
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));
}
