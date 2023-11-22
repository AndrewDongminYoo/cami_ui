// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

// 🌎 Project imports:
import '/core/utils/media_query.dart';
import '/gen/assets.gen.dart';
import '/routes/app_routes.dart';
import '/routes/go_extensions.dart';
import '/theme/app_decoration.dart';
import '/theme/custom_button_style.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/ui/shared/cami_app_bar.dart';
import '/ui/shared/cami_app_footer.dart';
import '/widgets/custom_date_picker.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_image_view.dart';
import '/widgets/custom_outlined_button.dart';
import '/widgets/custom_radio_button.dart';
import '/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({super.key});

  final usermailField = TextEditingController();
  final verification = TextEditingController();
  final changePassword = TextEditingController();
  final changePassCheck = TextEditingController();
  final usernameField = TextEditingController();
  final nicknameField = TextEditingController();
  final radioList = ['여성', '남성', '기타'];
  String radioGroup = '';

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
                SizedBox(height: 15.h),
                Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: Assets.svg.imgArrowLeft.path,
                        height: 20.r,
                        width: 20.r,
                        margin: EdgeInsets.only(bottom: 6.h),
                        onTap: () {
                          onTapImgArrowLeft(context);
                        },
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 124.w),
                        child: Text(
                          '정보 수정'.tr(),
                          style: textTheme.bodyLarge!.fSize(18),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 17.h),
                _buildImageSelectionRow(context),
                SizedBox(height: 49.h),
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
                    readOnly: true,
                    controller: usermailField,
                    borderDecoration: TextFormFieldStyleHelper.fillOnError,
                    autofillHints: const [AutofillHints.email],
                    textInputType: TextInputType.emailAddress,
                    fillColor: const Color(0xFFE5E5E5),
                  ),
                ),
                SizedBox(height: 5.h),
                Container(
                  width: 325.w,
                  margin: EdgeInsets.only(left: 16.w, right: 51.w),
                  child: Text(
                    '※ 이메일은 수정할 수 없습니다. 수정을 원하시는 경우 고객센터로 연락주세요.'.tr(),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: textTheme.bodySmall!
                        .colored(const Color(0xFFA3A3A3))
                        .tight,
                  ),
                ),
                SizedBox(height: 25.h),
                Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: Text(
                    '휴대폰 번호'.tr(),
                    style:
                        textTheme.bodyMedium!.colored(const Color(0xFF1F2937)),
                  ),
                ),
                SizedBox(height: 9.h),
                _buildOTPFormField(context),
                SizedBox(height: 8.h),
                Container(
                  alignment: Alignment.center,
                  height: 40.h,
                  width: 361.w,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE5E5E5),
                    borderRadius: BorderRadius.circular(8.w),
                  ),
                ),
                SizedBox(height: 5.h),
                Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: Text(
                    '※ 휴대폰 번호는 인증을 통하여 변경이 가능합니다.'.tr(),
                    style:
                        textTheme.bodySmall!.colored(const Color(0xFFA3A3A3)),
                  ),
                ),
                SizedBox(height: 25.h),
                Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: Text(
                    '비밀번호 변경'.tr(),
                    style:
                        textTheme.bodyMedium!.colored(const Color(0xFF1F2937)),
                  ),
                ),
                SizedBox(height: 9.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: CustomTextFormField(
                    hintText: '변경을 원하면 입력해 주세요.',
                    controller: changePassword,
                    autofillHints: const [AutofillHints.newPassword],
                    textInputType: TextInputType.visiblePassword,
                    obscureText: true,
                  ),
                ),
                SizedBox(height: 8.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: CustomTextFormField(
                    hintText: '비밀번호를 재입력해 주세요.',
                    controller: changePassCheck,
                    autofillHints: const [AutofillHints.newPassword],
                    textInputType: TextInputType.visiblePassword,
                    obscureText: true,
                  ),
                ),
                SizedBox(height: 25.h),
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
                SizedBox(height: 25.h),
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
                SizedBox(height: 25.h),
                Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: Text(
                    '생년월일'.tr(),
                    style:
                        textTheme.bodyMedium!.colored(const Color(0xFF1F2937)),
                  ),
                ),
                SizedBox(height: 9.h),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
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
                SizedBox(height: 9.h),
                _buildGenderRadioGroup(context),
                SizedBox(height: 23.h),
                CustomElevatedButton(
                  onPressed: (context) {
                    // TODO: implement onPressed
                  },
                  text: '저장'.tr(),
                  margin: EdgeInsets.symmetric(horizontal: 16.w),
                  buttonStyle: CustomButtonStyles.fillBlack,
                  alignment: Alignment.center,
                ),
                SizedBox(height: 8.h),
                CustomOutlinedButton(
                  onPressed: (context) {
                    // TODO: implement onPressed
                  },
                  height: 38.h,
                  text: '회원탈퇴'.tr(),
                  margin: EdgeInsets.symmetric(horizontal: 16.w),
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
  Widget _buildImageSelectionButton(BuildContext context) {
    return CustomElevatedButton(
      onPressed: (context) {
        // TODO: implement onPressed
      },
      width: 121.w,
      text: '이미지 선택하기'.tr(),
      buttonStyle: CustomButtonStyles.fillBlue,
      buttonTextStyle: textTheme.bodyMedium!.colored(const Color(0xFF171717)),
    );
  }

  /// Section Widget
  Widget _buildImageSelectionRow(BuildContext context) {
    return Align(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16.w),
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 16.h),
        decoration: AppDecoration.fillGray50
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: Assets.images.imgUserProfile.path,
              height: 130.h,
              width: 116.w,
              margin: EdgeInsets.only(bottom: 42.h),
            ),
            Padding(
              padding: EdgeInsets.only(top: 11.h, right: 18.w, bottom: 11.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('프로필 사진을 등록해주세요'.tr(), style: textTheme.bodyMedium),
                  SizedBox(height: 1.h),
                  SizedBox(
                    width: 156.w,
                    child: Text(
                      '이미지 도용 및 불건전 이미지는 삭제 처리 됩니다.'.tr(),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: textTheme.bodySmall!
                          .colored(const Color(0xFFA3A3A3))
                          .tight,
                    ),
                  ),
                  SizedBox(height: 1.h),
                  SizedBox(
                    width: 145.w,
                    child: Text(
                      '프로필 이미지는 9MB 이하로 선택해 주세요.'.tr(),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: textTheme.bodySmall!
                          .colored(const Color(0xFFA3A3A3))
                          .tight,
                    ),
                  ),
                  SizedBox(height: 16.h),
                  _buildImageSelectionButton(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOTPFormField(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTextFormField(
            width: 211.w,
            hintText: '인증번호',
            controller: verification,
            autofillHints: const [AutofillHints.oneTimeCode],
            textInputType: TextInputType.number,
          ),
          CustomElevatedButton(
            onPressed: (context) {
              // TODO: implement onPressed
            },
            width: 142.w,
            text: '인증번호 받기'.tr(),
            margin: EdgeInsets.only(left: 8.w),
            buttonStyle: CustomButtonStyles.fillBlueGray,
            buttonTextStyle:
                textTheme.bodyMedium!.colored(const Color(0xFF6B7280)),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildGenderRadioGroup(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.w),
      child: Row(
        children: [
          CustomRadioButton(
            text: '여성'.tr(),
            value: radioList[0],
            groupValue: radioGroup,
            textStyle: textTheme.bodyLarge,
            onChange: (value) {
              radioGroup = value;
            },
          ),
          Padding(
            padding: EdgeInsets.only(left: 74.w),
            child: CustomRadioButton(
              text: '남성'.tr(),
              value: radioList[1],
              groupValue: radioGroup,
              textStyle: textTheme.bodyLarge,
              onChange: (value) {
                radioGroup = value;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 74.w),
            child: CustomRadioButton(
              text: '기타'.tr(),
              value: radioList[2],
              groupValue: radioGroup,
              textStyle: textTheme.bodyLarge,
              onChange: (value) {
                radioGroup = value;
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Navigates back to the previous screen.
  void onTapImgArrowLeft(BuildContext context) {
    context.safePop();
  }

  /// Navigates to the faqScreen when the action is triggered.
  void onTapTxtWidget1(BuildContext context) {
    context.pushNamed(AppRoutes.faqScreen);
  }

  /// Navigates to the contactUsRegisterScreen when the action is triggered.
  void onTapTxtWidget2(BuildContext context) {
    context.pushNamed(AppRoutes.contactUsRegisterScreen);
  }
}
