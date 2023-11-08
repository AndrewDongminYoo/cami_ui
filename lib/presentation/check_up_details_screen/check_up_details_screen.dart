import 'package:cami_lab/core/app_export.dart';
import 'package:cami_lab/widgets/app_bar/appbar_subtitle.dart';
import 'package:cami_lab/widgets/app_bar/appbar_title.dart';
import 'package:cami_lab/widgets/app_bar/appbar_title_image.dart';
import 'package:cami_lab/widgets/app_bar/custom_app_bar.dart';
import 'package:cami_lab/widgets/custom_checkbox_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore_for_file: must_be_immutable
class CheckUpDetailsScreen extends StatelessWidget {
  CheckUpDetailsScreen({Key? key}) : super(key: key);

  bool checkBox = false;

  bool checkBox1 = false;

  bool checkBox2 = false;

  bool checkBox3 = false;

  bool checkBox4 = false;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 15.v),
                    child: Column(children: [
                      Container(
                          height: 171.v,
                          width: 361.h,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(ImageConstant.imgImage7),
                                  fit: BoxFit.cover))),
                      SizedBox(height: 18.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              height: 23.v,
                              width: 40.h,
                              margin: EdgeInsets.only(left: 16.h),
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        height: 23.v,
                                        width: 40.h,
                                        decoration: BoxDecoration(
                                            color: appTheme.gray90004,
                                            borderRadius:
                                                BorderRadius.circular(8.h)))),
                                Align(
                                    alignment: Alignment.center,
                                    child: Text("lbl_ccsi".tr,
                                        style: CustomTextStyles.bodySmall10))
                              ]))),
                      SizedBox(height: 10.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 16.h),
                              child: Text("lbl54".tr,
                                  style: CustomTextStyles
                                      .bodyMediumNanumSquareNeo))),
                      SizedBox(height: 12.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              height: 20.v,
                              width: 103.h,
                              margin: EdgeInsets.only(left: 16.h),
                              child: Stack(
                                  alignment: Alignment.centerRight,
                                  children: [
                                    _buildCheckBox(context),
                                    _buildCheckBox1(context),
                                    _buildCheckBox2(context),
                                    _buildCheckBox3(context),
                                    _buildCheckBox4(context)
                                  ]))),
                      SizedBox(height: 7.v),
                      _buildStack(context),
                      SizedBox(height: 8.v),
                      _buildRow(context),
                      SizedBox(height: 8.v),
                      _buildStack1(context),
                      SizedBox(height: 48.v),
                      _buildRow1(context),
                      SizedBox(height: 48.v),
                      Container(
                          height: 472.v,
                          width: 361.h,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage(ImageConstant.imgImage472x361),
                                  fit: BoxFit.cover))),
                      _buildStack2(context),
                      Container(
                          height: 725.v,
                          width: 361.h,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage(ImageConstant.imgImage725x361),
                                  fit: BoxFit.cover))),
                      Container(
                          height: 652.v,
                          width: 361.h,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage(ImageConstant.imgImage652x361),
                                  fit: BoxFit.cover))),
                      _buildStack3(context),
                      SizedBox(height: 1.v),
                      _buildStack4(context),
                      Container(
                          height: 705.v,
                          width: 361.h,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage(ImageConstant.imgImage705x361),
                                  fit: BoxFit.cover))),
                      Container(
                          height: 543.v,
                          width: 361.h,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage(ImageConstant.imgImage543x361),
                                  fit: BoxFit.cover))),
                      SizedBox(height: 1.v),
                      Container(
                          height: 1007.v,
                          width: 361.h,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      ImageConstant.imgImage1007x361),
                                  fit: BoxFit.cover))),
                      SizedBox(height: 272.v),
                      _buildHorizontalScroll(context)
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 90.v,
        title: Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Column(children: [
              AppbarTitleImage(
                  imagePath: ImageConstant.imgVectorGray9004x4,
                  margin: EdgeInsets.only(left: 59.h, right: 101.h)),
              SizedBox(height: 2.v),
              Padding(
                  padding: EdgeInsets.only(right: 101.h),
                  child: Row(children: [
                    AppbarTitleImage(imagePath: ImageConstant.imgVector),
                    AppbarTitleImage(
                        imagePath: ImageConstant.imgVectorGray900,
                        margin: EdgeInsets.only(left: 2.h)),
                    AppbarTitleImage(
                        imagePath: ImageConstant.imgVectorGray90014x23,
                        margin: EdgeInsets.only(left: 4.h)),
                    AppbarTitleImage(
                        imagePath: ImageConstant.imgVectorGray9004x4,
                        margin: EdgeInsets.only(left: 3.h))
                  ])),
              SizedBox(height: 13.v),
              SizedBox(
                  height: 41.160004.v,
                  width: 165.h,
                  child: Stack(alignment: Alignment.bottomLeft, children: [
                    AppbarSubtitle(
                        text: "lbl".tr,
                        margin: EdgeInsets.only(right: 113.h, bottom: 20.v)),
                    AppbarSubtitle(
                        text: "lbl2".tr,
                        margin: EdgeInsets.only(
                            left: 61.h, right: 97.h, bottom: 20.v)),
                    AppbarSubtitle(
                        text: "lbl49".tr,
                        margin: EdgeInsets.only(
                            left: 76.h, right: 51.h, bottom: 20.v)),
                    AppbarSubtitle(
                        text: "lbl2".tr,
                        margin: EdgeInsets.only(
                            left: 123.h, right: 35.h, bottom: 20.v)),
                    AppbarTitle(
                        text: "msg_ccsi".tr, margin: EdgeInsets.only(top: 20.v))
                  ]))
            ])),
        actions: [
          Container(
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.fromLTRB(16.h, 13.v, 16.h, 53.v),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(ImageConstant.imgMenu),
                      fit: BoxFit.cover)))
        ]);
  }

  /// Section Widget
  Widget _buildCheckBox(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: CustomCheckboxButton(
            alignment: Alignment.centerRight,
            value: checkBox,
            onChange: (value) {
              checkBox = value;
            }));
  }

  /// Section Widget
  Widget _buildCheckBox1(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: CustomCheckboxButton(
            alignment: Alignment.centerRight,
            value: checkBox1,
            onChange: (value) {
              checkBox1 = value;
            }));
  }

  /// Section Widget
  Widget _buildCheckBox2(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: CustomCheckboxButton(
            alignment: Alignment.centerRight,
            value: checkBox2,
            onChange: (value) {
              checkBox2 = value;
            }));
  }

  /// Section Widget
  Widget _buildCheckBox3(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: CustomCheckboxButton(
            alignment: Alignment.centerRight,
            text: "lbl_84".tr,
            value: checkBox3,
            onChange: (value) {
              checkBox3 = value;
            }));
  }

  /// Section Widget
  Widget _buildCheckBox4(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: CustomCheckboxButton(
            alignment: Alignment.center,
            value: checkBox4,
            onChange: (value) {
              checkBox4 = value;
            }));
  }

  /// Section Widget
  Widget _buildStack(BuildContext context) {
    return SizedBox(
        height: 76.v,
        width: 361.h,
        child: Stack(alignment: Alignment.centerLeft, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  height: 76.v,
                  width: 361.h,
                  decoration: BoxDecoration(
                      color: appTheme.gray10001,
                      borderRadius: BorderRadius.circular(12.h)))),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 36.h),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text("lbl5".tr,
                          style: CustomTextStyles.bodyMediumGray500),
                      Padding(
                          padding: EdgeInsets.only(left: 41.h),
                          child: Text("lbl_128".tr,
                              style: CustomTextStyles.bodyMediumGray80001))
                    ]),
                    SizedBox(height: 3.v),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text("lbl6".tr,
                          style: CustomTextStyles.bodyMediumGray500),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("lbl_202".tr,
                              style: CustomTextStyles.bodyMediumGray80001))
                    ])
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          SizedBox(
              height: 32.v,
              width: 85.h,
              child: Stack(alignment: Alignment.center, children: [
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 32.v,
                        width: 85.h,
                        decoration: BoxDecoration(
                            color: appTheme.gray10001,
                            borderRadius: BorderRadius.circular(16.h)))),
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        width: 69.h,
                        margin: EdgeInsets.fromLTRB(8.h, 4.v, 8.h, 3.v),
                        padding: EdgeInsets.symmetric(horizontal: 3.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.imgVectorBlack9001x10,
                                  height: 1.v,
                                  width: 10.h,
                                  margin:
                                      EdgeInsets.only(top: 11.v, bottom: 12.v)),
                              Text("lbl_1".tr,
                                  style: theme.textTheme.bodyLarge),
                              CustomImageView(
                                  imagePath: ImageConstant.imgVectorBlack900,
                                  height: 10.adaptSize,
                                  width: 10.adaptSize,
                                  margin:
                                      EdgeInsets.only(top: 6.v, bottom: 7.v))
                            ])))
              ])),
          Padding(
              padding: EdgeInsets.only(top: 4.v, bottom: 3.v),
              child: Text("lbl_12_000".tr, style: theme.textTheme.bodyLarge))
        ]));
  }

  /// Section Widget
  Widget _buildStack1(BuildContext context) {
    return SizedBox(
        height: 40.v,
        width: 361.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  height: 40.v,
                  width: 361.h,
                  decoration: BoxDecoration(
                      color: appTheme.yellow400,
                      borderRadius: BorderRadius.circular(8.h)))),
          Align(
              alignment: Alignment.center,
              child:
                  Text("lbl7".tr, style: CustomTextStyles.bodyMediumGray90001))
        ]));
  }

  /// Section Widget
  Widget _buildRow1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
              height: 40.v,
              width: 181.h,
              child: Stack(alignment: Alignment.center, children: [
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 40.v,
                        width: 181.h,
                        decoration: BoxDecoration(
                            color: appTheme.gray90003,
                            borderRadius: BorderRadius.circular(8.h)))),
                Align(
                    alignment: Alignment.center,
                    child: Text("lbl8".tr,
                        style: CustomTextStyles.bodyMediumWhiteA700))
              ])),
          SizedBox(
              height: 40.v,
              width: 181.h,
              child: Stack(alignment: Alignment.center, children: [
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 40.v,
                        width: 181.h,
                        decoration: BoxDecoration(
                            color: appTheme.gray50,
                            borderRadius: BorderRadius.circular(8.h)))),
                Align(
                    alignment: Alignment.center,
                    child: Text("lbl9".tr,
                        style: CustomTextStyles.bodyMediumGray500))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildStack2(BuildContext context) {
    return SizedBox(
        height: 683.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomLeft, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: 50.v,
                  width: double.maxFinite,
                  margin: EdgeInsets.only(bottom: 155.v),
                  decoration: BoxDecoration(color: appTheme.whiteA700))),
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 16.h, bottom: 169.v),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgVectorGray9004x4,
                        height: 4.adaptSize,
                        width: 4.adaptSize,
                        alignment: Alignment.centerRight),
                    SizedBox(height: 1.v),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgVector,
                          height: 14.v,
                          width: 13.h),
                      CustomImageView(
                          imagePath: ImageConstant.imgVectorGray900,
                          height: 14.adaptSize,
                          width: 14.adaptSize,
                          margin: EdgeInsets.only(left: 1.h)),
                      CustomImageView(
                          imagePath: ImageConstant.imgVectorGray90014x23,
                          height: 14.v,
                          width: 23.h,
                          margin: EdgeInsets.only(left: 3.h)),
                      CustomImageView(
                          imagePath: ImageConstant.imgVectorGray9004x4,
                          height: 14.v,
                          width: 3.h,
                          margin: EdgeInsets.only(left: 3.h))
                    ])
                  ]))),
          Align(
              alignment: Alignment.bottomRight,
              child: Container(
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(right: 16.h, bottom: 168.v),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ImageConstant.imgMenu),
                          fit: BoxFit.cover)))),
          Align(
              alignment: Alignment.center,
              child: Container(
                  height: 683.v,
                  width: 361.h,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ImageConstant.imgImage683x361),
                          fit: BoxFit.cover))))
        ]));
  }

  /// Section Widget
  Widget _buildStack3(BuildContext context) {
    return SizedBox(
        height: 2416.v,
        width: 361.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  height: 1065.v,
                  width: 361.h,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ImageConstant.imgImage1065x361),
                          fit: BoxFit.cover)))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: 1352.v,
                  width: 361.h,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ImageConstant.imgImage1352x361),
                          fit: BoxFit.cover))))
        ]));
  }

  /// Section Widget
  Widget _buildStack4(BuildContext context) {
    return SizedBox(
        height: 2162.v,
        width: 361.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  height: 1057.v,
                  width: 361.h,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ImageConstant.imgImage1057x361),
                          fit: BoxFit.cover)))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: 1106.v,
                  width: 361.h,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ImageConstant.imgImage1106x361),
                          fit: BoxFit.cover))))
        ]));
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
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 16.h),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant
                                            .imgVectorBlack90030x92,
                                        height: 30.v,
                                        width: 92.h,
                                        margin: EdgeInsets.only(bottom: 13.v)),
                                    Padding(
                                        padding: EdgeInsets.only(bottom: 13.v),
                                        child: Column(children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgVectorYellow400,
                                              height: 6.adaptSize,
                                              width: 6.adaptSize,
                                              alignment: Alignment.centerRight),
                                          SizedBox(height: 2.v),
                                          SizedBox(
                                              width: 91.h,
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
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
                                                        width: 21.adaptSize),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgVectorWhiteA70020x33,
                                                        height: 20.v,
                                                        width: 33.h),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgVectorWhiteA70020x5,
                                                        height: 20.v,
                                                        width: 5.h)
                                                  ]))
                                        ]))
                                  ]))),
                      SizedBox(height: 24.v),
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                        GestureDetector(
                            onTap: () {
                              onTapTxtWidget(context);
                            },
                            child: Text("lbl10".tr,
                                style: theme.textTheme.bodySmall)),
                        GestureDetector(
                            onTap: () {
                              onTapTxtWidget1(context);
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
                          padding: EdgeInsets.only(left: 377.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtWidget2(context);
                                    },
                                    child: Text("lbl13".tr,
                                        style:
                                            CustomTextStyles.bodySmallGray500)),
                                Padding(
                                    padding: EdgeInsets.only(left: 18.h),
                                    child: Text("lbl14".tr,
                                        style:
                                            CustomTextStyles.bodySmallGray500)),
                                Padding(
                                    padding: EdgeInsets.only(left: 16.h),
                                    child: Text("lbl15".tr,
                                        style:
                                            CustomTextStyles.bodySmallGray500)),
                                Padding(
                                    padding: EdgeInsets.only(left: 19.h),
                                    child: Text("lbl16".tr,
                                        style:
                                            CustomTextStyles.bodySmallGray500))
                              ])),
                      SizedBox(height: 38.v),
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                        Text("lbl_address".tr,
                            style: theme.textTheme.bodySmall),
                        Padding(
                            padding: EdgeInsets.only(left: 131.h),
                            child: Text("lbl_contact".tr,
                                style: theme.textTheme.bodySmall))
                      ]),
                      SizedBox(height: 9.v),
                      Padding(
                          padding: EdgeInsets.only(left: 377.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(
                                    height: 34.v,
                                    width: 160.h,
                                    child: Stack(
                                        alignment: Alignment.bottomLeft,
                                        children: [
                                          Align(
                                              alignment: Alignment.topCenter,
                                              child: Text("msg_34".tr,
                                                  style: theme
                                                      .textTheme.bodySmall)),
                                          Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Text("msg_2_b101".tr,
                                                  style: theme
                                                      .textTheme.bodySmall))
                                        ])),
                                Container(
                                    height: 32.v,
                                    width: 109.h,
                                    margin: EdgeInsets.only(left: 19.h),
                                    child: Stack(
                                        alignment: Alignment.bottomLeft,
                                        children: [
                                          Align(
                                              alignment: Alignment.topCenter,
                                              child: Text(
                                                  "msg_business_cami_kr".tr,
                                                  style: theme
                                                      .textTheme.bodySmall)),
                                          Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Text("lbl_02_861_6828".tr,
                                                  style: CustomTextStyles
                                                      .bodySmall11))
                                        ]))
                              ])),
                      SizedBox(height: 45.v),
                      SizedBox(
                          height: 34.v,
                          width: 241.h,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Text("lbl17".tr,
                                        style: theme.textTheme.bodySmall)),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text("msg".tr,
                                        style: theme.textTheme.bodySmall))
                              ])),
                      SizedBox(height: 15.v),
                      Text("msg_copyright_2023".tr,
                          style: theme.textTheme.bodySmall),
                      SizedBox(height: 39.v),
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
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

  /// Navigates to the noticesScreen when the action is triggered.
  onTapTxtWidget(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.noticesScreen);
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
