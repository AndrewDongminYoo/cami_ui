// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/core/utils/media_query.dart';
import '/theme/custom_button_style.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/ui/shared/cami_app_bar.dart';
import '/ui/shared/cami_app_footer.dart';
import '/widgets/custom_checkbox_button.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_outlined_button.dart';
import '/widgets/custom_text_form_field.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
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
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            primary: true,
            child: Column(
              children: [
                SizedBox(height: 29.h),
                Text('카미'.tr(), style: textTheme.displaySmall),
                SizedBox(height: 18.h),
                Text(
                  '반려동물의 마음을 읽다'.tr(),
                  style: textTheme.titleLarge!
                      .colored(const Color(0xFF6B7280))
                      .fSize(20),
                ),
                SizedBox(height: 82.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: CustomTextFormField(
                    controller: usernameController,
                    autofillHints: const [AutofillHints.email],
                    textInputType: TextInputType.emailAddress,
                  ),
                ),
                SizedBox(height: 8.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: CustomTextFormField(
                    controller: passwordController,
                    autofillHints: const [AutofillHints.password],
                    textInputType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.done,
                    obscureText: true,
                  ),
                ),
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
              setState(() {
                saveUsername = value;
              });
            },
          ),
          TextButton(
            child: Text(
              '비밀번호 재설정'.tr(),
              style: textTheme.bodySmall!.colored(const Color(0xFF6B7280)),
            ),
            onPressed: () {
              // TODO: implement onPressed
            },
          ),
        ],
      ),
    );
  }

  /// Sign in
  Widget _buildLoginButton(BuildContext context) {
    return CustomElevatedButton(
      onPressed: (context) {
        // TODO: implement onPressed
      },
      text: '로그인'.tr(),
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      buttonStyle: CustomButtonStyles.fillBlack,
    );
  }

  /// E-mail Sign Up
  Widget _buildEmailSignUpButton(BuildContext context) {
    return CustomOutlinedButton(
      onPressed: (context) {
        // TODO: implement onPressed
      },
      height: 42.h,
      text: '이메일 회원가입'.tr(),
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      buttonStyle: CustomButtonStyles.outlineGray,
      buttonTextStyle: textTheme.bodyMedium!.colored(const Color(0xFF404040)),
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
          _buildDivider(),
          Padding(
            padding: EdgeInsets.only(left: 16.w),
            child: Text(
              '간편 로그인'.tr(),
              style: textTheme.bodySmall!.colored(const Color(0xFF9CA3AF)),
            ),
          ),
          _buildDivider(),
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return Container(
      padding: EdgeInsets.only(
        top: 9.h,
        bottom: 7.h,
      ),
      width: 133.w,
      child: Divider(
        color: const Color(0xFF9CA3AF),
        indent: 21.w,
      ),
    );
  }

  /// Starting with Kakao
  Widget _buildKakaoStartButton(BuildContext context) {
    return CustomElevatedButton(
      onPressed: (context) {
        // TODO: implement onPressed
      },
      text: '카카오로 시작하기'.tr(),
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      buttonStyle: CustomButtonStyles.fillPrimary,
      buttonTextStyle: textTheme.bodyMedium!.colored(const Color(0xFF171717)),
    );
  }
}
