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
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15.h),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 1.h,
                          right: 3.h,
                        ),
                        child: _buildFrame(
                          context,
                          userName: "lbl119".tr,
                          userAge: "lbl120".tr,
                          userLocation: "lbl121".tr,
                          userOccupation: "lbl122".tr,
                          userLocation1: "lbl121".tr,
                          userInterests: "lbl123".tr,
                          userLocation2: "lbl121".tr,
                          userHobbies: "lbl124".tr,
                          userLocation3: "lbl121".tr,
                        ),
                      ),
                      SizedBox(height: 18.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 1.h,
                          right: 3.h,
                        ),
                        child: _buildFrame(
                          context,
                          userName: "lbl119".tr,
                          userAge: "lbl120".tr,
                          userLocation: "lbl121".tr,
                          userOccupation: "lbl122".tr,
                          userLocation1: "lbl121".tr,
                          userInterests: "lbl99".tr,
                          userLocation2: "lbl121".tr,
                          userHobbies: "lbl124".tr,
                          userLocation3: "lbl121".tr,
                        ),
                      ),
                      SizedBox(height: 16.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          margin: EdgeInsets.only(
                            left: 1.h,
                            right: 187.h,
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 12.h),
                          decoration: AppDecoration.outlineOnSecondaryContainer
                              .copyWith(
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
                              SizedBox(height: 26.v),
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
                                      buttonStyle:
                                          CustomButtonStyles.fillBlueTL8,
                                      buttonTextStyle:
                                          CustomTextStyles.bodyMediumBlack900_1,
                                      alignment: Alignment.bottomCenter,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          margin: EdgeInsets.only(left: 188.h),
                          padding: EdgeInsets.symmetric(horizontal: 12.h),
                          decoration: AppDecoration.outlineOnSecondaryContainer
                              .copyWith(
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
                              SizedBox(height: 26.v),
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
                                      buttonStyle:
                                          CustomButtonStyles.fillBlueTL8,
                                      buttonTextStyle:
                                          CustomTextStyles.bodyMediumBlack900_1,
                                      alignment: Alignment.bottomCenter,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 36.v),
                Container(
                  width: 361.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.h,
                    vertical: 12.v,
                  ),
                  decoration: AppDecoration.fillYellow,
                  child: Text(
                    "lbl129".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                Container(
                  width: 361.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.h,
                    vertical: 12.v,
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
                    vertical: 12.v,
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
                    vertical: 12.v,
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
                    vertical: 12.v,
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
                    vertical: 12.v,
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
                    vertical: 12.v,
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
                    vertical: 12.v,
                  ),
                  decoration: AppDecoration.fillGray50,
                  child: Text(
                    "lbl12".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                SizedBox(height: 132.v),
                Container(
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
                      SizedBox(height: 39.v),
                      Row(
                        children: [
                          Text(
                            "lbl10".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Text(
                              "lbl11".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Text(
                              "lbl12".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12.v),
                      _buildFrameRow2(context),
                      SizedBox(height: 40.v),
                      Padding(
                        padding: EdgeInsets.only(right: 60.h),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "lbl_address".tr,
                                  style: theme.textTheme.bodySmall,
                                ),
                                SizedBox(height: 12.v),
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
                              padding: EdgeInsets.only(left: 16.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_contact".tr,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                  SizedBox(height: 12.v),
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
                      SizedBox(height: 48.v),
                      Text(
                        "lbl17".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                      Text(
                        "msg".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                      SizedBox(height: 16.v),
                      Text(
                        "msg_copyright_2023".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                      SizedBox(height: 41.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgFrame24x361,
                        height: 24.v,
                        width: 361.h,
                      ),
                    ],
                  ),
                ),
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
                          decoration:
                              IconButtonStyleHelper.fillOnPrimaryContainer,
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
                      style: CustomTextStyles.bodySmallGray500_1.copyWith(
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
        color: appTheme.gray200,
        endIndent: 26.h,
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameRow2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl13".tr,
            style: CustomTextStyles.bodySmallGray500_1,
          ),
          Text(
            "lbl14".tr,
            style: CustomTextStyles.bodySmallGray500_1,
          ),
          Text(
            "lbl15".tr,
            style: CustomTextStyles.bodySmallGray500_1,
          ),
          Text(
            "lbl16".tr,
            style: CustomTextStyles.bodySmallGray500_1,
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
    required String userInterests,
    required String userLocation2,
    required String userHobbies,
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
                      style: CustomTextStyles.bodyMediumGray500.copyWith(
                        color: appTheme.gray500,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Text(
                        userLocation,
                        style: CustomTextStyles.bodyMediumGray500.copyWith(
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
                      style: CustomTextStyles.bodyMediumGray500.copyWith(
                        color: appTheme.gray500,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 43.h),
                      child: Text(
                        userLocation1,
                        style: CustomTextStyles.bodyMediumGray500.copyWith(
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
                      userInterests,
                      style: CustomTextStyles.bodyMediumGray500.copyWith(
                        color: appTheme.gray500,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 42.h),
                      child: Text(
                        userLocation2,
                        style: CustomTextStyles.bodyMediumGray500.copyWith(
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
                      userHobbies,
                      style: CustomTextStyles.bodyMediumGray500.copyWith(
                        color: appTheme.gray500,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 42.h),
                      child: Text(
                        userLocation3,
                        style: CustomTextStyles.bodyMediumGray500.copyWith(
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
