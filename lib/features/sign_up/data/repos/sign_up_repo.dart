import 'package:advanced_docdoc_flutter/core/networking/api_error_handler.dart';
import 'package:advanced_docdoc_flutter/core/networking/api_result.dart';
import 'package:advanced_docdoc_flutter/core/networking/api_service.dart';

import '../models/sign_up_request_body.dart';
import '../models/sign_up_response.dart';

class SignupRepo {
  final ApiService _apiService;

  SignupRepo(this._apiService);

  Future<ApiResult<SignupResponse>> signup(
      SignupRequestBody signupRequestBody) async {
    try {
      final response = await _apiService.signup(signupRequestBody);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ErrorHandler.handle(errro));
    }
  }
}
