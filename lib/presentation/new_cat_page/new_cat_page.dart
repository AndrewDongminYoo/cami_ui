import 'package:cami_lab/core/app_export.dart';
import 'package:cami_lab/widgets/custom_drop_down.dart';
import 'package:cami_lab/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class NewCatPage extends StatefulWidget {
  const NewCatPage({Key? key}) : super(key: key);

  @override
  NewCatPageState createState() => NewCatPageState();
}

// ignore_for_file: must_be_immutable
class NewCatPageState extends State<NewCatPage>
    with AutomaticKeepAliveClientMixin<NewCatPage> {
  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    child: Column(children: [
                  SizedBox(height: 33.v),
                  Column(children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Text("lbl99".tr,
                                style:
                                    CustomTextStyles.bodyMediumBluegray900))),
                    SizedBox(height: 9.v),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.h),
                        child: CustomDropDown(
                            icon: Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 11.h, vertical: 16.v),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgArrowDown,
                                    height: 8.v,
                                    width: 12.h)),
                            items: dropdownItemList,
                            onChanged: (value) {})),
                    SizedBox(height: 33.v),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Text("lbl100".tr,
                                style:
                                    CustomTextStyles.bodyMediumBluegray900))),
                    SizedBox(height: 9.v),
                    _buildEighteen(context),
                    SizedBox(height: 64.v),
                    _buildWidget(context),
                    SizedBox(height: 128.v),
                    _buildVector(context)
                  ])
                ])))));
  }

  /// Section Widget
  Widget _buildEighteen(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
              height: 36.v,
              width: 177.h,
              child: Stack(alignment: Alignment.center, children: [
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 36.v,
                        width: 177.h,
                        decoration: BoxDecoration(
                            color: appTheme.indigo200,
                            borderRadius: BorderRadius.circular(8.h)))),
                Align(
                    alignment: Alignment.center,
                    child: Text("lbl101".tr, style: theme.textTheme.bodyMedium))
              ])),
          Container(
              height: 36.v,
              width: 177.h,
              margin: EdgeInsets.only(left: 8.h),
              child: Stack(alignment: Alignment.center, children: [
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 36.v,
                        width: 177.h,
                        decoration: BoxDecoration(
                            color: appTheme.gray10001,
                            borderRadius: BorderRadius.circular(8.h)))),
                Align(
                    alignment: Alignment.center,
                    child: Text("lbl102".tr, style: theme.textTheme.bodyMedium))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildWidget(BuildContext context) {
    return SizedBox(
        height: 40.v,
        width: 361.h,
        child: Stack(alignment: Alignment.center, children: [
          CustomIconButton(
              height: 40.v,
              width: 361.h,
              alignment: Alignment.center,
              child: CustomImageView()),
          Align(
              alignment: Alignment.center,
              child: Text("lbl103".tr,
                  style: CustomTextStyles.bodyMediumGray90001))
        ]));
  }

  /// Section Widget
  Widget _buildVector(BuildContext context) {
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
                                padding: EdgeInsets.only(left: 18.h),
                                child: Text("lbl11".tr,
                                    style: theme.textTheme.bodySmall))),
                        Padding(
                            padding: EdgeInsets.only(left: 18.h),
                            child: Text("lbl12".tr,
                                style: theme.textTheme.bodySmall))
                      ]),
                      SizedBox(height: 10.v),
                      Padding(
                          padding: EdgeInsets.only(left: 1916.h),
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
                                    padding: EdgeInsets.only(left: 19.h),
                                    child: Text("lbl14".tr,
                                        style:
                                            CustomTextStyles.bodySmallGray500)),
                                Padding(
                                    padding: EdgeInsets.only(left: 17.h),
                                    child: Text("lbl15".tr,
                                        style:
                                            CustomTextStyles.bodySmallGray500)),
                                Padding(
                                    padding: EdgeInsets.only(left: 20.h),
                                    child: Text("lbl16".tr,
                                        style:
                                            CustomTextStyles.bodySmallGray500))
                              ])),
                      SizedBox(height: 38.v),
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                        Text("lbl_address".tr,
                            style: theme.textTheme.bodySmall),
                        Padding(
                            padding: EdgeInsets.only(left: 132.h),
                            child: Text("lbl_contact".tr,
                                style: theme.textTheme.bodySmall))
                      ]),
                      SizedBox(height: 9.v),
                      Padding(
                          padding: EdgeInsets.only(left: 1916.h),
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
                                    margin: EdgeInsets.only(left: 20.h),
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
                      SizedBox(height: 46.v),
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
                      SizedBox(height: 38.v),
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
