// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:easy_localization/easy_localization.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/theme/app_decoration.dart';
import '/theme/custom_button_style.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/ui/shared/cami_app_bar.dart';
import '/ui/shared/cami_app_footer.dart';
import '/widgets/custom_drop_down_form_field.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_image_view.dart';
import '/widgets/custom_radio_button.dart';
import '/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class SignUpFormScreen extends StatelessWidget {
  SignUpFormScreen({super.key});

  final appNavBarController = TextEditingController();
  final editText1Controller = TextEditingController();
  final editText2Controller = TextEditingController();
  final editText3Controller = TextEditingController();
  final editText4Controller = TextEditingController();
  final dropdownItemList0 = ['Item One', 'Item Two', 'Item Three'];
  final dropdownItemList1 = ['Item One', 'Item Two', 'Item Three'];
  final dropdownItemList2 = ['Item One', 'Item Two', 'Item Three'];

  String genderRadioGroup = '';
  List<String> radioList = ['여성', '남성', '기타'];

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
            primary: true,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 79.h),
                Align(
                  child: Text('회원가입'.tr(), style: textTheme.displaySmall),
                ),
                SizedBox(height: 15.h),
                Align(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 43.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('환영합니다!'.tr(),
                            style: CustomTextStyles.bodyMediumGray60001),
                        Padding(
                          padding: EdgeInsets.only(left: 4.w),
                          child: Text('CAMI',
                              style: CustomTextStyles.bodyMediumGray60001),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 1.w),
                          child: Text('는 여러분들을 기다리고 있습니다!'.tr(),
                              style: CustomTextStyles.bodyMediumGray60001),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 64.h),
                Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: Text('이메일 주소'.tr(),
                      style: CustomTextStyles.bodyMediumOnPrimary),
                ),
                SizedBox(height: 9.h),
                _buildAppNavBar(context),
                SizedBox(height: 33.h),
                Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: Text('비밀번호'.tr(),
                      style: CustomTextStyles.bodyMediumOnPrimary),
                ),
                SizedBox(height: 9.h),
                _buildEditText1(context),
                SizedBox(height: 33.h),
                Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: Text('비밀번호 확인'.tr(),
                      style: CustomTextStyles.bodyMediumOnPrimary),
                ),
                SizedBox(height: 9.h),
                _buildEditText2(context),
                SizedBox(height: 33.h),
                Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: Text('이름'.tr(),
                      style: CustomTextStyles.bodyMediumOnPrimary),
                ),
                SizedBox(height: 9.h),
                _buildEditText3(context),
                SizedBox(height: 33.h),
                Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: Text('닉네임'.tr(),
                      style: CustomTextStyles.bodyMediumOnPrimary),
                ),
                SizedBox(height: 9.h),
                _buildEditText4(context),
                SizedBox(height: 33.h),
                Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: Text('생년월일'.tr(),
                      style: CustomTextStyles.bodyMediumOnPrimary),
                ),
                SizedBox(height: 9.h),
                _buildDateTimeField(context),
                SizedBox(height: 25.h),
                Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: Text('성별'.tr(),
                      style: CustomTextStyles.bodyMediumOnPrimary),
                ),
                SizedBox(height: 3.h),
                _buildGenderRadioGroup(context),
                SizedBox(height: 33.h),
                Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: Row(
                    children: [
                      Container(
                        height: 16.r,
                        width: 16.r,
                        margin: EdgeInsets.only(top: 4.h, bottom: 3.h),
                        padding: EdgeInsets.symmetric(
                            horizontal: 3.w, vertical: 4.h),
                        decoration: AppDecoration.fillBlue.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder2),
                        child: CustomImageView(
                            imagePath: Assets.svg.imgVectorWhiteA7007x8.path,
                            height: 7.h,
                            width: 8.w,
                            alignment: Alignment.center),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.w),
                        child: Text('[필수]'.tr(), style: textTheme.bodyLarge),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 7.w),
                        child: Text('이용약관'.tr(),
                            style: CustomTextStyles.bodyLargeIndigo400),
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 3.w),
                          child: Text('동의'.tr(), style: textTheme.bodyLarge))
                    ],
                  ),
                ),
                SizedBox(height: 6.h),
                Padding(
                  padding: EdgeInsets.only(left: 16.w, right: 89.w),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 16.r,
                        width: 16.r,
                        margin: EdgeInsets.only(top: 6.h, bottom: 3.h),
                        padding: EdgeInsets.symmetric(
                            horizontal: 3.w, vertical: 4.h),
                        decoration: AppDecoration.fillBlue.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder2),
                        child: CustomImageView(
                            imagePath: Assets.svg.imgVectorWhiteA7007x8.path,
                            height: 7.h,
                            width: 8.w,
                            alignment: Alignment.center),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.w),
                        child: Text('[필수]'.tr(), style: textTheme.bodyLarge),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 6.w),
                        child: Text('개인정보 취급방침'.tr(),
                            style: CustomTextStyles.bodyLargeIndigo400),
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 2.w),
                          child:
                              Text('에 대한 동의'.tr(), style: textTheme.bodyLarge))
                    ],
                  ),
                ),
                SizedBox(height: 8.h),
                Padding(
                  padding: EdgeInsets.only(left: 16.w, right: 88.w),
                  child: _buildVector(context,
                      messageText: '[선택] 마케팅 정보 수신 동의 - 이메일'.tr()),
                ),
                SizedBox(height: 7.h),
                Padding(
                  padding: EdgeInsets.only(left: 16.w, right: 88.w),
                  child: _buildVector(context,
                      messageText: '[선택] 마케팅 정보 수신 - SMS/MMS'.tr()),
                ),
                SizedBox(height: 32.h),
                CustomElevatedButton(
                    text: '회원 가입'.tr(),
                    margin: EdgeInsets.symmetric(horizontal: 16.w),
                    buttonStyle: CustomButtonStyles.fillBlack,
                    alignment: Alignment.center),
                SizedBox(height: 128.h),
                const CamiAppFooter()
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavBar(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: CustomTextFormField(
          controller: appNavBarController, alignment: Alignment.center),
    );
  }

  /// Section Widget
  Widget _buildEditText1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: CustomTextFormField(
          controller: editText1Controller, alignment: Alignment.center),
    );
  }

  /// Section Widget
  Widget _buildEditText2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: CustomTextFormField(
          controller: editText2Controller, alignment: Alignment.center),
    );
  }

  /// Section Widget
  Widget _buildEditText3(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: CustomTextFormField(
          controller: editText3Controller, alignment: Alignment.center),
    );
  }

  /// Section Widget
  Widget _buildEditText4(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: CustomTextFormField(
          controller: editText4Controller,
          textInputAction: TextInputAction.done,
          alignment: Alignment.center),
    );
  }

  /// Section Widget
  Widget _buildDateTimeField(BuildContext context) {
    return Align(
      child: Padding(
        padding: EdgeInsets.only(left: 13.w, right: 19.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomDropDownFormField(
                width: 91.w,
                icon: Container(
                  padding: EdgeInsets.fromLTRB(30.w, 16.h, 10.w, 16.h),
                  decoration: BoxDecoration(
                    color: appTheme.gray10001,
                    borderRadius: BorderRadius.circular(8.w),
                  ),
                  child: CustomImageView(
                      imagePath: Assets.svg.imgArrowDown.path,
                      height: 8.h,
                      width: 12.w),
                ),
                items: dropdownItemList0,
                onChanged: (value) {}),
            Padding(
              padding: EdgeInsets.only(left: 3.w, top: 7.h, bottom: 8.h),
              child: Text('년'.tr(), style: textTheme.bodyLarge),
            ),
            Padding(
              padding: EdgeInsets.only(left: 17.w),
              child: CustomDropDownFormField(
                width: 91.w,
                icon: Container(
                  padding: EdgeInsets.fromLTRB(30.w, 16.h, 10.w, 16.h),
                  decoration: BoxDecoration(
                    color: appTheme.gray10001,
                    borderRadius: BorderRadius.circular(8.w),
                  ),
                  child: CustomImageView(
                      imagePath: Assets.svg.imgArrowDown.path,
                      height: 8.h,
                      width: 12.w),
                ),
                items: dropdownItemList1,
                onChanged: (value) {},
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 3.w, top: 7.h, bottom: 8.h),
              child: Text('월'.tr(), style: textTheme.bodyLarge),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.w),
              child: CustomDropDownFormField(
                width: 91.w,
                icon: Container(
                  padding: EdgeInsets.fromLTRB(30.w, 16.h, 10.w, 16.h),
                  decoration: BoxDecoration(
                    color: appTheme.gray10001,
                    borderRadius: BorderRadius.circular(8.w),
                  ),
                  child: CustomImageView(
                      imagePath: Assets.svg.imgArrowDown.path,
                      height: 8.h,
                      width: 12.w),
                ),
                items: dropdownItemList2,
                onChanged: (value) {},
              ),
            ),
            Padding(
                padding: EdgeInsets.only(left: 4.w, top: 7.h, bottom: 8.h),
                child: Text('일'.tr(), style: textTheme.bodyLarge))
          ],
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
              groupValue: genderRadioGroup,
              onChange: (value) {
                genderRadioGroup = value;
              }),
          Padding(
            padding: EdgeInsets.only(left: 64.w),
            child: CustomRadioButton(
              text: '남성'.tr(),
              value: radioList[1],
              groupValue: genderRadioGroup,
              onChange: (value) {
                genderRadioGroup = value;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 63.w),
            child: CustomRadioButton(
              text: '기타'.tr(),
              value: radioList[2],
              groupValue: genderRadioGroup,
              onChange: (value) {
                genderRadioGroup = value;
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildVector(
    BuildContext context, {
    required String messageText,
  }) {
    return Row(children: [
      Container(
        height: 16.r,
        width: 16.r,
        margin: EdgeInsets.only(top: 5.h, bottom: 2.h),
        padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 4.h),
        decoration: AppDecoration.fillBlue
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder2),
        child: CustomImageView(
            imagePath: Assets.svg.imgVectorWhiteA7007x8.path,
            height: 7.h,
            width: 8.w,
            alignment: Alignment.center),
      ),
      Padding(
        padding: EdgeInsets.only(left: 20.w),
        child: Text(
          messageText,
          style: textTheme.bodyLarge!.copyWith(color: appTheme.black900),
        ),
      ),
    ]);
  }
}
