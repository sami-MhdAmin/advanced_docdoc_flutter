import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:advanced_docdoc_flutter/core/routing/app_router.dart';
import 'package:advanced_docdoc_flutter/core/routing/routes.dart';
import 'package:advanced_docdoc_flutter/core/theming/colors.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter;
  const DocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Doc App',
        // You can use the library anywhere in the app even in theme
        theme: ThemeData(
            primaryColor: ColorsManager.mainBlue,
            scaffoldBackgroundColor: Colors.white),
        initialRoute: Routes.onBoardingScreen,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
