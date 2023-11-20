import 'package:cami_lab/core/app_export.dart';
import 'package:flutter/material.dart';

class SolutionScreen extends StatelessWidget {
  const SolutionScreen({Key? key})
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
                Text(
                  "lbl90".tr,
                  style: CustomTextStyles.bodyMediumGray90002,
                ),
                SizedBox(height: 17.v),
                Text(
                  "lbl115".tr,
                  style: CustomTextStyles.headlineSmallNanumSquareNeoBlack900,
                ),
                SizedBox(height: 18.v),
                Text(
                  "lbl136".tr,
                  style: theme.textTheme.bodyLarge,
                ),
                Text(
                  "lbl137".tr,
                  style: theme.textTheme.bodyLarge,
                ),
                SizedBox(height: 32.v),
                _buildFrameRow(context),
                SizedBox(height: 32.v),
                _buildFrameRow1(context),
                SizedBox(height: 130.v),
                Text(
                  "lbl142".tr,
                  style: CustomTextStyles.titleLargeBlack90020,
                ),
                SizedBox(height: 34.v),
                _buildFrameColumn1(context),
                SizedBox(height: 24.v),
                _buildFrameColumn2(context),
                SizedBox(height: 128.v),
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
                      SizedBox(height: 41.v),
                      Padding(
                        padding: EdgeInsets.only(right: 60.h),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "lbl_address".tr,
                                  style: CustomTextStyles.bodySmall11,
                                ),
                                SizedBox(height: 11.v),
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
                                    style: CustomTextStyles.bodySmall11,
                                  ),
                                  SizedBox(height: 11.v),
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
        imagePath: ImageConstant.imgFrame,
        height: 50.v,
        width: 361.h,
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 29.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 44.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl138".tr,
                  style: theme.textTheme.bodyLarge,
                ),
                SizedBox(height: 14.v),
                Text(
                  "msg54".tr,
                  style: CustomTextStyles.bodySmallBlack9009,
                ),
                Text(
                  "msg55".tr,
                  style: CustomTextStyles.bodySmallBlack9009,
                ),
                Text(
                  "lbl139".tr,
                  style: CustomTextStyles.bodySmallBlack9009,
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage167x130,
            height: 167.v,
            width: 130.h,
            margin: EdgeInsets.only(left: 15.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameRow1(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.symmetric(horizontal: 21.h),
      decoration: AppDecoration.fillGray50.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage128x142,
            height: 128.v,
            width: 142.h,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(12.h, 24.v, 8.h, 24.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "lbl140".tr,
                  style: theme.textTheme.bodyLarge,
                ),
                SizedBox(height: 15.v),
                Text(
                  "msg56".tr,
                  style: CustomTextStyles.bodySmallBlack9009,
                ),
                Text(
                  "msg57".tr,
                  style: CustomTextStyles.bodySmallBlack9009,
                ),
                Text(
                  "lbl141".tr,
                  style: CustomTextStyles.bodySmallBlack9009,
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
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.all(8.h),
      decoration: AppDecoration.outlineOnError.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: CustomImageView(
        imagePath: ImageConstant.imgImage161x343,
        height: 161.v,
        width: 343.h,
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameColumn2(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.all(8.h),
      decoration: AppDecoration.outlineOnError.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: CustomImageView(
        imagePath: ImageConstant.imgImage12,
        height: 161.v,
        width: 343.h,
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
}
