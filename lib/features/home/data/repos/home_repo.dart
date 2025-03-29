import 'package:advanced_docdoc_flutter/core/networking/api_error_handler.dart';
import 'package:advanced_docdoc_flutter/core/networking/api_result.dart';
import 'package:advanced_docdoc_flutter/features/home/data/apis/home_api_service.dart';
import 'package:advanced_docdoc_flutter/features/home/data/models/specializations_response_model.dart';

class HomeRepo {
  final HomeApiService _homeApiService;

  HomeRepo(this._homeApiService);

  Future<ApiResult<SpecializationsResponseModel>> getSpecialization() async {
    try {
      final respone = await _homeApiService.getSpecialization();
      return ApiResult.success(respone);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
