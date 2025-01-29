import 'package:advanced_docdoc_flutter/core/helpers/spacing.dart';
import 'package:advanced_docdoc_flutter/core/theming/styles.dart';
import 'package:advanced_docdoc_flutter/core/widgets/app_text_button.dart';
import 'package:advanced_docdoc_flutter/core/widgets/app_text_form_filed.dart';
import 'package:advanced_docdoc_flutter/features/login/ui/widgets/dont_have_account_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/terms_and_conditions_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKeyEmail = GlobalKey<FormState>();
  final formKeyPassword = GlobalKey<FormState>();
  bool isObsecure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 40.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome Back',
                style: TextStyles.font24BlueBold,
              ),
              verticalSpace(8),
              Text(
                "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                style: TextStyles.font13GrayRegular,
              ),
              verticalSpace(36),
              Form(
                key: formKeyEmail,
                child: AppTextFormFiled(hintText: "Email"),
              ),
              verticalSpace(18),
              Form(
                key: formKeyPassword,
                child: AppTextFormFiled(
                  hintText: "Password",
                  isObscureText: isObsecure,
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        isObsecure = !isObsecure;
                      });
                    },
                    child: Icon(
                        isObsecure ? Icons.visibility_off : Icons.visibility),
                  ),
                ),
              ),
              verticalSpace(24),
              Align(
                //we chose AlignmentDirectional because we will do ar/en languegs
                alignment: AlignmentDirectional.centerEnd,
                child: Text(
                  "Forget password?",
                  style: TextStyles.font13BlueRegular,
                ),
              ),
              verticalSpace(40),
              AppTextButton(
                  buttonText: "Login",
                  textStyle: TextStyles.font16WhiteSemiBold,
                  onPressed: () {}),
              verticalSpace(16),
              const TermsAndConditionsText(),
              verticalSpace(60),
              Align(
                  alignment: Alignment.center,
                  child: const DontHaveAccountText()),
            ],
          ),
        ),
      ),
    ));
  }
}
//comment
