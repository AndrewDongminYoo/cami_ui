import 'package:cami_lab/core/app_export.dart';
import 'package:cami_lab/widgets/app_bar/appbar_title.dart';
import 'package:cami_lab/widgets/app_bar/custom_app_bar.dart';
import 'package:cami_lab/widgets/custom_elevated_button.dart';
import 'package:cami_lab/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class CheckupCatScreen extends StatelessWidget {
  CheckupCatScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController infoEditTextController = TextEditingController();

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
                SizedBox(height: 19.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Text(
                      "msg_ccsi".tr,
                      style: CustomTextStyles.bodyMediumBlack900,
                    ),
                  ),
                ),
                SizedBox(height: 15.v),
                CustomImageView(
                  imagePath: ImageConstant.imgImage164x346,
                  height: 171.v,
                  width: 361.h,
                ),
                SizedBox(height: 18.v),
                _buildCcsiButton(context),
                SizedBox(height: 11.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Text(
                      "lbl54".tr,
                      style: CustomTextStyles.bodyLargeNanumSquareNeo,
                    ),
                  ),
                ),
                SizedBox(height: 10.v),
                _buildInfoEditText(context),
                SizedBox(height: 7.v),
                _buildFrameColumn(context),
                SizedBox(height: 8.v),
                _buildFrameRow(context),
                SizedBox(height: 8.v),
                _buildPurchaseButton(context),
                SizedBox(height: 48.v),
                _buildFrame1(context),
                SizedBox(height: 48.v),
                CustomImageView(
                  imagePath: ImageConstant.imgImage472x361,
                  height: 472.v,
                  width: 361.h,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgImage683x361,
                  height: 683.v,
                  width: 361.h,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgImage725x361,
                  height: 725.v,
                  width: 361.h,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgImage652x361,
                  height: 652.v,
                  width: 361.h,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgImage1065x361,
                  height: 1065.v,
                  width: 361.h,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgImage1352x361,
                  height: 1352.v,
                  width: 361.h,
                ),
                SizedBox(height: 1.v),
                CustomImageView(
                  imagePath: ImageConstant.imgImage1057x361,
                  height: 1057.v,
                  width: 361.h,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgImage1106x361,
                  height: 1106.v,
                  width: 361.h,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgImage705x361,
                  height: 705.v,
                  width: 361.h,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgImage543x361,
                  height: 543.v,
                  width: 361.h,
                ),
                SizedBox(height: 1.v),
                CustomImageView(
                  imagePath: ImageConstant.imgImage1007x361,
                  height: 1007.v,
                  width: 361.h,
                ),
                SizedBox(height: 272.v),
                _buildCheckupCatColumn(context),
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
        padding: EdgeInsets.only(left: 16.h),
        child: Row(
          children: [
            AppbarTitle(
              text: "lbl".tr,
            ),
            AppbarTitle(
              text: "lbl2".tr,
              margin: EdgeInsets.only(left: 12.h),
            ),
            AppbarTitle(
              text: "lbl49".tr,
              margin: EdgeInsets.only(left: 8.h),
            ),
            AppbarTitle(
              text: "lbl2".tr,
              margin: EdgeInsets.only(left: 12.h),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
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
  Widget _buildCcsiButton(BuildContext context) {
    return CustomElevatedButton(
      height: 23.v,
      width: 42.h,
      text: "lbl_ccsi".tr,
      margin: EdgeInsets.only(left: 16.h),
      buttonTextStyle: CustomTextStyles.bodySmall10,
      alignment: Alignment.centerLeft,
    );
  }

  /// Section Widget
  Widget _buildInfoEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.h),
      child: CustomTextFormField(
        width: 105.h,
        controller: infoEditTextController,
        hintText: "lbl_84".tr,
        textInputAction: TextInputAction.done,
        alignment: Alignment.centerLeft,
        suffix: Container(
          margin: EdgeInsets.fromLTRB(-105.h, 4.v, 30.h, 4.v),
          child: CustomImageView(
            imagePath: ImageConstant.imgInfo,
            height: 12.v,
            width: 68.h,
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 21.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameColumn(BuildContext context) {
    return Container(
      width: 361.h,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.symmetric(
        horizontal: 36.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "lbl5".tr,
                style: theme.textTheme.bodyMedium,
              ),
              Padding(
                padding: EdgeInsets.only(left: 41.h),
                child: Text(
                  "lbl_128".tr,
                  style: CustomTextStyles.bodyMediumGray800,
                ),
              ),
            ],
          ),
          SizedBox(height: 3.v),
          Row(
            children: [
              Text(
                "lbl6".tr,
                style: theme.textTheme.bodyMedium,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Text(
                  "lbl_202".tr,
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
  Widget _buildFrameRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 85.h,
            decoration: AppDecoration.fillGray.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgFrameBlack900,
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 4.v,
                    bottom: 3.v,
                  ),
                  child: Text(
                    "lbl_1".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgFrameBlack90032x32,
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 4.v,
              bottom: 3.v,
            ),
            child: Text(
              "lbl_12_000".tr,
              style: theme.textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPurchaseButton(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl7".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      buttonStyle: CustomButtonStyles.fillPrimary,
      buttonTextStyle: CustomTextStyles.bodyMediumOnErrorContainer,
    );
  }

  /// Section Widget
  Widget _buildIntroductionButton(BuildContext context) {
    return CustomElevatedButton(
      width: 181.h,
      text: "lbl8".tr,
      buttonStyle: CustomButtonStyles.fillOnSecondaryContainer,
    );
  }

  /// Section Widget
  Widget _buildReviewsButton(BuildContext context) {
    return CustomElevatedButton(
      width: 181.h,
      text: "lbl9".tr,
      buttonStyle: CustomButtonStyles.fillGrayTL81,
      buttonTextStyle: theme.textTheme.bodyMedium!,
    );
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildIntroductionButton(context),
          _buildReviewsButton(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCheckupCatColumn(BuildContext context) {
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
          SizedBox(height: 39.v),
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
}
