import 'package:cami_lab/core/app_export.dart';
import 'package:cami_lab/widgets/custom_elevated_button.dart';
import 'package:cami_lab/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class VerifyScreen extends StatelessWidget {
  VerifyScreen({Key? key}) : super(key: key);

  TextEditingController editTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgAppNavBar,
                      height: 50.v,
                      width: 393.h),
                  SizedBox(height: 79.v),
                  Text("lbl143".tr, style: theme.textTheme.displaySmall),
                  SizedBox(height: 15.v),
                  Container(
                      width: 338.h,
                      margin: EdgeInsets.only(left: 26.h, right: 27.h),
                      child: Text("msg63".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.bodyMediumGray60001
                              .copyWith(height: 1.43))),
                  SizedBox(height: 63.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 101.h),
                          child: Text("lbl163".tr,
                              style: theme.textTheme.bodyLarge))),
                  SizedBox(height: 8.v),
                  CustomTextFormField(
                      width: 191.h,
                      controller: editTextController,
                      textInputAction: TextInputAction.done),
                  SizedBox(height: 32.v),
                  CustomElevatedButton(
                      width: 191.h,
                      text: "lbl159".tr,
                      buttonStyle: CustomButtonStyles.fillBlack),
                  SizedBox(height: 128.v),
                  _buildAppNavBar(context)
                ])))));
  }

  /// Section Widget
  Widget _buildAppNavBar(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 60.v),
        decoration: AppDecoration.fillOnErrorContainer,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              imagePath: ImageConstant.imgTicket, height: 30.v, width: 92.h),
          SizedBox(height: 37.v),
          Row(children: [
            GestureDetector(
                onTap: () {
                  onTapTxtWidget(context);
                },
                child: Text("lbl10".tr, style: theme.textTheme.bodySmall)),
            GestureDetector(
                onTap: () {
                  onTapTxtWidget1(context);
                },
                child: Padding(
                    padding: EdgeInsets.only(left: 17.h),
                    child: Text("lbl11".tr, style: theme.textTheme.bodySmall))),
            Padding(
                padding: EdgeInsets.only(left: 17.h),
                child: Text("lbl12".tr, style: theme.textTheme.bodySmall))
          ]),
          SizedBox(height: 9.v),
          Padding(
              padding: EdgeInsets.only(right: 19.h),
              child: Row(children: [
                GestureDetector(
                    onTap: () {
                      onTapTxtWidget2(context);
                    },
                    child: Text("lbl13".tr,
                        style: CustomTextStyles.bodySmallGray500)),
                Padding(
                    padding: EdgeInsets.only(left: 18.h),
                    child: Text("lbl14".tr,
                        style: CustomTextStyles.bodySmallGray500)),
                Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Text("lbl15".tr,
                        style: CustomTextStyles.bodySmallGray500)),
                Padding(
                    padding: EdgeInsets.only(left: 19.h),
                    child: Text("lbl16".tr,
                        style: CustomTextStyles.bodySmallGray500))
              ])),
          SizedBox(height: 38.v),
          Row(children: [
            Text("lbl_address".tr, style: theme.textTheme.bodySmall),
            Padding(
                padding: EdgeInsets.only(left: 131.h),
                child: Text("lbl_contact".tr, style: theme.textTheme.bodySmall))
          ]),
          SizedBox(height: 9.v),
          Padding(
              padding: EdgeInsets.only(right: 72.h),
              child: Row(children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text("msg_34".tr, style: theme.textTheme.bodySmall),
                  Text("msg_2_b101".tr, style: theme.textTheme.bodySmall)
                ]),
                Padding(
                    padding: EdgeInsets.only(left: 19.h),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("msg_business_cami_kr".tr,
                              style: theme.textTheme.bodySmall),
                          Text("lbl_02_861_6828".tr,
                              style: CustomTextStyles.bodySmall11)
                        ]))
              ])),
          SizedBox(height: 45.v),
          SizedBox(
              height: 34.v,
              width: 241.h,
              child: Stack(alignment: Alignment.bottomCenter, children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Text("lbl17".tr, style: theme.textTheme.bodySmall)),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Text("msg".tr, style: theme.textTheme.bodySmall))
              ])),
          SizedBox(height: 15.v),
          Text("msg_copyright_2023".tr, style: theme.textTheme.bodySmall),
          SizedBox(height: 38.v),
          Row(children: [
            CustomImageView(
                imagePath: ImageConstant.imgImage24x24,
                height: 24.adaptSize,
                width: 24.adaptSize),
            CustomImageView(
                imagePath: ImageConstant.imgImage3,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(left: 16.h)),
            CustomImageView(
                imagePath: ImageConstant.imgImage4,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(left: 16.h))
          ])
        ]));
  }

  onTapTxtWidget(BuildContext context) {
    // TODO: implement Actions
  }

  /// Navigates to the faqScreen when the action is triggered.
  onTapTxtWidget1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.faqScreen);
  }

  /// Navigates to the contactUsRegisterScreen when the action is triggered.
  onTapTxtWidget2(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.contactUsRegisterScreen);
  }
}
