import 'package:cami_lab/core/app_export.dart';
import 'package:flutter/material.dart';

class NoticeScreen extends StatelessWidget {
  const NoticeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: Column(children: [
                  _buildFrameImage(context),
                  SizedBox(height: 15.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgArrowLeft,
                                height: 28.v,
                                width: 20.h,
                                onTap: () {
                                  onTapImgArrowLeft(context);
                                }),
                            Padding(
                                padding: EdgeInsets.only(left: 127.h),
                                child: Text("lbl10".tr,
                                    style: CustomTextStyles.bodyLarge18))
                          ]))),
                  SizedBox(height: 16.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: _buildFrame(context,
                          userName: "lbl_22".tr,
                          userMessage: "msg_2021_03_04".tr,
                          userDate: "lbl_2021_03_04".tr)),
                  Divider(
                      color: appTheme.gray200, indent: 16.h, endIndent: 16.h),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: _buildFrame(context,
                          userName: "lbl_1".tr,
                          userMessage: "msg9".tr,
                          userDate: "lbl_2020_03_17".tr)),
                  Divider(
                      color: appTheme.gray200, indent: 16.h, endIndent: 16.h),
                  SizedBox(height: 127.v),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.h, vertical: 60.v),
                      decoration: AppDecoration.fillOnErrorContainer,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgTicket,
                                height: 30.v,
                                width: 92.h),
                            SizedBox(height: 37.v),
                            Row(children: [
                              Text("lbl10".tr,
                                  style: theme.textTheme.bodySmall),
                              Padding(
                                  padding: EdgeInsets.only(left: 19.h),
                                  child: Text("lbl11".tr,
                                      style: theme.textTheme.bodySmall)),
                              Padding(
                                  padding: EdgeInsets.only(left: 21.h),
                                  child: Text("lbl12".tr,
                                      style: theme.textTheme.bodySmall))
                            ]),
                            SizedBox(height: 9.v),
                            _buildFrameRow1(context),
                            SizedBox(height: 38.v),
                            Padding(
                                padding: EdgeInsets.only(right: 63.h),
                                child: Row(children: [
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("lbl_address".tr,
                                            style: theme.textTheme.bodySmall),
                                        SizedBox(height: 9.v),
                                        Text("msg_34".tr,
                                            style: theme.textTheme.bodySmall),
                                        Text("msg_2_b101".tr,
                                            style: theme.textTheme.bodySmall)
                                      ]),
                                  Padding(
                                      padding: EdgeInsets.only(left: 27.h),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("lbl_contact".tr,
                                                style:
                                                    theme.textTheme.bodySmall),
                                            SizedBox(height: 10.v),
                                            Text("msg_business_cami_kr".tr,
                                                style:
                                                    theme.textTheme.bodySmall),
                                            Text("lbl_02_861_6828".tr,
                                                style:
                                                    theme.textTheme.bodySmall)
                                          ]))
                                ])),
                            SizedBox(height: 45.v),
                            Text("lbl17".tr, style: theme.textTheme.bodySmall),
                            Text("msg".tr, style: theme.textTheme.bodySmall),
                            SizedBox(height: 15.v),
                            Text("msg_copyright_2023".tr,
                                style: theme.textTheme.bodySmall),
                            SizedBox(height: 38.v),
                            _buildFrameColumn(context)
                          ]))
                ])))));
  }

  /// Section Widget
  Widget _buildFrameImage(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: CustomImageView(
            imagePath: ImageConstant.imgFrameGray900,
            height: 50.v,
            width: 361.h));
  }

  /// Section Widget
  Widget _buildFrameRow1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 9.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("lbl13".tr, style: CustomTextStyles.bodySmallGray500),
          Text("lbl14".tr, style: CustomTextStyles.bodySmallGray500),
          Text("lbl15".tr, style: CustomTextStyles.bodySmallGray500),
          Text("lbl16".tr, style: CustomTextStyles.bodySmallGray500)
        ]));
  }

  /// Section Widget
  Widget _buildFrameColumn(BuildContext context) {
    return Row(children: [
      CustomImageView(
          imagePath: ImageConstant.imgImage,
          height: 24.adaptSize,
          width: 24.adaptSize),
      CustomImageView(
          imagePath: ImageConstant.imgImage,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(left: 16.h)),
      CustomImageView(
          imagePath: ImageConstant.imgImage,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(left: 16.h))
    ]);
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String userName,
    required String userMessage,
    required String userDate,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 1.h, vertical: 15.v),
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 9.h, bottom: 3.v),
                  child: Text(userName,
                      style: CustomTextStyles.bodySmallBlack900
                          .copyWith(color: appTheme.black900))),
              Padding(
                  padding: EdgeInsets.only(left: 17.h, bottom: 3.v),
                  child: Text(userMessage,
                      style: CustomTextStyles.bodySmallBlack900
                          .copyWith(color: appTheme.black900))),
              Spacer(),
              Padding(
                  padding: EdgeInsets.only(top: 2.v, bottom: 3.v),
                  child: Text(userDate,
                      style: CustomTextStyles.bodySmallGray50011
                          .copyWith(color: appTheme.gray500)))
            ]));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
