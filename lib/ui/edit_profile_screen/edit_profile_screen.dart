// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:go_router/go_router.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/localization/app_localization.dart';
import '/routes/app_routes.dart';
import '/routes/go_extensions.dart';
import '/theme/app_decoration.dart';
import '/theme/custom_button_style.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/ui/shared/cami_app_bar.dart';
import '/ui/shared/cami_app_footer.dart';
import '/widgets/custom_drop_down_form_field.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_image_view.dart';
import '/widgets/custom_outlined_button.dart';
import '/widgets/custom_radio_button.dart';
import '/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({super.key});

  final editTextController = TextEditingController();
  final editTextWithButton = TextEditingController();
  final editTextController1 = TextEditingController();
  final editTextController2 = TextEditingController();
  final editTextController3 = TextEditingController();
  final editTextController4 = TextEditingController();

  final dropdownItemList0 = ['Item One', 'Item Two', 'Item Three'];
  final dropdownItemList1 = ['Item One', 'Item Two', 'Item Three'];
  final dropdownItemList2 = ['Item One', 'Item Two', 'Item Three'];
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
          width: double.maxFinite,
          child: SingleChildScrollView(
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
                          }),
                      Padding(
                          padding: EdgeInsets.only(left: 124.w),
                          child: Text('정보 수정'.tr,
                              style: CustomTextStyles.bodyLarge18))
                    ],
                  ),
                ),
                SizedBox(height: 17.h),
                _buildImageSelectionRow(context),
                SizedBox(height: 49.h),
                Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: Text('이메일 주소'.tr,
                      style: CustomTextStyles.bodyMediumOnPrimary),
                ),
                SizedBox(height: 9.h),
                _buildEditText(context),
                SizedBox(height: 5.h),
                Container(
                  width: 325.w,
                  margin: EdgeInsets.only(left: 16.w, right: 51.w),
                  child: Text(
                    '※ 이메일은 수정할 수 없습니다. 수정을 원하시는 경우 고객센터로 연락주세요.'.tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmallGray500
                        .copyWith(height: 1.33),
                  ),
                ),
                SizedBox(height: 25.h),
                Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: Text('휴대폰 번호'.tr,
                      style: CustomTextStyles.bodyMediumOnPrimary),
                ),
                SizedBox(height: 9.h),
                _buildEditTextRow(context),
                SizedBox(height: 8.h),
                Align(
                  child: Container(
                    height: 40.h,
                    width: 361.w,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.onError,
                      borderRadius: BorderRadius.circular(8.w),
                    ),
                  ),
                ),
                SizedBox(height: 5.h),
                Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: Text('※ 휴대폰 번호는 인증을 통하여 변경이 가능합니다.'.tr,
                      style: CustomTextStyles.bodySmallGray500),
                ),
                SizedBox(height: 25.h),
                Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: Text('비밀번호 변경'.tr,
                      style: CustomTextStyles.bodyMediumOnPrimary),
                ),
                SizedBox(height: 9.h),
                _buildEditText1(context),
                SizedBox(height: 8.h),
                _buildEditText2(context),
                SizedBox(height: 25.h),
                Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: Text('이름'.tr,
                      style: CustomTextStyles.bodyMediumOnPrimary),
                ),
                SizedBox(height: 9.h),
                _buildEditText3(context),
                SizedBox(height: 25.h),
                Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: Text('닉네임'.tr,
                      style: CustomTextStyles.bodyMediumOnPrimary),
                ),
                SizedBox(height: 9.h),
                _buildEditText4(context),
                SizedBox(height: 25.h),
                Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: Text('생년월일'.tr,
                      style: CustomTextStyles.bodyMediumOnPrimary),
                ),
                SizedBox(height: 9.h),
                _buildDropdownRow(context),
                SizedBox(height: 25.h),
                Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: Text('성별'.tr,
                      style: CustomTextStyles.bodyMediumOnPrimary),
                ),
                SizedBox(height: 9.h),
                _buildRadioGroup(context),
                SizedBox(height: 23.h),
                _buildSaveButton(context),
                SizedBox(height: 8.h),
                _buildDeleteButton(context),
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
  Widget _buildImageSelectionButton(BuildContext context) {
    return CustomElevatedButton(
        width: 121.w,
        text: '이미지 선택하기'.tr,
        buttonStyle: CustomButtonStyles.fillBlue,
        buttonTextStyle: CustomTextStyles.bodyMediumOnErrorContainer);
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
                  Text('프로필 사진을 등록해주세요'.tr,
                      style: CustomTextStyles.bodyMediumBlack900),
                  SizedBox(height: 1.h),
                  SizedBox(
                    width: 156.w,
                    child: Text(
                      '이미지 도용 및 불건전 이미지는 삭제 처리 됩니다.'.tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodySmallGray500
                          .copyWith(height: 1.33),
                    ),
                  ),
                  SizedBox(height: 1.h),
                  SizedBox(
                    width: 145.w,
                    child: Text(
                      '프로필 이미지는 9MB 이하로 선택해 주세요.'.tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodySmallGray500
                          .copyWith(height: 1.33),
                    ),
                  ),
                  SizedBox(height: 16.h),
                  _buildImageSelectionButton(context)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: CustomTextFormField(
          controller: editTextController,
          alignment: Alignment.center,
          borderDecoration: TextFormFieldStyleHelper.fillOnError,
          fillColor: theme.colorScheme.onError),
    );
  }

  /// Section Widget
  Widget _buildEditTextWithButton(BuildContext context) {
    return CustomTextFormField(width: 211.w, controller: editTextWithButton);
  }

  /// Section Widget
  Widget _buildEditTextRow(BuildContext context) {
    return Align(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildEditTextWithButton(context),
            CustomElevatedButton(
                width: 142.w,
                text: '인증번호 받기'.tr,
                margin: EdgeInsets.only(left: 8.w),
                buttonStyle: CustomButtonStyles.fillBlueGray,
                buttonTextStyle: CustomTextStyles.bodyMediumGray60001)
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEditText1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: CustomTextFormField(
          controller: editTextController1, alignment: Alignment.center),
    );
  }

  /// Section Widget
  Widget _buildEditText2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: CustomTextFormField(
          controller: editTextController2, alignment: Alignment.center),
    );
  }

  /// Section Widget
  Widget _buildEditText3(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: CustomTextFormField(
          controller: editTextController3, alignment: Alignment.center),
    );
  }

  /// Section Widget
  Widget _buildEditText4(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: CustomTextFormField(
          controller: editTextController4,
          textInputAction: TextInputAction.done,
          alignment: Alignment.center),
    );
  }

  /// Section Widget
  Widget _buildDropdownRow(BuildContext context) {
    return Align(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
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
              child: Text('년'.tr, style: textTheme.bodyLarge),
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
              child: Text('월'.tr, style: textTheme.bodyLarge),
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
                child: Text('일'.tr, style: textTheme.bodyLarge))
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRadioGroup(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.w),
      child: Row(
        children: [
          CustomRadioButton(
              text: '여성'.tr,
              value: radioList[0],
              groupValue: radioGroup,
              textStyle: textTheme.bodyLarge,
              onChange: (value) {
                radioGroup = value;
              }),
          Padding(
            padding: EdgeInsets.only(left: 74.w),
            child: CustomRadioButton(
              text: '남성'.tr,
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
              text: '기타'.tr,
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

  /// Section Widget
  Widget _buildSaveButton(BuildContext context) {
    return CustomElevatedButton(
        text: '저장'.tr,
        margin: EdgeInsets.symmetric(horizontal: 16.w),
        buttonStyle: CustomButtonStyles.fillBlack,
        alignment: Alignment.center);
  }

  /// Section Widget
  Widget _buildDeleteButton(BuildContext context) {
    return CustomOutlinedButton(
        height: 38.h,
        text: '회원탈퇴'.tr,
        margin: EdgeInsets.symmetric(horizontal: 16.w),
        alignment: Alignment.center);
  }

  /// Navigates back to the previous screen.
  void onTapImgArrowLeft(BuildContext context) {
    context.safePop();
    context.pop();
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
