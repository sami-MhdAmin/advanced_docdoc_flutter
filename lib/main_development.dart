import 'package:advanced_docdoc_flutter/core/di/dependency_injection.dart';
import 'package:flutter/material.dart';
import 'package:advanced_docdoc_flutter/core/routing/app_router.dart';
import 'package:advanced_docdoc_flutter/doc_app.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  setupGetit();
  //To fix texts being hidden bug in flutter_screenUtils in release mode.
  await ScreenUtil.ensureScreenSize();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
