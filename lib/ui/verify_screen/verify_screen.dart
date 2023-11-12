// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:go_router/go_router.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/localization/app_localization.dart';
import '/routes/app_routes.dart';
import '/theme/custom_button_style.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/ui/shared/cami_app_bar.dart';
import '/ui/shared/cami_app_footer.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_text_form_field.dart';

class VerifyScreen extends StatelessWidget {
  VerifyScreen({super.key});

  final editTextController = TextEditingController();

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
                SizedBox(height: 79.h),
                Text('회원가입'.tr, style: textTheme.displaySmall),
                SizedBox(height: 15.h),
                Container(
                  width: 338.w,
                  margin: EdgeInsets.only(left: 26.w, right: 27.w),
                  child: Text(
                    '회원가입 및 서비스 이용 시 사용할 휴대폰의 본인확인이 필요합니다.'.tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.bodyMediumGray60001
                        .copyWith(height: 1.43),
                  ),
                ),
                SizedBox(height: 63.h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 101.w),
                    child: Text('본인 인증'.tr, style: textTheme.bodyLarge),
                  ),
                ),
                SizedBox(height: 8.h),
                CustomTextFormField(
                    width: 191.w,
                    controller: editTextController,
                    textInputAction: TextInputAction.done),
                SizedBox(height: 32.h),
                CustomElevatedButton(
                    width: 191.w,
                    text: '인증번호 받기'.tr,
                    buttonStyle: CustomButtonStyles.fillBlack),
                SizedBox(height: 128.h),
                const CamiAppFooter()
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onTapTxtWidget(BuildContext context) {
    // TODO: implement Actions
  }

  /// Navigates to the faqScreen when the action is triggered.
  void onTapTxtWidget1(BuildContext context) {
    context.go(AppRoutes.faqScreen);
  }

  /// Navigates to the contactUsRegisterScreen when the action is triggered.
  void onTapTxtWidget2(BuildContext context) {
    context.go(AppRoutes.contactUsRegisterScreen);
  }
}
