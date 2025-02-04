import 'package:advanced_docdoc_flutter/core/networking/api_service.dart';
import 'package:advanced_docdoc_flutter/core/networking/dio_factory.dart';
import 'package:advanced_docdoc_flutter/features/login/data/repos/login_repo.dart';
import 'package:advanced_docdoc_flutter/features/login/logic/cubit/login_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetit() async {
  //Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  //login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));
}
