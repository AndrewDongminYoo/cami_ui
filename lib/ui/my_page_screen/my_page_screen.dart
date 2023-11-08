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
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_icon_button.dart';
import '/widgets/custom_image_view.dart';

class MyPageScreen extends StatelessWidget {
  const MyPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: const CamiAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 42.h),
                _buildFrameRow(context),
                SizedBox(height: 48.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 17.w),
                  child: _buildFrame(
                    context,
                    userName: 'lbl119'.tr,
                    userAge: 'lbl120'.tr,
                    userLocation: 'lbl121'.tr,
                    userOccupation: 'lbl122'.tr,
                    userLocation1: 'lbl121'.tr,
                    userPhoneNumber: 'lbl123'.tr,
                    userLocation2: 'lbl121'.tr,
                    userEmail: 'lbl124'.tr,
                    userLocation3: 'lbl121'.tr,
                  ),
                ),
                SizedBox(height: 18.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 17.w),
                  child: _buildFrame(
                    context,
                    userName: 'lbl119'.tr,
                    userAge: 'lbl120'.tr,
                    userLocation: 'lbl121'.tr,
                    userOccupation: 'lbl122'.tr,
                    userLocation1: 'lbl121'.tr,
                    userPhoneNumber: 'lbl99'.tr,
                    userLocation2: 'lbl121'.tr,
                    userEmail: 'lbl124'.tr,
                    userLocation3: 'lbl121'.tr,
                  ),
                ),
                SizedBox(height: 16.h),
                _buildFrameRow2(context),
                SizedBox(height: 36.h),
                Container(
                  width: 361.w,
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.w,
                    vertical: 11.h,
                  ),
                  decoration: AppDecoration.fillPrimary,
                  child: Text(
                    'lbl129'.tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                Container(
                  width: 361.w,
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.w,
                    vertical: 11.h,
                  ),
                  decoration: AppDecoration.fillGray50,
                  child: Text(
                    'lbl'.tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                Container(
                  width: 361.w,
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.w,
                    vertical: 11.h,
                  ),
                  decoration: AppDecoration.fillGray50,
                  child: Text(
                    'lbl115'.tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                Container(
                  width: 361.w,
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.w,
                    vertical: 11.h,
                  ),
                  decoration: AppDecoration.fillGray50,
                  child: Text(
                    'lbl130'.tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                Container(
                  width: 361.w,
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.w,
                    vertical: 11.h,
                  ),
                  decoration: AppDecoration.fillGray50,
                  child: Text(
                    'lbl_1_12'.tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                _buildFrameColumn1(context),
                Container(
                  width: 361.w,
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.w,
                    vertical: 11.h,
                  ),
                  decoration: AppDecoration.fillGray50,
                  child: Text(
                    'lbl131'.tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                Container(
                  width: 361.w,
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.w,
                    vertical: 11.h,
                  ),
                  decoration: AppDecoration.fillGray50,
                  child: Text(
                    'lbl10'.tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                Container(
                  width: 361.w,
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.w,
                    vertical: 11.h,
                  ),
                  decoration: AppDecoration.fillGray50,
                  child: Text(
                    'lbl12'.tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                SizedBox(height: 132.h),
                _buildFrameColumn2(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.w,
        right: 22.w,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: Assets.images.imgImage79x79.path,
            height: 79.r,
            width: 79.r,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 24.w,
                top: 7.h,
                bottom: 7.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 2.h,
                          bottom: 5.h,
                        ),
                        child: Text(
                          'lbl164'.tr,
                          style: CustomTextStyles.bodyLargeGray900,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 9.w),
                        child: CustomIconButton(
                          height: 32.r,
                          width: 32.r,
                          padding: EdgeInsets.all(8.w),
                          child: CustomImageView(
                              imagePath: Assets.svg.imgArrowLeft.path),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 251.w,
                    child: Text(
                      'msg64'.tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodySmallGray500
                          .copyWith(height: 1.33),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameRow2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            decoration: AppDecoration.outlineOnSecondaryContainer
                .copyWith(borderRadius: BorderRadiusStyle.circleBorder12),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: 16.h),
                Text(
                  'lbl125'.tr,
                  style: theme.textTheme.bodyLarge,
                ),
                SizedBox(height: 25.h),
                SizedBox(
                  height: 112.h,
                  width: 149.w,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      CustomImageView(
                        imagePath: Assets.images.imgImage112x138.path,
                        height: 112.h,
                        width: 138.w,
                        alignment: Alignment.center,
                      ),
                      CustomElevatedButton(
                        height: 32.h,
                        width: 149.w,
                        text: 'lbl126'.tr,
                        margin: EdgeInsets.only(bottom: 24.h),
                        buttonStyle: CustomButtonStyles.fillBlue,
                        buttonTextStyle: CustomTextStyles.bodyMediumBlack900,
                        alignment: Alignment.bottomCenter,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 12.w),
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            decoration: AppDecoration.outlineOnSecondaryContainer
                .copyWith(borderRadius: BorderRadiusStyle.circleBorder12),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: 16.h),
                Text(
                  'lbl127'.tr,
                  style: theme.textTheme.bodyLarge,
                ),
                SizedBox(height: 25.h),
                SizedBox(
                  height: 112.h,
                  width: 149.w,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      CustomImageView(
                        imagePath: Assets.images.imgImage10.path,
                        height: 112.h,
                        width: 138.w,
                        alignment: Alignment.center,
                      ),
                      CustomElevatedButton(
                        height: 32.h,
                        width: 149.w,
                        text: 'lbl128'.tr,
                        margin: EdgeInsets.only(bottom: 24.h),
                        buttonStyle: CustomButtonStyles.fillBlue,
                        buttonTextStyle: CustomTextStyles.bodyMediumBlack900,
                        alignment: Alignment.bottomCenter,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameColumn1(BuildContext context) {
    return Container(
      width: 361.w,
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      padding: EdgeInsets.symmetric(
        horizontal: 24.w,
        vertical: 12.h,
      ),
      decoration: AppDecoration.fillGray50,
      child: Divider(
        color: appTheme.gray20001,
        endIndent: 26.w,
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameColumn2(BuildContext context) {
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

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String userName,
    required String userAge,
    required String userLocation,
    required String userOccupation,
    required String userLocation1,
    required String userPhoneNumber,
    required String userLocation2,
    required String userEmail,
    required String userLocation3,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 24.h,
      ),
      decoration: AppDecoration.outlineOnSecondaryContainer
          .copyWith(borderRadius: BorderRadiusStyle.circleBorder12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: Assets.images.imgImage9.path,
            height: 84.r,
            width: 84.r,
            radius: BorderRadius.circular(42.w),
            margin: EdgeInsets.only(
              top: 17.h,
              bottom: 33.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 24.w,
              bottom: 11.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userName,
                  style: CustomTextStyles.bodyLargeGray500
                      .copyWith(color: appTheme.gray500),
                ),
                SizedBox(height: 7.h),
                Row(
                  children: [
                    Text(
                      userAge,
                      style: theme.textTheme.bodyMedium!
                          .copyWith(color: appTheme.gray500),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16.w),
                      child: Text(
                        userLocation,
                        style: theme.textTheme.bodyMedium!
                            .copyWith(color: appTheme.gray500),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.h),
                Row(
                  children: [
                    Text(
                      userOccupation,
                      style: theme.textTheme.bodyMedium!
                          .copyWith(color: appTheme.gray500),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 43.w),
                      child: Text(
                        userLocation1,
                        style: theme.textTheme.bodyMedium!
                            .copyWith(color: appTheme.gray500),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 3.h),
                Row(
                  children: [
                    Text(
                      userPhoneNumber,
                      style: theme.textTheme.bodyMedium!
                          .copyWith(color: appTheme.gray500),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 42.w),
                      child: Text(
                        userLocation2,
                        style: theme.textTheme.bodyMedium!
                            .copyWith(color: appTheme.gray500),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.h),
                Row(
                  children: [
                    Text(
                      userEmail,
                      style: theme.textTheme.bodyMedium!
                          .copyWith(color: appTheme.gray500),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 42.w),
                      child: Text(
                        userLocation3,
                        style: theme.textTheme.bodyMedium!
                            .copyWith(color: appTheme.gray500),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
