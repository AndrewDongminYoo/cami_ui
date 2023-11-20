import 'package:cami_lab/core/app_export.dart';
import 'package:cami_lab/widgets/app_bar/appbar_leading_image.dart';
import 'package:cami_lab/widgets/app_bar/appbar_trailing_image.dart';
import 'package:cami_lab/widgets/app_bar/custom_app_bar.dart';
import 'package:cami_lab/widgets/custom_checkbox_button.dart';
import 'package:flutter/material.dart';

class DabiExamScreen extends StatelessWidget {
  DabiExamScreen({Key? key})
      : super(
          key: key,
        );

  bool tf = false;

  bool tf2 = false;

  bool tf4 = false;

  bool tf6 = false;

  bool tf8 = false;

  bool tf10 = false;

  bool tf12 = false;

  bool tf14 = false;

  bool tf16 = false;

  bool tf18 = false;

  bool tf20 = false;

  bool tf22 = false;

  bool tf24 = false;

  bool tf26 = false;

  bool tf28 = false;

  bool tf30 = false;

  bool tf32 = false;

  bool tf34 = false;

  bool tf36 = false;

  bool tf38 = false;

  bool tf40 = false;

  bool tf42 = false;

  bool tf44 = false;

  bool tf46 = false;

  bool tf48 = false;

  bool tf50 = false;

  bool tf52 = false;

  bool tf54 = false;

  bool tf56 = false;

  bool tf58 = false;

  bool tf60 = false;

  bool tf62 = false;

  bool tf64 = false;

  bool tf66 = false;

  bool tf68 = false;

  bool tf70 = false;

  bool tf72 = false;

  bool tf74 = false;

  bool tf76 = false;

  bool tf78 = false;

  bool tf80 = false;

  bool tf82 = false;

  bool tf84 = false;

  bool tf86 = false;

  bool tf88 = false;

  bool tf90 = false;

  bool tf92 = false;

  bool tf94 = false;

  bool tf96 = false;

  bool tf98 = false;

  bool tf100 = false;

  bool tf102 = false;

  bool tf104 = false;

  bool tf106 = false;

  bool tf108 = false;

  bool tf110 = false;

  bool tf112 = false;

  bool tf114 = false;

  bool tf116 = false;

  bool tf118 = false;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 2.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "lbl181".tr,
                    style: CustomTextStyles.bodyMediumNanumSquareNeoBlack900,
                  ),
                ),
                SizedBox(height: 52.v),
                _buildWidget(context),
                SizedBox(height: 48.v),
                _buildSearch(context),
                SizedBox(height: 63.v),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Row(
                    children: [
                      Container(
                        width: 24.adaptSize,
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.h,
                          vertical: 1.v,
                        ),
                        decoration: AppDecoration.fillErrorContainer.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder12,
                        ),
                        child: Text(
                          "lbl_112".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 8.h,
                          bottom: 3.v,
                        ),
                        child: Text(
                          "msg69".tr,
                          style: CustomTextStyles.bodyMediumBlack900_1,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15.v),
                _buildTf1(context),
                SizedBox(height: 7.v),
                _buildTf3(context),
                SizedBox(height: 7.v),
                _buildTf5(context),
                SizedBox(height: 6.v),
                _buildTf7(context),
                SizedBox(height: 7.v),
                _buildTf9(context),
                SizedBox(height: 6.v),
                _buildTf11(context),
                SizedBox(height: 79.v),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Row(
                    children: [
                      Container(
                        width: 27.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.h,
                          vertical: 1.v,
                        ),
                        decoration: AppDecoration.fillErrorContainer.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder12,
                        ),
                        child: Text(
                          "lbl_122".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 8.h,
                          bottom: 3.v,
                        ),
                        child: Text(
                          "lbl187".tr,
                          style: CustomTextStyles.bodyMediumBlack900_1,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15.v),
                _buildTf13(context),
                SizedBox(height: 7.v),
                _buildTf15(context),
                SizedBox(height: 7.v),
                _buildTf17(context),
                SizedBox(height: 7.v),
                _buildTf19(context),
                SizedBox(height: 8.v),
                _buildTf21(context),
                SizedBox(height: 8.v),
                _buildTf23(context),
                SizedBox(height: 80.v),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Row(
                    children: [
                      Container(
                        width: 27.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.h,
                          vertical: 3.v,
                        ),
                        decoration: AppDecoration.fillErrorContainer.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder12,
                        ),
                        child: Text(
                          "lbl_132".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 8.h,
                          bottom: 4.v,
                        ),
                        child: Text(
                          "msg72".tr,
                          style: CustomTextStyles.bodyMediumBlack900_1,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16.v),
                _buildTf25(context),
                SizedBox(height: 8.v),
                _buildTf27(context),
                SizedBox(height: 8.v),
                _buildTf29(context),
                SizedBox(height: 8.v),
                _buildTf31(context),
                SizedBox(height: 8.v),
                _buildTf33(context),
                SizedBox(height: 8.v),
                _buildTf35(context),
                SizedBox(height: 80.v),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Row(
                    children: [
                      Container(
                        width: 27.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.h,
                          vertical: 3.v,
                        ),
                        decoration: AppDecoration.fillErrorContainer.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder12,
                        ),
                        child: Text(
                          "lbl_142".tr,
                          style: CustomTextStyles.bodySmall11,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 8.h,
                          bottom: 4.v,
                        ),
                        child: Text(
                          "lbl188".tr,
                          style: CustomTextStyles.bodyMediumBlack900_1,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16.v),
                _buildTf37(context),
                SizedBox(height: 8.v),
                _buildTf39(context),
                SizedBox(height: 8.v),
                _buildTf41(context),
                SizedBox(height: 8.v),
                _buildTf43(context),
                SizedBox(height: 8.v),
                _buildTf45(context),
                SizedBox(height: 8.v),
                _buildTf47(context),
                SizedBox(height: 80.v),
                _buildWidget1(context),
                SizedBox(height: 16.v),
                _buildTf49(context),
                SizedBox(height: 8.v),
                _buildTf51(context),
                SizedBox(height: 8.v),
                _buildTf53(context),
                SizedBox(height: 8.v),
                _buildTf55(context),
                SizedBox(height: 8.v),
                _buildTf57(context),
                SizedBox(height: 8.v),
                _buildTf59(context),
                SizedBox(height: 80.v),
                _buildWidget2(context),
                SizedBox(height: 16.v),
                _buildTf61(context),
                SizedBox(height: 8.v),
                _buildTf63(context),
                SizedBox(height: 8.v),
                _buildTf65(context),
                SizedBox(height: 8.v),
                _buildTf67(context),
                SizedBox(height: 8.v),
                _buildTf69(context),
                SizedBox(height: 8.v),
                _buildTf71(context),
                SizedBox(height: 80.v),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Row(
                    children: [
                      Container(
                        width: 26.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.h,
                          vertical: 3.v,
                        ),
                        decoration: AppDecoration.fillErrorContainer.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder12,
                        ),
                        child: Text(
                          "lbl_172".tr,
                          style: CustomTextStyles.bodySmall11,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 8.h,
                          bottom: 4.v,
                        ),
                        child: Text(
                          "msg75".tr,
                          style: CustomTextStyles.bodyMediumBlack900_1,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16.v),
                _buildTf73(context),
                SizedBox(height: 8.v),
                _buildTf75(context),
                SizedBox(height: 8.v),
                _buildTf77(context),
                SizedBox(height: 8.v),
                _buildTf79(context),
                SizedBox(height: 8.v),
                _buildTf81(context),
                SizedBox(height: 8.v),
                _buildTf83(context),
                SizedBox(height: 80.v),
                _buildWidget3(context),
                SizedBox(height: 16.v),
                _buildTf85(context),
                SizedBox(height: 8.v),
                _buildTf87(context),
                SizedBox(height: 8.v),
                _buildTf89(context),
                SizedBox(height: 8.v),
                _buildTf91(context),
                SizedBox(height: 8.v),
                _buildTf93(context),
                SizedBox(height: 8.v),
                _buildTf95(context),
                SizedBox(height: 80.v),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Row(
                    children: [
                      Container(
                        width: 27.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.h,
                          vertical: 3.v,
                        ),
                        decoration: AppDecoration.fillErrorContainer.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder12,
                        ),
                        child: Text(
                          "lbl_192".tr,
                          style: CustomTextStyles.bodySmall11,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 8.h,
                          bottom: 4.v,
                        ),
                        child: Text(
                          "lbl189".tr,
                          style: CustomTextStyles.bodyMediumBlack900_1,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16.v),
                _buildTf97(context),
                SizedBox(height: 8.v),
                _buildTf99(context),
                SizedBox(height: 8.v),
                _buildTf101(context),
                SizedBox(height: 8.v),
                _buildTf103(context),
                SizedBox(height: 8.v),
                _buildTf105(context),
                SizedBox(height: 8.v),
                _buildTf107(context),
                SizedBox(height: 80.v),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Row(
                    children: [
                      Container(
                        width: 30.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.h,
                          vertical: 3.v,
                        ),
                        decoration: AppDecoration.fillErrorContainer.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder12,
                        ),
                        child: Text(
                          "lbl_204".tr,
                          style: CustomTextStyles.bodySmall11,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 8.h,
                          bottom: 4.v,
                        ),
                        child: Text(
                          "msg77".tr,
                          style: CustomTextStyles.bodyMediumBlack900_1,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16.v),
                _buildTf109(context),
                SizedBox(height: 8.v),
                _buildTf111(context),
                SizedBox(height: 8.v),
                _buildTf113(context),
                SizedBox(height: 8.v),
                _buildTf115(context),
                SizedBox(height: 8.v),
                _buildTf117(context),
                SizedBox(height: 8.v),
                _buildTf119(context),
                SizedBox(height: 48.v),
                _buildWidget4(context),
                SizedBox(height: 128.v),
                Container(
                  width: double.maxFinite,
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
                            padding: EdgeInsets.only(left: 15.h),
                            child: Text(
                              "lbl12".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12.v),
                      _buildWidget5(context),
                      SizedBox(height: 40.v),
                      Row(
                        children: [
                          Text(
                            "lbl_address".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 130.h),
                            child: Text(
                              "lbl_contact".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12.v),
                      Padding(
                        padding: EdgeInsets.only(right: 72.h),
                        child: Row(
                          children: [
                            Text(
                              "msg_34".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 16.h),
                              child: Text(
                                "msg_business_cami_kr".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 105.h),
                        child: Row(
                          children: [
                            Text(
                              "msg_2_b101".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 34.h),
                              child: Text(
                                "lbl_02_861_6828".tr,
                                style: CustomTextStyles.bodySmall11,
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
                      Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgImage24x24,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgImage3,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(left: 16.h),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgImage4,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(left: 16.h),
                          ),
                        ],
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
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 80.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgGroup,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 15.v,
          bottom: 14.v,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgImage7,
          margin: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 13.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildWidget(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16.h),
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 13.v,
        ),
        decoration: AppDecoration.fillGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 1.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "lbl182".tr,
                    style: CustomTextStyles.bodySmallBlack900,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: Text(
                      "lbl_203".tr,
                      style: CustomTextStyles.bodySmallErrorContainer,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "lbl_102".tr,
                    style: CustomTextStyles.bodySmallErrorContainer11,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Text(
                      "lbl2".tr,
                      style: CustomTextStyles.bodySmallGray500_1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 7.h),
                    child: Text(
                      "lbl_502".tr,
                      style: CustomTextStyles.bodySmallGray500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8.v),
            Container(
              decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder2,
              ),
              child: Row(
                children: [
                  SizedBox(
                    height: 8.v,
                    width: 66.h,
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 8.v,
                            width: 1.h,
                            decoration: BoxDecoration(
                              color: appTheme.blue50,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            height: 8.v,
                            width: 1.h,
                            decoration: BoxDecoration(
                              color: appTheme.blue50,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 8.v,
                            width: 66.h,
                            decoration: BoxDecoration(
                              color: theme.colorScheme.errorContainer,
                              borderRadius: BorderRadius.circular(
                                4.h,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(
                    flex: 12,
                  ),
                  Container(
                    height: 8.v,
                    width: 1.h,
                    decoration: BoxDecoration(
                      color: appTheme.blue50,
                    ),
                  ),
                  Spacer(
                    flex: 12,
                  ),
                  Container(
                    height: 8.v,
                    width: 1.h,
                    decoration: BoxDecoration(
                      color: appTheme.blue50,
                    ),
                  ),
                  Spacer(
                    flex: 12,
                  ),
                  Container(
                    height: 8.v,
                    width: 1.h,
                    decoration: BoxDecoration(
                      color: appTheme.blue50,
                    ),
                  ),
                  Spacer(
                    flex: 12,
                  ),
                  Container(
                    height: 8.v,
                    width: 1.h,
                    decoration: BoxDecoration(
                      color: appTheme.blue50,
                    ),
                  ),
                  Spacer(
                    flex: 12,
                  ),
                  Container(
                    height: 8.v,
                    width: 1.h,
                    decoration: BoxDecoration(
                      color: appTheme.blue50,
                    ),
                  ),
                  Spacer(
                    flex: 12,
                  ),
                  Container(
                    height: 8.v,
                    width: 1.h,
                    decoration: BoxDecoration(
                      color: appTheme.blue50,
                    ),
                  ),
                  Spacer(
                    flex: 12,
                  ),
                  Container(
                    height: 8.v,
                    width: 1.h,
                    decoration: BoxDecoration(
                      color: appTheme.blue50,
                    ),
                  ),
                  Spacer(
                    flex: 12,
                  ),
                ],
              ),
            ),
            SizedBox(height: 2.v),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSearch(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16.h),
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 15.v,
        ),
        decoration: AppDecoration.fillGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgSearch,
              height: 16.adaptSize,
              width: 16.adaptSize,
              margin: EdgeInsets.only(bottom: 92.v),
            ),
            Expanded(
              child: Container(
                width: 290.h,
                margin: EdgeInsets.only(
                  left: 8.h,
                  right: 14.h,
                  bottom: 18.v,
                ),
                child: Text(
                  "msg68".tr,
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodySmallErrorContainer.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTf1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: CustomCheckboxButton(
        text: "msg70".tr,
        value: tf,
        onChange: (value) {
          tf = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTf3(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: CustomCheckboxButton(
        text: "lbl183".tr,
        value: tf2,
        onChange: (value) {
          tf2 = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTf5(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: CustomCheckboxButton(
        text: "lbl184".tr,
        value: tf4,
        onChange: (value) {
          tf4 = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTf7(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: CustomCheckboxButton(
        text: "msg71".tr,
        value: tf6,
        onChange: (value) {
          tf6 = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTf9(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: CustomCheckboxButton(
        text: "lbl185".tr,
        value: tf8,
        onChange: (value) {
          tf8 = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTf11(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: CustomCheckboxButton(
        text: "lbl186".tr,
        value: tf10,
        onChange: (value) {
          tf10 = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTf13(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: CustomCheckboxButton(
        text: "msg70".tr,
        value: tf12,
        onChange: (value) {
          tf12 = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTf15(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: CustomCheckboxButton(
        text: "lbl183".tr,
        value: tf14,
        onChange: (value) {
          tf14 = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTf17(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: CustomCheckboxButton(
        text: "lbl184".tr,
        value: tf16,
        onChange: (value) {
          tf16 = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTf19(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: CustomCheckboxButton(
        text: "msg71".tr,
        value: tf18,
        onChange: (value) {
          tf18 = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTf21(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: CustomCheckboxButton(
        text: "lbl185".tr,
        value: tf20,
        onChange: (value) {
          tf20 = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTf23(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: CustomCheckboxButton(
        text: "lbl186".tr,
        value: tf22,
        onChange: (value) {
          tf22 = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTf25(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: CustomCheckboxButton(
        text: "msg70".tr,
        value: tf24,
        onChange: (value) {
          tf24 = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTf27(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: CustomCheckboxButton(
        text: "lbl183".tr,
        value: tf26,
        onChange: (value) {
          tf26 = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTf29(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: CustomCheckboxButton(
        text: "lbl184".tr,
        value: tf28,
        onChange: (value) {
          tf28 = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTf31(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: CustomCheckboxButton(
        text: "msg71".tr,
        value: tf30,
        onChange: (value) {
          tf30 = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTf33(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: CustomCheckboxButton(
        text: "lbl185".tr,
        value: tf32,
        onChange: (value) {
          tf32 = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTf35(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: CustomCheckboxButton(
        text: "lbl186".tr,
        value: tf34,
        onChange: (value) {
          tf34 = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTf37(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: CustomCheckboxButton(
        text: "msg70".tr,
        value: tf36,
        onChange: (value) {
          tf36 = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTf39(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: CustomCheckboxButton(
        text: "lbl183".tr,
        value: tf38,
        onChange: (value) {
          tf38 = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTf41(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: CustomCheckboxButton(
        text: "lbl184".tr,
        value: tf40,
        onChange: (value) {
          tf40 = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTf43(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: CustomCheckboxButton(
        text: "msg71".tr,
        value: tf42,
        onChange: (value) {
          tf42 = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTf45(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: CustomCheckboxButton(
        text: "lbl185".tr,
        value: tf44,
        onChange: (value) {
          tf44 = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTf47(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: CustomCheckboxButton(
        text: "lbl186".tr,
        value: tf46,
        onChange: (value) {
          tf46 = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildWidget1(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 16.h,
          right: 24.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 27.h,
              padding: EdgeInsets.symmetric(
                horizontal: 8.h,
                vertical: 3.v,
              ),
              decoration: AppDecoration.fillErrorContainer.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder12,
              ),
              child: Text(
                "lbl_152".tr,
                style: CustomTextStyles.bodySmall11,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 8.h,
                bottom: 4.v,
              ),
              child: Text(
                "msg73".tr,
                style: CustomTextStyles.bodyMediumBlack900_1,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTf49(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: CustomCheckboxButton(
        text: "msg70".tr,
        value: tf48,
        onChange: (value) {
          tf48 = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTf51(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: CustomCheckboxButton(
        text: "lbl183".tr,
        value: tf50,
        onChange: (value) {
          tf50 = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTf53(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: CustomCheckboxButton(
        text: "lbl184".tr,
        value: tf52,
        onChange: (value) {
          tf52 = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTf55(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: CustomCheckboxButton(
        text: "msg71".tr,
        value: tf54,
        onChange: (value) {
          tf54 = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTf57(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: CustomCheckboxButton(
        text: "lbl185".tr,
        value: tf56,
        onChange: (value) {
          tf56 = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTf59(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: CustomCheckboxButton(
        text: "lbl186".tr,
        value: tf58,
        onChange: (value) {
          tf58 = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildWidget2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 54.h,
      ),
      child: Row(
        children: [
          Container(
            width: 27.h,
            padding: EdgeInsets.symmetric(
              horizontal: 8.h,
              vertical: 3.v,
            ),
            decoration: AppDecoration.fillErrorContainer.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder12,
            ),
            child: Text(
              "lbl_162".tr,
              style: CustomTextStyles.bodySmall11,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              bottom: 4.v,
            ),
            child: Text(
              "msg74".tr,
              style: CustomTextStyles.bodyMediumBlack900_1,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTf61(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: CustomCheckboxButton(
        text: "msg70".tr,
        value: tf60,
        onChange: (value) {
          tf60 = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTf63(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: CustomCheckboxButton(
        text: "lbl183".tr,
        value: tf62,
        onChange: (value) {
          tf62 = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTf65(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: CustomCheckboxButton(
        text: "lbl184".tr,
        value: tf64,
        onChange: (value) {
          tf64 = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTf67(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: CustomCheckboxButton(
        text: "msg71".tr,
        value: tf66,
        onChange: (value) {
          tf66 = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTf69(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: CustomCheckboxButton(
        text: "lbl185".tr,
        value: tf68,
        onChange: (value) {
          tf68 = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTf71(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: CustomCheckboxButton(
        text: "lbl186".tr,
        value: tf70,
        onChange: (value) {
          tf70 = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTf73(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: CustomCheckboxButton(
        text: "msg70".tr,
        value: tf72,
        onChange: (value) {
          tf72 = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTf75(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: CustomCheckboxButton(
        text: "lbl183".tr,
        value: tf74,
        onChange: (value) {
          tf74 = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTf77(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: CustomCheckboxButton(
        text: "lbl184".tr,
        value: tf76,
        onChange: (value) {
          tf76 = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTf79(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: CustomCheckboxButton(
        text: "msg71".tr,
        value: tf78,
        onChange: (value) {
          tf78 = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTf81(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: CustomCheckboxButton(
        text: "lbl185".tr,
        value: tf80,
        onChange: (value) {
          tf80 = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTf83(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: CustomCheckboxButton(
        text: "lbl186".tr,
        value: tf82,
        onChange: (value) {
          tf82 = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildWidget3(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 42.h,
      ),
      child: Row(
        children: [
          Container(
            width: 27.h,
            padding: EdgeInsets.symmetric(
              horizontal: 8.h,
              vertical: 3.v,
            ),
            decoration: AppDecoration.fillErrorContainer.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder12,
            ),
            child: Text(
              "lbl_182".tr,
              style: CustomTextStyles.bodySmall11,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              bottom: 4.v,
            ),
            child: Text(
              "msg76".tr,
              style: CustomTextStyles.bodyMediumBlack900_1,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTf85(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: CustomCheckboxButton(
        text: "msg70".tr,
        value: tf84,
        onChange: (value) {
          tf84 = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTf87(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: CustomCheckboxButton(
        text: "lbl183".tr,
        value: tf86,
        onChange: (value) {
          tf86 = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTf89(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: CustomCheckboxButton(
        text: "lbl184".tr,
        value: tf88,
        onChange: (value) {
          tf88 = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTf91(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: CustomCheckboxButton(
        text: "msg71".tr,
        value: tf90,
        onChange: (value) {
          tf90 = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTf93(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: CustomCheckboxButton(
        text: "lbl185".tr,
        value: tf92,
        onChange: (value) {
          tf92 = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTf95(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: CustomCheckboxButton(
        text: "lbl186".tr,
        value: tf94,
        onChange: (value) {
          tf94 = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTf97(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: CustomCheckboxButton(
        text: "msg70".tr,
        value: tf96,
        onChange: (value) {
          tf96 = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTf99(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: CustomCheckboxButton(
        text: "lbl183".tr,
        value: tf98,
        onChange: (value) {
          tf98 = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTf101(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: CustomCheckboxButton(
        text: "lbl184".tr,
        value: tf100,
        onChange: (value) {
          tf100 = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTf103(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: CustomCheckboxButton(
        text: "msg71".tr,
        value: tf102,
        onChange: (value) {
          tf102 = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTf105(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: CustomCheckboxButton(
        text: "lbl185".tr,
        value: tf104,
        onChange: (value) {
          tf104 = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTf107(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: CustomCheckboxButton(
        text: "lbl186".tr,
        value: tf106,
        onChange: (value) {
          tf106 = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTf109(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: CustomCheckboxButton(
        text: "msg70".tr,
        value: tf108,
        onChange: (value) {
          tf108 = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTf111(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: CustomCheckboxButton(
        text: "lbl183".tr,
        value: tf110,
        onChange: (value) {
          tf110 = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTf113(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: CustomCheckboxButton(
        text: "lbl184".tr,
        value: tf112,
        onChange: (value) {
          tf112 = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTf115(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: CustomCheckboxButton(
        text: "msg71".tr,
        value: tf114,
        onChange: (value) {
          tf114 = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTf117(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: CustomCheckboxButton(
        text: "lbl185".tr,
        value: tf116,
        onChange: (value) {
          tf116 = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTf119(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 48.h),
      child: CustomCheckboxButton(
        text: "lbl186".tr,
        value: tf118,
        onChange: (value) {
          tf118 = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildWidget4(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 48.h,
                vertical: 8.v,
              ),
              decoration: AppDecoration.outlineGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: SizedBox(
                width: 27.h,
                child: Text(
                  "lbl190".tr,
                  maxLines: null,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyMediumGray800.copyWith(
                    height: 1.71,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 48.h,
                vertical: 8.v,
              ),
              decoration: AppDecoration.outlineGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: SizedBox(
                width: 27.h,
                child: Text(
                  "lbl191".tr,
                  maxLines: null,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyMediumGray800.copyWith(
                    height: 1.71,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWidget5(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 16.h),
      child: Row(
        children: [
          Text(
            "lbl13".tr,
            style: CustomTextStyles.bodySmallGray500_1,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Text(
              "lbl14".tr,
              style: CustomTextStyles.bodySmallGray500_1,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.h),
            child: Text(
              "lbl15".tr,
              style: CustomTextStyles.bodySmallGray500_1,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Text(
              "lbl16".tr,
              style: CustomTextStyles.bodySmallGray500_1,
            ),
          ),
        ],
      ),
    );
  }
}
