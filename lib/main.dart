import 'package:advanced_docdoc_flutter/core/di/dependency_injection.dart';
import 'package:flutter/material.dart';
import 'package:advanced_docdoc_flutter/core/routing/app_router.dart';
import 'package:advanced_docdoc_flutter/doc_app.dart';

void main() async {
  await setupGetit();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}

//I create development branch
