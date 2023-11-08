import 'package:cami_lab/core/app_export.dart';
import 'package:cami_lab/widgets/custom_elevated_button.dart';
import 'package:cami_lab/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class MyPageScreen extends StatelessWidget {
  const MyPageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildFrameColumn(context),
                SizedBox(height: 42.v),
                _buildFrameRow(context),
                SizedBox(height: 48.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 17.h),
                  child: _buildFrame(
                    context,
                    userName: "lbl119".tr,
                    userAge: "lbl120".tr,
                    userLocation: "lbl121".tr,
                    userOccupation: "lbl122".tr,
                    userLocation1: "lbl121".tr,
                    userPhoneNumber: "lbl123".tr,
                    userLocation2: "lbl121".tr,
                    userEmail: "lbl124".tr,
                    userLocation3: "lbl121".tr,
                  ),
                ),
                SizedBox(height: 18.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 17.h),
                  child: _buildFrame(
                    context,
                    userName: "lbl119".tr,
                    userAge: "lbl120".tr,
                    userLocation: "lbl121".tr,
                    userOccupation: "lbl122".tr,
                    userLocation1: "lbl121".tr,
                    userPhoneNumber: "lbl99".tr,
                    userLocation2: "lbl121".tr,
                    userEmail: "lbl124".tr,
                    userLocation3: "lbl121".tr,
                  ),
                ),
                SizedBox(height: 16.v),
                _buildFrameRow2(context),
                SizedBox(height: 36.v),
                Container(
                  width: 361.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.h,
                    vertical: 11.v,
                  ),
                  decoration: AppDecoration.fillPrimary,
                  child: Text(
                    "lbl129".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                Container(
                  width: 361.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.h,
                    vertical: 11.v,
                  ),
                  decoration: AppDecoration.fillGray50,
                  child: Text(
                    "lbl".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                Container(
                  width: 361.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.h,
                    vertical: 11.v,
                  ),
                  decoration: AppDecoration.fillGray50,
                  child: Text(
                    "lbl115".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                Container(
                  width: 361.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.h,
                    vertical: 11.v,
                  ),
                  decoration: AppDecoration.fillGray50,
                  child: Text(
                    "lbl130".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                Container(
                  width: 361.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.h,
                    vertical: 11.v,
                  ),
                  decoration: AppDecoration.fillGray50,
                  child: Text(
                    "lbl_1_12".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                _buildFrameColumn1(context),
                Container(
                  width: 361.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.h,
                    vertical: 11.v,
                  ),
                  decoration: AppDecoration.fillGray50,
                  child: Text(
                    "lbl131".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                Container(
                  width: 361.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.h,
                    vertical: 11.v,
                  ),
                  decoration: AppDecoration.fillGray50,
                  child: Text(
                    "lbl10".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                Container(
                  width: 361.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.h,
                    vertical: 11.v,
                  ),
                  decoration: AppDecoration.fillGray50,
                  child: Text(
                    "lbl12".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                SizedBox(height: 132.v),
                _buildFrameColumn2(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      decoration: AppDecoration.fillOnPrimaryContainer,
      child: CustomImageView(
        imagePath: ImageConstant.imgFrameGray900,
        height: 50.v,
        width: 361.h,
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 22.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage79x79,
            height: 79.adaptSize,
            width: 79.adaptSize,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 24.h,
                top: 7.v,
                bottom: 7.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 2.v,
                          bottom: 5.v,
                        ),
                        child: Text(
                          "lbl164".tr,
                          style: CustomTextStyles.bodyLargeGray900,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 9.h),
                        child: CustomIconButton(
                          height: 32.adaptSize,
                          width: 32.adaptSize,
                          padding: EdgeInsets.all(8.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgArrowLeft,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 251.h,
                    child: Text(
                      "msg64".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodySmallGray500.copyWith(
                        height: 1.33,
                      ),
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
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.h),
            decoration: AppDecoration.outlineOnSecondaryContainer.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder12,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: 16.v),
                Text(
                  "lbl125".tr,
                  style: theme.textTheme.bodyLarge,
                ),
                SizedBox(height: 25.v),
                SizedBox(
                  height: 112.v,
                  width: 149.h,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage112x138,
                        height: 112.v,
                        width: 138.h,
                        alignment: Alignment.center,
                      ),
                      CustomElevatedButton(
                        height: 32.v,
                        width: 149.h,
                        text: "lbl126".tr,
                        margin: EdgeInsets.only(bottom: 24.v),
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
            margin: EdgeInsets.only(left: 12.h),
            padding: EdgeInsets.symmetric(horizontal: 12.h),
            decoration: AppDecoration.outlineOnSecondaryContainer.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder12,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: 16.v),
                Text(
                  "lbl127".tr,
                  style: theme.textTheme.bodyLarge,
                ),
                SizedBox(height: 25.v),
                SizedBox(
                  height: 112.v,
                  width: 149.h,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage10,
                        height: 112.v,
                        width: 138.h,
                        alignment: Alignment.center,
                      ),
                      CustomElevatedButton(
                        height: 32.v,
                        width: 149.h,
                        text: "lbl128".tr,
                        margin: EdgeInsets.only(bottom: 24.v),
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
      width: 361.h,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.fillGray50,
      child: Divider(
        color: appTheme.gray20001,
        endIndent: 26.h,
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameColumn2(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 60.v,
      ),
      decoration: AppDecoration.fillOnErrorContainer,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgTicket,
            height: 30.v,
            width: 92.h,
          ),
          SizedBox(height: 37.v),
          Row(
            children: [
              Text(
                "lbl10".tr,
                style: theme.textTheme.bodySmall,
              ),
              Padding(
                padding: EdgeInsets.only(left: 19.h),
                child: Text(
                  "lbl11".tr,
                  style: theme.textTheme.bodySmall,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 21.h),
                child: Text(
                  "lbl12".tr,
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ],
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.only(right: 9.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbl13".tr,
                  style: CustomTextStyles.bodySmallGray500,
                ),
                Text(
                  "lbl14".tr,
                  style: CustomTextStyles.bodySmallGray500,
                ),
                Text(
                  "lbl15".tr,
                  style: CustomTextStyles.bodySmallGray500,
                ),
                Text(
                  "lbl16".tr,
                  style: CustomTextStyles.bodySmallGray500,
                ),
              ],
            ),
          ),
          SizedBox(height: 38.v),
          Padding(
            padding: EdgeInsets.only(right: 63.h),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_address".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                    SizedBox(height: 9.v),
                    Text(
                      "msg_34".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                    Text(
                      "msg_2_b101".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 27.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_contact".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                      SizedBox(height: 10.v),
                      Text(
                        "msg_business_cami_kr".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                      Text(
                        "lbl_02_861_6828".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 45.v),
          Text(
            "lbl17".tr,
            style: theme.textTheme.bodySmall,
          ),
          Text(
            "msg".tr,
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 15.v),
          Text(
            "msg_copyright_2023".tr,
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 38.v),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgImage,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(left: 16.h),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgImage,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(left: 16.h),
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
        horizontal: 16.h,
        vertical: 24.v,
      ),
      decoration: AppDecoration.outlineOnSecondaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage9,
            height: 84.adaptSize,
            width: 84.adaptSize,
            radius: BorderRadius.circular(
              42.h,
            ),
            margin: EdgeInsets.only(
              top: 17.v,
              bottom: 33.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 24.h,
              bottom: 11.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userName,
                  style: CustomTextStyles.bodyLargeGray500.copyWith(
                    color: appTheme.gray500,
                  ),
                ),
                SizedBox(height: 7.v),
                Row(
                  children: [
                    Text(
                      userAge,
                      style: theme.textTheme.bodyMedium!.copyWith(
                        color: appTheme.gray500,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Text(
                        userLocation,
                        style: theme.textTheme.bodyMedium!.copyWith(
                          color: appTheme.gray500,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.v),
                Row(
                  children: [
                    Text(
                      userOccupation,
                      style: theme.textTheme.bodyMedium!.copyWith(
                        color: appTheme.gray500,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 43.h),
                      child: Text(
                        userLocation1,
                        style: theme.textTheme.bodyMedium!.copyWith(
                          color: appTheme.gray500,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 3.v),
                Row(
                  children: [
                    Text(
                      userPhoneNumber,
                      style: theme.textTheme.bodyMedium!.copyWith(
                        color: appTheme.gray500,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 42.h),
                      child: Text(
                        userLocation2,
                        style: theme.textTheme.bodyMedium!.copyWith(
                          color: appTheme.gray500,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.v),
                Row(
                  children: [
                    Text(
                      userEmail,
                      style: theme.textTheme.bodyMedium!.copyWith(
                        color: appTheme.gray500,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 42.h),
                      child: Text(
                        userLocation3,
                        style: theme.textTheme.bodyMedium!.copyWith(
                          color: appTheme.gray500,
                        ),
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
