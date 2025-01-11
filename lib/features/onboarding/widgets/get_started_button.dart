import 'package:flutter/material.dart';
import 'package:advanced_docdoc_flutter/core/helpers/extenstions.dart';
import 'package:advanced_docdoc_flutter/core/routing/routes.dart';
import 'package:advanced_docdoc_flutter/core/theming/colors.dart';
import 'package:advanced_docdoc_flutter/core/theming/styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(ColorsManager.mainBlue),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        //to give them all the space of their parent
        minimumSize: WidgetStateProperty.all(
          const Size(double.infinity, 52),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
      child: Text('Get Started', style: TextStyles.font16WhiteSemibold),
    );
  }
}
