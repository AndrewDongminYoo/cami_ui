import 'package:cami_lab/core/app_export.dart';
import 'package:cami_lab/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class NoticesScreen extends StatelessWidget {
  const NoticesScreen({Key? key}) : super(key: key);

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
                      _buildAppNavBar(context),
                      SizedBox(height: 28.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgVectorBlack90012x6,
                                    height: 12.v,
                                    width: 6.h,
                                    margin: EdgeInsets.only(
                                        top: 4.v, bottom: 10.v)),
                                Padding(
                                    padding: EdgeInsets.only(left: 132.h),
                                    child: Text("lbl10".tr,
                                        style: CustomTextStyles.bodyLarge18))
                              ])),
                      SizedBox(height: 16.v),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              height: 2.v,
                              width: 361.h,
                              decoration:
                                  BoxDecoration(color: appTheme.black900))),
                      SizedBox(height: 12.v),
                      Padding(
                          padding: EdgeInsets.only(left: 24.h),
                          child: Text("msg9".tr.toUpperCase(),
                              style: CustomTextStyles.bodyMediumBluegray300)),
                      SizedBox(height: 22.v),
                      Padding(
                          padding: EdgeInsets.only(left: 24.h),
                          child: Text("lbl_2020_03_17".tr.toUpperCase(),
                              style: CustomTextStyles.bodySmallGray50011)),
                      SizedBox(height: 12.v),
                      _buildStack(context),
                      SizedBox(height: 28.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              height: 32.v,
                              width: 102.h,
                              margin: EdgeInsets.only(right: 16.h),
                              child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    CustomIconButton(
                                        height: 32.v,
                                        width: 102.h,
                                        alignment: Alignment.center,
                                        child: CustomImageView()),
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Padding(
                                            padding: EdgeInsets.only(top: 5.v),
                                            child: Text("lbl32".tr,
                                                style: CustomTextStyles
                                                    .bodySmallBlack900)))
                                  ]))),
                      SizedBox(height: 128.v),
                      _buildHorizontalScroll(context)
                    ])))));
  }

  /// Section Widget
  Widget _buildAppNavBar(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: IntrinsicWidth(
            child: Padding(
                padding: EdgeInsets.only(right: 1692.h),
                child: Row(children: [
                  Container(
                      height: 50.v,
                      width: double.maxFinite,
                      decoration: BoxDecoration(color: appTheme.whiteA700)),
                  Expanded(
                      child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 14.v),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgVectorGray9004x4,
                                    height: 4.adaptSize,
                                    width: 4.adaptSize),
                                SizedBox(height: 1.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 1676.h),
                                    child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgVector,
                                              height: 14.v,
                                              width: 13.h),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgVectorGray900,
                                              height: 14.adaptSize,
                                              width: 14.adaptSize,
                                              margin:
                                                  EdgeInsets.only(left: 1.h)),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgVectorGray90014x23,
                                              height: 14.v,
                                              width: 23.h,
                                              margin:
                                                  EdgeInsets.only(left: 3.h)),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgVectorGray9004x4,
                                              height: 14.v,
                                              width: 3.h,
                                              margin:
                                                  EdgeInsets.only(left: 3.h))
                                        ]))
                              ]))),
                  GestureDetector(
                      onTap: () {
                        onTapIMAGE(context);
                      },
                      child: Container(
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          margin: EdgeInsets.only(
                              left: 273.h, top: 13.v, bottom: 13.v),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(ImageConstant.imgMenu),
                                  fit: BoxFit.cover))))
                ]))));
  }

  /// Section Widget
  Widget _buildStack(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: SizedBox(
            height: 144.v,
            width: 361.h,
            child: Stack(alignment: Alignment.topCenter, children: [
              Align(
                  alignment: Alignment.center,
                  child: Container(
                      height: 144.v,
                      width: 361.h,
                      decoration: BoxDecoration(color: appTheme.gray50))),
              Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                      width: 327.h,
                      margin: EdgeInsets.only(top: 13.v),
                      child: Text("msg10".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodySmallBlack900
                              .copyWith(height: 1.33)))),
              Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                      width: 326.h,
                      margin: EdgeInsets.only(top: 45.v),
                      child: Text("msg11".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodySmallBlack900
                              .copyWith(height: 1.33)))),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 12.h, bottom: 48.v),
                      child: Text("msg12".tr,
                          style: CustomTextStyles.bodySmallBlack900))),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                      width: 327.h,
                      margin: EdgeInsets.only(bottom: 16.v),
                      child: Text("msg13".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodySmallBlack900
                              .copyWith(height: 1.33))))
            ])));
  }

  /// Section Widget
  Widget _buildHorizontalScroll(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: IntrinsicWidth(
            child: Container(
                padding: EdgeInsets.symmetric(vertical: 60.v),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: fs.Svg(ImageConstant.imgFooter),
                        fit: BoxFit.cover)),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Row(children: [
                            Padding(
                                padding: EdgeInsets.only(bottom: 13.v),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgVectorYellow400,
                                          height: 6.adaptSize,
                                          width: 6.adaptSize),
                                      SizedBox(height: 2.v),
                                      Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgVectorWhiteA700,
                                                height: 21.v,
                                                width: 19.h),
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgVectorWhiteA70021x21,
                                                height: 21.adaptSize,
                                                width: 21.adaptSize,
                                                margin:
                                                    EdgeInsets.only(left: 2.h)),
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgVectorWhiteA70020x33,
                                                height: 20.v,
                                                width: 33.h,
                                                margin:
                                                    EdgeInsets.only(left: 5.h)),
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgVectorWhiteA70020x5,
                                                height: 20.v,
                                                width: 5.h,
                                                margin:
                                                    EdgeInsets.only(left: 4.h))
                                          ])
                                    ])),
                            CustomImageView(
                                imagePath: ImageConstant.imgVectorBlack90030x92,
                                height: 30.v,
                                width: 92.h,
                                margin: EdgeInsets.only(bottom: 13.v))
                          ])),
                      SizedBox(height: 24.v),
                      Row(children: [
                        Text("lbl10".tr, style: theme.textTheme.bodySmall),
                        GestureDetector(
                            onTap: () {
                              onTapTxtWidget(context);
                            },
                            child: Padding(
                                padding: EdgeInsets.only(left: 17.h),
                                child: Text("lbl11".tr,
                                    style: theme.textTheme.bodySmall))),
                        Padding(
                            padding: EdgeInsets.only(left: 17.h),
                            child: Text("lbl12".tr,
                                style: theme.textTheme.bodySmall))
                      ]),
                      SizedBox(height: 9.v),
                      Padding(
                          padding: EdgeInsets.only(right: 51.h),
                          child: Row(children: [
                            GestureDetector(
                                onTap: () {
                                  onTapTxtWidget1(context);
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
                        Text("lbl_address".tr,
                            style: theme.textTheme.bodySmall),
                        Padding(
                            padding: EdgeInsets.only(left: 131.h),
                            child: Text("lbl_contact".tr,
                                style: theme.textTheme.bodySmall))
                      ]),
                      SizedBox(height: 9.v),
                      SizedBox(
                          height: 34.v,
                          width: 160.h,
                          child:
                              Stack(alignment: Alignment.centerLeft, children: [
                            Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                    height: 34.v,
                                    width: 160.h,
                                    child: Stack(
                                        alignment: Alignment.bottomLeft,
                                        children: [
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Text("msg_34".tr,
                                                  style: theme
                                                      .textTheme.bodySmall)),
                                          Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Text("msg_2_b101".tr,
                                                  style: theme
                                                      .textTheme.bodySmall))
                                        ]))),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: SizedBox(
                                    height: 32.v,
                                    width: 109.h,
                                    child: Stack(
                                        alignment: Alignment.bottomLeft,
                                        children: [
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                  "msg_business_cami_kr".tr,
                                                  style: theme
                                                      .textTheme.bodySmall)),
                                          Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Text("lbl_02_861_6828".tr,
                                                  style: CustomTextStyles
                                                      .bodySmall11))
                                        ])))
                          ])),
                      SizedBox(height: 45.v),
                      SizedBox(
                          height: 34.v,
                          width: 241.h,
                          child:
                              Stack(alignment: Alignment.bottomLeft, children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text("lbl17".tr,
                                    style: theme.textTheme.bodySmall)),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Text("msg".tr,
                                    style: theme.textTheme.bodySmall))
                          ])),
                      SizedBox(height: 15.v),
                      Text("msg_copyright_2023".tr,
                          style: theme.textTheme.bodySmall),
                      SizedBox(height: 38.v),
                      Row(children: [
                        Container(
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage(ImageConstant.imgImage24x24),
                                    fit: BoxFit.cover))),
                        Container(
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(left: 16.h),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(ImageConstant.imgImage2),
                                    fit: BoxFit.cover))),
                        Container(
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(left: 16.h),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(ImageConstant.imgImage3),
                                    fit: BoxFit.cover)))
                      ]),
                      SizedBox(height: 13.v)
                    ]))));
  }

  /// Navigates to the menuBarScreen when the action is triggered.
  onTapIMAGE(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.menuBarScreen);
  }

  /// Navigates to the faqScreen when the action is triggered.
  onTapTxtWidget(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.faqScreen);
  }

  /// Navigates to the contactUsRegisterScreen when the action is triggered.
  onTapTxtWidget1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.contactUsRegisterScreen);
  }
}
