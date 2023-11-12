// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:easy_localization/easy_localization.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/theme/custom_button_style.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/ui/shared/cami_app_bar.dart';
import '/ui/shared/cami_app_footer.dart';
import '/widgets/custom_checkbox_button.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_outlined_button.dart';
import '/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class LogInScreen extends StatelessWidget {
  LogInScreen({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  bool saveUsername = false;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: const CamiAppBar(),
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 29.h),
                Text('카미'.tr(), style: textTheme.displaySmall),
                SizedBox(height: 18.h),
                Text('반려동물의 마음을 읽다'.tr(),
                    style: CustomTextStyles.titleLargeGray60001),
                SizedBox(height: 82.h),
                _buildUsernameField(context),
                SizedBox(height: 8.h),
                _buildPasswordField(context),
                SizedBox(height: 10.h),
                _buildLoginOptions(context),
                SizedBox(height: 43.h),
                _buildLoginButton(context),
                SizedBox(height: 8.h),
                _buildEmailSignUpButton(context),
                SizedBox(height: 49.h),
                _buildEasyLogin(context),
                SizedBox(height: 20.h),
                _buildKakaoStartButton(context),
                SizedBox(height: 128.h),
                const CamiAppFooter(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Username TextFormField Widget
  Widget _buildUsernameField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: CustomTextFormField(
        controller: usernameController,
      ),
    );
  }

  /// Password TextFormField Widget
  Widget _buildPasswordField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: CustomTextFormField(
        controller: passwordController,
        textInputAction: TextInputAction.done,
        obscureText: true,
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginOptions(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.w,
        right: 23.w,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomCheckboxButton(
            text: '아이디 저장'.tr(),
            value: saveUsername,
            onChange: (value) {
              saveUsername = value;
            },
          ),
          TextButton(
            child: Text('비밀번호 재설정'.tr(),
                style: CustomTextStyles.bodySmallGray60001),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  /// Sign in
  Widget _buildLoginButton(BuildContext context) {
    return CustomElevatedButton(
      text: '로그인'.tr(),
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      buttonStyle: CustomButtonStyles.fillBlack,
    );
  }

  /// E-mail Sign Up
  Widget _buildEmailSignUpButton(BuildContext context) {
    return CustomOutlinedButton(
      height: 42.h,
      text: '이메일 회원가입'.tr(),
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      buttonStyle: CustomButtonStyles.outlineGray,
      buttonTextStyle: CustomTextStyles.bodyMediumGray800,
    );
  }

  /// Easy sign-in
  Widget _buildEasyLogin(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 9.h,
              bottom: 7.h,
            ),
            child: SizedBox(
              width: 133.w,
              child: Divider(color: appTheme.blueGray300),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.w),
            child: Text('간편 로그인'.tr(),
                style: CustomTextStyles.bodySmallBluegray300),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 9.h,
              bottom: 7.h,
            ),
            child: SizedBox(
              width: 154.w,
              child: Divider(
                color: appTheme.blueGray300,
                indent: 21.w,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Starting with Kakao
  Widget _buildKakaoStartButton(BuildContext context) {
    return CustomElevatedButton(
      text: '카카오로 시작하기'.tr(),
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      buttonStyle: CustomButtonStyles.fillPrimary,
      buttonTextStyle: CustomTextStyles.bodyMediumOnErrorContainer,
    );
  }
}
