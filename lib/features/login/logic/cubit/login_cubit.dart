import 'package:advanced_docdoc_flutter/features/login/data/models/login_request_body.dart';
import 'package:advanced_docdoc_flutter/features/login/data/repos/login_repo.dart';
import 'package:advanced_docdoc_flutter/features/login/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(LoginState.initial());

  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void emitLoginStates(LoginRequestBody loginRequestBody) async {
    emit(LoginState.loading());

    final response = await _loginRepo.login(loginRequestBody);
    //the next line //when() method is from Freezed package
    response.when(
      success: (loginResponse) {
        emit(LoginState.success(loginResponse));
      },
      failure: (error) {
        emit(LoginState.error(
            error: error.apiErrorModel.message ?? 'failure happend'));
      },
    );
  }
}
