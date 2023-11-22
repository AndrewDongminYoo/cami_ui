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
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            primary: true,
            child: Column(
              children: [
                SizedBox(height: 79.h),
                Text('회원가입'.tr(), style: textTheme.displaySmall),
                SizedBox(height: 15.h),
                Container(
                  width: 338.w,
                  margin: EdgeInsets.only(left: 26.w, right: 27.w),
                  child: Text(
                    '회원가입 및 서비스 이용 시 사용할 휴대폰의 본인확인이 필요합니다.'.tr(),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: textTheme.bodyMedium!
                        .colored(const Color(0xFF6B7280))
                        .hugging,
                  ),
                ),
                SizedBox(height: 63.h),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 101.w),
                  child: Text('본인 인증'.tr(), style: textTheme.bodyLarge),
                ),
                SizedBox(height: 8.h),
                CustomTextFormField(
                    width: 191.w,
                    controller: editTextController,
                    textInputAction: TextInputAction.done),
                SizedBox(height: 32.h),
                CustomElevatedButton(
                  onPressed: (context) {
                    // TODO: implement onPressed
                  },
                  width: 191.w,
                  text: '인증번호 받기'.tr(),
                  buttonStyle: CustomButtonStyles.fillBlack,
                ),
                SizedBox(height: 128.h),
                const CamiAppFooter()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
