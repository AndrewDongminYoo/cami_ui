import 'package:cami_lab/core/app_export.dart';
import 'package:cami_lab/widgets/custom_checkbox_button.dart';
import 'package:cami_lab/widgets/custom_elevated_button.dart';
import 'package:cami_lab/widgets/custom_outlined_button.dart';
import 'package:cami_lab/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatelessWidget {
  LogInScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController editTextController = TextEditingController();

  TextEditingController editTextController1 = TextEditingController();

  bool tf = false;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildFrameColumn(context),
                SizedBox(height: 29.v),
                Text(
                  "lbl171".tr,
                  style: theme.textTheme.displaySmall,
                ),
                SizedBox(height: 18.v),
                Text(
                  "lbl172".tr,
                  style: CustomTextStyles.titleLargeGray60001,
                ),
                SizedBox(height: 82.v),
                _buildEditText(context),
                SizedBox(height: 8.v),
                _buildEditText1(context),
                SizedBox(height: 10.v),
                _buildFrameRow(context),
                SizedBox(height: 43.v),
                _buildLoginButton(context),
                SizedBox(height: 8.v),
                _buildEmailSignUpButton(context),
                SizedBox(height: 49.v),
                _buildFrameRow1(context),
                SizedBox(height: 20.v),
                _buildKakaoStartButton(context),
                SizedBox(height: 128.v),
                _buildFrameColumn1(context),
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
  Widget _buildEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: CustomTextFormField(
        controller: editTextController,
      ),
    );
  }

  /// Section Widget
  Widget _buildEditText1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
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
        left: 16.h,
        right: 23.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomCheckboxButton(
            text: "lbl173".tr,
            value: tf,
            onChange: (value) {
              tf = value;
            },
          ),
          Text(
            "lbl174".tr,
            style: CustomTextStyles.bodySmallGray60001,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginButton(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl175".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      buttonStyle: CustomButtonStyles.fillBlack,
    );
  }

  /// Section Widget
  Widget _buildEmailSignUpButton(BuildContext context) {
    return CustomOutlinedButton(
      height: 42.v,
      text: "lbl176".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      buttonStyle: CustomButtonStyles.outlineGray,
      buttonTextStyle: CustomTextStyles.bodyMediumGray800,
    );
  }

  /// Section Widget
  Widget _buildFrameRow1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 9.v,
              bottom: 7.v,
            ),
            child: SizedBox(
              width: 133.h,
              child: Divider(
                color: appTheme.blueGray300,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Text(
              "lbl177".tr,
              style: CustomTextStyles.bodySmallBluegray300,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 9.v,
              bottom: 7.v,
            ),
            child: SizedBox(
              width: 154.h,
              child: Divider(
                color: appTheme.blueGray300,
                indent: 21.h,
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
      text: "lbl178".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      buttonStyle: CustomButtonStyles.fillPrimary,
      buttonTextStyle: CustomTextStyles.bodyMediumOnErrorContainer,
    );
  }

  /// Section Widget
  Widget _buildFrameColumn1(BuildContext context) {
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
}
