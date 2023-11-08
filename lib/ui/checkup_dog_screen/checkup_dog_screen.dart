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
import '/widgets/app_bar/appbar_title.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_image_view.dart';
import '/widgets/custom_text_form_field.dart';

class CheckupDogScreen extends StatelessWidget {
  CheckupDogScreen({super.key});

  final infoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildFrame(context),
                SizedBox(height: 19.h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.w),
                    child: Text(
                      'msg_dcsi_ii'.tr,
                      style: CustomTextStyles.bodyMediumBlack900,
                    ),
                  ),
                ),
                SizedBox(height: 15.h),
                CustomImageView(
                  imagePath: Assets.images.imgImage15.path,
                  height: 171.h,
                  width: 361.w,
                ),
                SizedBox(height: 18.h),
                _buildButton(context),
                SizedBox(height: 11.h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.w),
                    child: Text(
                      'lbl168'.tr,
                      style: CustomTextStyles.bodyLargeNanumSquareNeo,
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                _buildInfo(context),
                SizedBox(height: 7.h),
                _buildFrame1(context),
                SizedBox(height: 8.h),
                _buildFrame2(context),
                SizedBox(height: 8.h),
                _buildButton1(context),
                SizedBox(height: 48.h),
                _buildFrame3(context),
                SizedBox(height: 24.h),
                CustomImageView(
                  imagePath: Assets.images.imgImage472x361.path,
                  height: 472.h,
                  width: 361.w,
                ),
                CustomImageView(
                  imagePath: Assets.images.imgImage683x361.path,
                  height: 683.h,
                  width: 361.w,
                ),
                SizedBox(height: 24.h),
                CustomImageView(
                  imagePath: Assets.images.imgImage731x361.path,
                  height: 731.h,
                  width: 361.w,
                ),
                CustomImageView(
                  imagePath: Assets.images.imgImage644x361.path,
                  height: 644.h,
                  width: 361.w,
                ),
                CustomImageView(
                  imagePath: Assets.images.imgImage1252x361.path,
                  height: 1252.h,
                  width: 361.w,
                ),
                CustomImageView(
                  imagePath: Assets.images.imgImage1368x361.path,
                  height: 1368.h,
                  width: 361.w,
                ),
                CustomImageView(
                  imagePath: Assets.images.imgImage1087x361.path,
                  height: 1087.h,
                  width: 361.w,
                ),
                CustomImageView(
                  imagePath: Assets.images.imgImage1009x361.path,
                  height: 1009.h,
                  width: 361.w,
                ),
                SizedBox(height: 1.h),
                CustomImageView(
                  imagePath: Assets.images.imgImage1094x361.path,
                  height: 1094.h,
                  width: 361.w,
                ),
                CustomImageView(
                  imagePath: Assets.images.imgImage544x361.path,
                  height: 544.h,
                  width: 361.w,
                ),
                SizedBox(height: 1.h),
                CustomImageView(
                  imagePath: Assets.images.imgImage997x361.path,
                  height: 997.h,
                  width: 361.w,
                ),
                SizedBox(height: 272.h),
                _buildColumn(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: Padding(
        padding: EdgeInsets.only(left: 16.w),
        child: Row(
          children: [
            AppbarTitle(text: 'lbl'.tr),
            AppbarTitle(
              text: 'lbl2'.tr,
              margin: EdgeInsets.only(left: 12.w),
            ),
            AppbarTitle(
              text: 'lbl48'.tr,
              margin: EdgeInsets.only(left: 8.w),
            ),
            AppbarTitle(
              text: 'lbl2'.tr,
              margin: EdgeInsets.only(left: 12.w),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: CustomImageView(
            imagePath: Assets.images.imgAppNavBar.path,
            height: 50.h,
            width: 393.w));
  }

  /// Section Widget
  Widget _buildButton(BuildContext context) {
    return CustomElevatedButton(
      height: 23.h,
      width: 53.w,
      text: 'lbl_dcsi_ii'.tr,
      margin: EdgeInsets.only(left: 16.w),
      buttonTextStyle: CustomTextStyles.bodySmall10,
      alignment: Alignment.centerLeft,
    );
  }

  /// Section Widget
  Widget _buildInfo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.w),
      child: CustomTextFormField(
        width: 109.w,
        controller: infoController,
        hintText: 'lbl_912'.tr,
        textInputAction: TextInputAction.done,
        alignment: Alignment.centerLeft,
        suffix: Container(
          margin: EdgeInsets.fromLTRB(-109.w, 4.h, 30.w, 4.h),
          child: CustomImageView(
            imagePath: Assets.images.imgInfo.path,
            height: 12.h,
            width: 68.w,
          ),
        ),
        suffixConstraints: BoxConstraints(maxHeight: 21.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return Container(
      width: 361.w,
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      padding: EdgeInsets.symmetric(
        horizontal: 36.w,
        vertical: 15.h,
      ),
      decoration: AppDecoration.fillGray
          .copyWith(borderRadius: BorderRadiusStyle.circleBorder12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'lbl5'.tr,
                style: theme.textTheme.bodyMedium,
              ),
              Padding(
                padding: EdgeInsets.only(left: 41.w),
                child: Text(
                  'lbl_1072'.tr,
                  style: CustomTextStyles.bodyMediumGray800,
                ),
              ),
            ],
          ),
          SizedBox(height: 3.h),
          Row(
            children: [
              Text(
                'lbl6'.tr,
                style: theme.textTheme.bodyMedium,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.w),
                child: Text(
                  'lbl_202'.tr,
                  style: CustomTextStyles.bodyMediumGray800,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 85.w,
            decoration: AppDecoration.fillGray
                .copyWith(borderRadius: BorderRadiusStyle.circleBorder16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomImageView(
                  imagePath: Assets.svg.imgFrameBlack900.path,
                  height: 32.r,
                  width: 32.r,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 4.h,
                    bottom: 3.h,
                  ),
                  child: Text(
                    'lbl_1'.tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                CustomImageView(
                  imagePath: Assets.svg.imgFrameBlack90032x32.path,
                  height: 32.r,
                  width: 32.r,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 4.h,
              bottom: 3.h,
            ),
            child: Text(
              'lbl_12_000'.tr,
              style: theme.textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildButton1(BuildContext context) {
    return CustomElevatedButton(
      text: 'lbl7'.tr,
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      buttonStyle: CustomButtonStyles.fillPrimary,
      buttonTextStyle: CustomTextStyles.bodyMediumOnErrorContainer,
    );
  }

  /// Section Widget
  Widget _buildButton2(BuildContext context) {
    return CustomElevatedButton(
      width: 181.w,
      text: 'lbl8'.tr,
      buttonStyle: CustomButtonStyles.fillOnSecondaryContainer,
    );
  }

  /// Section Widget
  Widget _buildButton3(BuildContext context) {
    return CustomElevatedButton(
      width: 181.w,
      text: 'lbl9'.tr,
      buttonStyle: CustomButtonStyles.fillGrayTL81,
      buttonTextStyle: theme.textTheme.bodyMedium,
    );
  }

  /// Section Widget
  Widget _buildFrame3(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildButton2(context),
          _buildButton3(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumn(BuildContext context) {
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
                'lbl10'.tr,
                style: theme.textTheme.bodySmall,
              ),
              Padding(
                padding: EdgeInsets.only(left: 19.w),
                child: Text(
                  'lbl11'.tr,
                  style: theme.textTheme.bodySmall,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 21.w),
                child: Text(
                  'lbl12'.tr,
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
                  'lbl13'.tr,
                  style: CustomTextStyles.bodySmallGray500,
                ),
                Text(
                  'lbl14'.tr,
                  style: CustomTextStyles.bodySmallGray500,
                ),
                Text(
                  'lbl15'.tr,
                  style: CustomTextStyles.bodySmallGray500,
                ),
                Text(
                  'lbl16'.tr,
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
                      'lbl_address'.tr,
                      style: theme.textTheme.bodySmall,
                    ),
                    SizedBox(height: 9.h),
                    Text(
                      'msg_34'.tr,
                      style: theme.textTheme.bodySmall,
                    ),
                    Text(
                      'msg_2_b101'.tr,
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
                        'lbl_contact'.tr,
                        style: theme.textTheme.bodySmall,
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        'msg_business_cami_kr'.tr,
                        style: theme.textTheme.bodySmall,
                      ),
                      Text(
                        'lbl_02_861_6828'.tr,
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
            'lbl17'.tr,
            style: theme.textTheme.bodySmall,
          ),
          Text(
            'msg'.tr,
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 15.h),
          Text(
            'msg_copyright_2023'.tr,
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 39.h),
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