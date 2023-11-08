import 'package:cami_lab/core/app_export.dart';
import 'package:cami_lab/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class NoticeDetailScreen extends StatelessWidget {
  const NoticeDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      _buildFrameColumn(context),
                      SizedBox(height: 15.v),
                      Padding(
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
                          ])),
                      SizedBox(height: 15.v),
                      Align(
                          alignment: Alignment.center,
                          child: Divider(
                              color: appTheme.black900,
                              indent: 16.h,
                              endIndent: 16.h)),
                      SizedBox(height: 12.v),
                      Padding(
                          padding: EdgeInsets.only(left: 24.h),
                          child: Text("msg9".tr.toUpperCase(),
                              style: CustomTextStyles.bodyMediumBlack900)),
                      SizedBox(height: 21.v),
                      Padding(
                          padding: EdgeInsets.only(left: 24.h),
                          child: Text("lbl_2020_03_17".tr.toUpperCase(),
                              style: CustomTextStyles.bodySmallGray500)),
                      SizedBox(height: 12.v),
                      _buildFrameColumn1(context),
                      SizedBox(height: 28.v),
                      CustomElevatedButton(
                          height: 32.v,
                          width: 104.h,
                          text: "lbl32".tr,
                          margin: EdgeInsets.only(right: 16.h),
                          buttonStyle: CustomButtonStyles.fillBlue,
                          buttonTextStyle: CustomTextStyles.bodySmallBlack900,
                          alignment: Alignment.centerRight),
                      SizedBox(height: 128.v),
                      _buildNoticeDetailColumn(context)
                    ])))));
  }

  /// Section Widget
  Widget _buildFrameColumn(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: CustomImageView(
            imagePath: ImageConstant.imgFrameGray900,
            height: 50.v,
            width: 361.h));
  }

  /// Section Widget
  Widget _buildFrameColumn1(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Container(
            width: 361.h,
            margin: EdgeInsets.symmetric(horizontal: 16.h),
            padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 13.v),
            decoration: AppDecoration.fillGray50,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: 327.h,
                      margin: EdgeInsets.only(right: 9.h),
                      child: Text("msg10".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodySmallBlack900
                              .copyWith(height: 1.33))),
                  Container(
                      width: 326.h,
                      margin: EdgeInsets.only(right: 9.h),
                      child: Text("msg11".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodySmallBlack900
                              .copyWith(height: 1.33))),
                  Text("msg12".tr, style: CustomTextStyles.bodySmallBlack900),
                  SizedBox(height: 3.v),
                  Container(
                      width: 327.h,
                      margin: EdgeInsets.only(right: 9.h),
                      child: Text("msg13".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodySmallBlack900
                              .copyWith(height: 1.33)))
                ])));
  }

  /// Section Widget
  Widget _buildNoticeDetailColumn(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 60.v),
        decoration: AppDecoration.fillOnErrorContainer,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              imagePath: ImageConstant.imgTicket, height: 30.v, width: 92.h),
          SizedBox(height: 37.v),
          Row(children: [
            Text("lbl10".tr, style: theme.textTheme.bodySmall),
            Padding(
                padding: EdgeInsets.only(left: 19.h),
                child: Text("lbl11".tr, style: theme.textTheme.bodySmall)),
            Padding(
                padding: EdgeInsets.only(left: 21.h),
                child: Text("lbl12".tr, style: theme.textTheme.bodySmall))
          ]),
          SizedBox(height: 9.v),
          Padding(
              padding: EdgeInsets.only(right: 9.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("lbl13".tr, style: CustomTextStyles.bodySmallGray500),
                    Text("lbl14".tr, style: CustomTextStyles.bodySmallGray500),
                    Text("lbl15".tr, style: CustomTextStyles.bodySmallGray500),
                    Text("lbl16".tr, style: CustomTextStyles.bodySmallGray500)
                  ])),
          SizedBox(height: 38.v),
          Padding(
              padding: EdgeInsets.only(right: 63.h),
              child: Row(children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text("lbl_address".tr, style: theme.textTheme.bodySmall),
                  SizedBox(height: 9.v),
                  Text("msg_34".tr, style: theme.textTheme.bodySmall),
                  Text("msg_2_b101".tr, style: theme.textTheme.bodySmall)
                ]),
                Padding(
                    padding: EdgeInsets.only(left: 27.h),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("lbl_contact".tr,
                              style: theme.textTheme.bodySmall),
                          SizedBox(height: 10.v),
                          Text("msg_business_cami_kr".tr,
                              style: theme.textTheme.bodySmall),
                          Text("lbl_02_861_6828".tr,
                              style: theme.textTheme.bodySmall)
                        ]))
              ])),
          SizedBox(height: 45.v),
          Text("lbl17".tr, style: theme.textTheme.bodySmall),
          Text("msg".tr, style: theme.textTheme.bodySmall),
          SizedBox(height: 15.v),
          Text("msg_copyright_2023".tr, style: theme.textTheme.bodySmall),
          SizedBox(height: 38.v),
          Row(children: [
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
          ])
        ]));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
