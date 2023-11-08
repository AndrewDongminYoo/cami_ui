import '../check_up_list_screen/widgets/userprofileview_item_widget.dart';
import 'package:cami_lab/core/app_export.dart';
import 'package:cami_lab/widgets/app_bar/appbar_leading_image.dart';
import 'package:cami_lab/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:cami_lab/widgets/app_bar/appbar_title_image.dart';
import 'package:cami_lab/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class CheckUpListScreen extends StatelessWidget {
  const CheckUpListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 11.v),
                    child: Column(children: [
                      SizedBox(
                          height: 67.v,
                          width: 163.h,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Text("lbl45".tr,
                                        style: theme.textTheme.headlineSmall)),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text("lbl46".tr,
                                        style: theme.textTheme.headlineSmall))
                              ])),
                      SizedBox(height: 39.v),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(top: 5.v, bottom: 8.v),
                                child: Text("lbl47".tr,
                                    style: CustomTextStyles.bodySmallBlack900)),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 22.h, top: 5.v, bottom: 8.v),
                                child: Text("lbl48".tr,
                                    style: CustomTextStyles.bodySmallBlack900)),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 22.h, top: 5.v, bottom: 8.v),
                                child: Text("lbl49".tr,
                                    style: CustomTextStyles.bodySmallBlack900)),
                            Container(
                                height: 32.v,
                                width: 50.h,
                                margin: EdgeInsets.only(left: 14.h),
                                child: Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                              height: 32.v,
                                              width: 50.h,
                                              decoration: BoxDecoration(
                                                  color: appTheme.black900,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          16.h)))),
                                      Align(
                                          alignment: Alignment.topCenter,
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(top: 5.v),
                                              child: Text("lbl3".tr,
                                                  style: theme
                                                      .textTheme.bodySmall)))
                                    ]))
                          ]),
                      SizedBox(height: 60.v),
                      _buildUserProfileView(context),
                      SizedBox(height: 128.v),
                      _buildCheckUpList(context)
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 70.v,
        leadingWidth: 29.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgVector,
            margin: EdgeInsets.only(left: 16.h, top: 21.v, bottom: 34.v)),
        title: Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Column(children: [
              AppbarTitleImage(
                  imagePath: ImageConstant.imgVectorGray9004x4,
                  margin: EdgeInsets.only(left: 44.h, right: 143.h)),
              SizedBox(height: 2.v),
              Padding(
                  padding: EdgeInsets.only(right: 143.h),
                  child: Row(children: [
                    AppbarTitleImage(imagePath: ImageConstant.imgVectorGray900),
                    AppbarTitleImage(
                        imagePath: ImageConstant.imgVectorGray90014x23,
                        margin: EdgeInsets.only(left: 4.h)),
                    AppbarTitleImage(
                        imagePath: ImageConstant.imgVectorGray9004x4,
                        margin: EdgeInsets.only(left: 3.h))
                  ])),
              SizedBox(height: 13.v),
              AppbarSubtitleOne(
                  text: "lbl44".tr, margin: EdgeInsets.only(left: 138.h))
            ])),
        actions: [
          Container(
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.fromLTRB(16.h, 13.v, 16.h, 33.v),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(ImageConstant.imgMenu),
                      fit: BoxFit.cover)))
        ]);
  }

  /// Section Widget
  Widget _buildUserProfileView(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 16.v);
            },
            itemCount: 3,
            itemBuilder: (context, index) {
              return UserprofileviewItemWidget(onTapView: () {
                onTapView(context);
              });
            }));
  }

  /// Section Widget
  Widget _buildCheckUpList(BuildContext context) {
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
                          padding: EdgeInsets.only(right: 51.h),
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
                          child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
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
                                                      style: theme.textTheme
                                                          .bodySmall)),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  child: Text("msg_2_b101".tr,
                                                      style: theme
                                                          .textTheme.bodySmall))
                                            ]))),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                        height: 32.v,
                                        width: 109.h,
                                        margin: EdgeInsets.only(right: 7.h),
                                        child: Stack(
                                            alignment: Alignment.bottomLeft,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  child: Text(
                                                      "msg_business_cami_kr".tr,
                                                      style: theme.textTheme
                                                          .bodySmall)),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  child: Text(
                                                      "lbl_02_861_6828".tr,
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

  /// Navigates to the checkUpDetailsScreen when the action is triggered.
  onTapView(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.checkUpDetailsScreen);
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
