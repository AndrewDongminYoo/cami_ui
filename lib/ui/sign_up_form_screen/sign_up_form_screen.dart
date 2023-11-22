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
import '/widgets/custom_date_picker.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_radio_button.dart';
import '/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class SignUpFormScreen extends StatelessWidget {
  SignUpFormScreen({super.key});

  final usermailField = TextEditingController();
  final passwordField = TextEditingController();
  final checkPassForm = TextEditingController();
  final usernameField = TextEditingController();
  final nicknameField = TextEditingController();
  final years = <String>[];
  final month = <String>[];
  final dates = <String>[];

  String userGenderField = '';
  List<String> radioList = ['여성', '남성', '기타'];

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 79.h),
                Center(
                  child: Text('회원가입'.tr(), style: textTheme.displaySmall),
                ),
                SizedBox(height: 15.h),
                Container(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '환영합니다!'.tr(),
                        style: textTheme.bodyMedium!
                            .colored(const Color(0xFF6B7280)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.w),
                        child: Text(
                          'CAMI',
                          style: textTheme.bodyMedium!
                              .colored(const Color(0xFF6B7280)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 1.w),
                        child: Text(
                          '는 여러분들을 기다리고 있습니다!'.tr(),
                          style: textTheme.bodyMedium!
                              .colored(const Color(0xFF6B7280)),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 64.h),
                Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: Text(
                    '이메일 주소'.tr(),
                    style:
                        textTheme.bodyMedium!.colored(const Color(0xFF1F2937)),
                  ),
                ),
                SizedBox(height: 9.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: CustomTextFormField(
                    controller: usermailField,
                    autofillHints: const [AutofillHints.newUsername],
                    textInputType: TextInputType.emailAddress,
                  ),
                ),
                SizedBox(height: 33.h),
                Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: Text(
                    '비밀번호'.tr(),
                    style:
                        textTheme.bodyMedium!.colored(const Color(0xFF1F2937)),
                  ),
                ),
                SizedBox(height: 9.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: CustomTextFormField(
                    controller: passwordField,
                    autofillHints: const [AutofillHints.newPassword],
                    textInputType: TextInputType.visiblePassword,
                    obscureText: true,
                  ),
                ),
                SizedBox(height: 33.h),
                Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: Text(
                    '비밀번호 확인'.tr(),
                    style:
                        textTheme.bodyMedium!.colored(const Color(0xFF1F2937)),
                  ),
                ),
                SizedBox(height: 9.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: CustomTextFormField(
                    controller: checkPassForm,
                    autofillHints: const [AutofillHints.newPassword],
                    textInputType: TextInputType.visiblePassword,
                    obscureText: true,
                  ),
                ),
                SizedBox(height: 33.h),
                Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: Text(
                    '이름'.tr(),
                    style:
                        textTheme.bodyMedium!.colored(const Color(0xFF1F2937)),
                  ),
                ),
                SizedBox(height: 9.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: CustomTextFormField(
                    controller: usernameField,
                    autofillHints: const [AutofillHints.newUsername],
                    textInputType: TextInputType.name,
                  ),
                ),
                SizedBox(height: 33.h),
                Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: Text(
                    '닉네임'.tr(),
                    style:
                        textTheme.bodyMedium!.colored(const Color(0xFF1F2937)),
                  ),
                ),
                SizedBox(height: 9.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: CustomTextFormField(
                    controller: nicknameField,
                    textInputType: TextInputType.name,
                    autofillHints: const [AutofillHints.nickname],
                    textInputAction: TextInputAction.done,
                  ),
                ),
                SizedBox(height: 33.h),
                Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: Text(
                    '생년월일'.tr(),
                    style:
                        textTheme.bodyMedium!.colored(const Color(0xFF1F2937)),
                  ),
                ),
                SizedBox(height: 9.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: DropdownDatePicker(),
                ),
                SizedBox(height: 25.h),
                Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: Text(
                    '성별'.tr(),
                    style:
                        textTheme.bodyMedium!.colored(const Color(0xFF1F2937)),
                  ),
                ),
                SizedBox(height: 3.h),
                _buildGenderRadioGroup(context),
                SizedBox(height: 33.h),
                Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.w),
                        child: Text('[필수]'.tr(), style: textTheme.bodyLarge),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 7.w),
                        child: Text(
                          '이용약관'.tr(),
                          style: textTheme.bodyLarge!
                              .colored(const Color(0xFF5079D7)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 3.w),
                        child: Text('동의'.tr(), style: textTheme.bodyLarge),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 6.h),
                Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.w),
                        child: Text('[필수]'.tr(), style: textTheme.bodyLarge),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.w),
                        child: Text(
                          '개인정보 취급방침'.tr(),
                          style: textTheme.bodyLarge!
                              .colored(const Color(0xFF5079D7)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 2.w),
                        child: Text('에 대한 동의'.tr(), style: textTheme.bodyLarge),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8.h),
                Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.w),
                        child: Text(
                          '[선택] 마케팅 정보 수신 동의 - 이메일'.tr(),
                          style: textTheme.bodyLarge,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 7.h),
                Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.w),
                        child: Text(
                          '[선택] 마케팅 정보 수신 - SMS/MMS'.tr(),
                          style: textTheme.bodyLarge,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 32.h),
                CustomElevatedButton(
                  onPressed: (context) {
                    // TODO: implement onPressed
                  },
                  text: '회원 가입'.tr(),
                  margin: EdgeInsets.symmetric(horizontal: 16.w),
                  buttonStyle: CustomButtonStyles.fillBlack,
                  alignment: Alignment.center,
                ),
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
  Widget _buildGenderRadioGroup(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w),
      child: Row(
        children: [
          CustomRadioButton(
            text: '여성'.tr(),
            value: radioList[0],
            groupValue: userGenderField,
            onChange: (value) {
              userGenderField = value;
            },
          ),
          Padding(
            padding: EdgeInsets.only(left: 64.w),
            child: CustomRadioButton(
              text: '남성'.tr(),
              value: radioList[1],
              groupValue: userGenderField,
              onChange: (value) {
                userGenderField = value;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 63.w),
            child: CustomRadioButton(
              text: '기타'.tr(),
              value: radioList[2],
              groupValue: userGenderField,
              onChange: (value) {
                userGenderField = value;
              },
            ),
          ),
        ],
      ),
    );
  }
}
