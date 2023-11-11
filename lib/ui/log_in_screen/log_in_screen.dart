// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/localization/app_localization.dart';
import '/theme/app_decoration.dart';
import '/theme/custom_button_style.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/ui/shared/cami_app_bar.dart';
import '/widgets/custom_checkbox_button.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_image_view.dart';
import '/widgets/custom_outlined_button.dart';
import '/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class LogInScreen extends StatelessWidget {
  LogInScreen({super.key});

  final editTextController = TextEditingController();
  final editTextController1 = TextEditingController();
  bool tf = false;

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
                Text(
                  '카미'.tr,
                  style: theme.textTheme.displaySmall,
                ),
                SizedBox(height: 18.h),
                Text(
                  '반려동물의 마음을 읽다'.tr,
                  style: CustomTextStyles.titleLargeGray60001,
                ),
                SizedBox(height: 82.h),
                _buildEditText(context),
                SizedBox(height: 8.h),
                _buildEditText1(context),
                SizedBox(height: 10.h),
                _buildFrameRow(context),
                SizedBox(height: 43.h),
                _buildLoginButton(context),
                SizedBox(height: 8.h),
                _buildEmailSignUpButton(context),
                SizedBox(height: 49.h),
                _buildFrameRow1(context),
                SizedBox(height: 20.h),
                _buildKakaoStartButton(context),
                SizedBox(height: 128.h),
                _buildFrameColumn1(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: CustomTextFormField(controller: editTextController),
    );
  }

  /// Section Widget
  Widget _buildEditText1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: CustomTextFormField(
        controller: editTextController1,
        textInputAction: TextInputAction.done,
        obscureText: true,
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.w,
        right: 23.w,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomCheckboxButton(
            text: '아이디 저장'.tr,
            value: tf,
            onChange: (value) {
              tf = value;
            },
          ),
          Text(
            '비밀번호 재설정'.tr,
            style: CustomTextStyles.bodySmallGray60001,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginButton(BuildContext context) {
    return CustomElevatedButton(
      text: '로그인'.tr,
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      buttonStyle: CustomButtonStyles.fillBlack,
    );
  }

  /// Section Widget
  Widget _buildEmailSignUpButton(BuildContext context) {
    return CustomOutlinedButton(
      height: 42.h,
      text: '이메일 회원가입'.tr,
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      buttonStyle: CustomButtonStyles.outlineGray,
      buttonTextStyle: CustomTextStyles.bodyMediumGray800,
    );
  }

  /// Section Widget
  Widget _buildFrameRow1(BuildContext context) {
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
            child: Text(
              '간편 로그인'.tr,
              style: CustomTextStyles.bodySmallBluegray300,
            ),
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

  /// Section Widget
  Widget _buildKakaoStartButton(BuildContext context) {
    return CustomElevatedButton(
      text: '카카오로 시작하기'.tr,
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      buttonStyle: CustomButtonStyles.fillPrimary,
      buttonTextStyle: CustomTextStyles.bodyMediumOnErrorContainer,
    );
  }

  /// Section Widget
  Widget _buildFrameColumn1(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 60.h,
      ),
      decoration: AppDecoration.fillOnErrorContainer,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: Assets.svg.imgTicket.path,
            height: 30.h,
            width: 92.w,
          ),
          SizedBox(height: 37.h),
          Row(
            children: [
              Text(
                '공지사항'.tr,
                style: theme.textTheme.bodySmall,
              ),
              Padding(
                padding: EdgeInsets.only(left: 19.w),
                child: Text(
                  '자주 묻는 질문'.tr,
                  style: theme.textTheme.bodySmall,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 21.w),
                child: Text(
                  '이벤트'.tr,
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ],
          ),
          SizedBox(height: 9.h),
          Padding(
            padding: EdgeInsets.only(right: 9.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '고객센터'.tr,
                  style: CustomTextStyles.bodySmallGray500,
                ),
                Text(
                  '이용약관'.tr,
                  style: CustomTextStyles.bodySmallGray500,
                ),
                Text(
                  '개인정보취급방침'.tr,
                  style: CustomTextStyles.bodySmallGray500,
                ),
                Text(
                  '기관 제휴 및 구매 문의'.tr,
                  style: CustomTextStyles.bodySmallGray500,
                ),
              ],
            ),
          ),
          SizedBox(height: 38.h),
          Padding(
            padding: EdgeInsets.only(right: 63.w),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Address'.tr,
                      style: theme.textTheme.bodySmall,
                    ),
                    SizedBox(height: 9.h),
                    Text(
                      '서울시 구로구 디지털로34길 55'.tr,
                      style: theme.textTheme.bodySmall,
                    ),
                    Text(
                      '코오롱싸이언스밸리2차 B101'.tr,
                      style: theme.textTheme.bodySmall,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 27.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Contact'.tr,
                        style: theme.textTheme.bodySmall,
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        'business@cami.kr'.tr,
                        style: theme.textTheme.bodySmall,
                      ),
                      Text(
                        '02-861-6828'.tr,
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 45.h),
          Text(
            '주식회사 카미랩'.tr,
            style: theme.textTheme.bodySmall,
          ),
          Text(
            '대표: 조윤수 | 사업자등록번호 : 539-81-02640'.tr,
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 15.h),
          Text(
            'Copyright ⓒ 2023 CAMI Labs. All rights reserved.'.tr,
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 38.h),
          Row(
            children: [
              CustomImageView(
                imagePath: Assets.images.imgImage.path,
                height: 24.r,
                width: 24.r,
              ),
              CustomImageView(
                imagePath: Assets.images.imgImage.path,
                height: 24.r,
                width: 24.r,
                margin: EdgeInsets.only(left: 16.w),
              ),
              CustomImageView(
                imagePath: Assets.images.imgImage.path,
                height: 24.r,
                width: 24.r,
                margin: EdgeInsets.only(left: 16.w),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
