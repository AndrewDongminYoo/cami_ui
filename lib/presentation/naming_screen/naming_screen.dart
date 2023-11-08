import '../naming_screen/widgets/carousel_item_widget.dart';
import 'package:cami_lab/core/app_export.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class NamingScreen extends StatelessWidget {
  NamingScreen({Key? key}) : super(key: key);

  int sliderIndex = 1;

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
                      SizedBox(height: 46.v),
                      _buildCatProfile(context),
                      SizedBox(height: 78.v),
                      _buildCarousel(context),
                      SizedBox(height: 31.v),
                      SizedBox(
                          height: 24.v,
                          child: AnimatedSmoothIndicator(
                              activeIndex: sliderIndex,
                              count: 1,
                              axisDirection: Axis.horizontal,
                              effect: ScrollingDotsEffect(
                                  spacing: 8,
                                  activeDotColor: appTheme.black900,
                                  dotColor: appTheme.black900,
                                  dotHeight: 8.v,
                                  dotWidth: 8.h))),
                      SizedBox(height: 56.v),
                      _buildButtons(context),
                      SizedBox(height: 191.v),
                      _buildFooter(context)
                    ])))));
  }

  /// Section Widget
  Widget _buildAppNavBar(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: IntrinsicWidth(
            child: Padding(
                padding: EdgeInsets.only(right: 1178.h),
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
                                    padding: EdgeInsets.only(left: 1162.h),
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
                  Container(
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin:
                          EdgeInsets.only(left: 273.h, top: 13.v, bottom: 13.v),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(ImageConstant.imgMenu),
                              fit: BoxFit.cover)))
                ]))));
  }

  /// Section Widget
  Widget _buildCatProfile(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(right: 32.h),
        child: IntrinsicWidth(
            child: SizedBox(
                height: 484.v,
                width: 361.h,
                child: Stack(alignment: Alignment.bottomLeft, children: [
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Text("lbl33".tr,
                            style: CustomTextStyles.headlineSmallBlack900),
                        SizedBox(height: 196.v),
                        Align(
                            alignment: Alignment.centerRight,
                            child: SizedBox(
                                height: 51.v,
                                width: 230.h,
                                child: Stack(
                                    alignment: Alignment.bottomLeft,
                                    children: [
                                      Align(
                                          alignment: Alignment.topLeft,
                                          child: Text("lbl_a".tr,
                                              style:
                                                  theme.textTheme.bodyLarge)),
                                      Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Text("lbl34".tr,
                                              style:
                                                  theme.textTheme.bodyLarge)),
                                      Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Text("lbl33".tr,
                                              style: CustomTextStyles
                                                  .bodyLargeDeeporange400)),
                                      Align(
                                          alignment: Alignment.topLeft,
                                          child: Text("lbl35".tr,
                                              style:
                                                  theme.textTheme.bodyLarge)),
                                      Align(
                                          alignment: Alignment.topLeft,
                                          child: Text("lbl36".tr,
                                              style: theme.textTheme.bodyLarge))
                                    ])))
                      ])),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                          padding: EdgeInsets.only(bottom: 84.v),
                          child: Row(children: [
                            Container(
                                height: 132.v,
                                width: 289.h,
                                decoration: BoxDecoration(
                                    color: appTheme.gray10001,
                                    borderRadius: BorderRadius.circular(8.h))),
                            Container(
                                height: 100.v,
                                width: 174.h,
                                margin: EdgeInsets.only(
                                    left: 837.h, top: 16.v, bottom: 16.v),
                                child: Stack(
                                    alignment: Alignment.topLeft,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Row(children: [
                                            Container(
                                                height: 100.adaptSize,
                                                width: 100.adaptSize,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50.h),
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            ImageConstant
                                                                .imgImage100x100),
                                                        fit: BoxFit.cover))),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 16.h,
                                                    top: 64.v,
                                                    bottom: 11.v),
                                                child: Text("lbl37".tr,
                                                    style: theme
                                                        .textTheme.bodyLarge))
                                          ])),
                                      Align(
                                          alignment: Alignment.topLeft,
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(top: 15.v),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text("lbl36".tr,
                                                        style: theme.textTheme
                                                            .bodyMedium),
                                                    SizedBox(height: 3.v),
                                                    Text("lbl_5_2".tr,
                                                        style: theme.textTheme
                                                            .bodyMedium)
                                                  ])))
                                    ]))
                          ]))),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                          padding: EdgeInsets.symmetric(vertical: 2.v),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            Text("lbl38".tr,
                                style: CustomTextStyles.titleLargeBlack900),
                            SizedBox(height: 70.v),
                            Text("lbl23".tr, style: theme.textTheme.titleLarge),
                            SizedBox(height: 18.v),
                            Text("lbl39".tr,
                                style: CustomTextStyles.bodyLarge18),
                            SizedBox(height: 62.v)
                          ])))
                ]))));
  }

  /// Section Widget
  Widget _buildCarousel(BuildContext context) {
    return CarouselSlider.builder(
        options: CarouselOptions(
            height: 186.v,
            initialPage: 0,
            autoPlay: true,
            viewportFraction: 1.0,
            enableInfiniteScroll: false,
            scrollDirection: Axis.horizontal,
            onPageChanged: (index, reason) {
              sliderIndex = index;
            }),
        itemCount: 1,
        itemBuilder: (context, index, realIndex) {
          return CarouselItemWidget();
        });
  }

  /// Section Widget
  Widget _buildButtons(BuildContext context) {
    return SizedBox(
        height: 56.v,
        width: 361.h,
        child: Stack(alignment: Alignment.centerRight, children: [
          Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                  height: 56.v,
                  width: 144.h,
                  child: Stack(alignment: Alignment.centerLeft, children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                            height: 56.v,
                            width: 144.h,
                            decoration: BoxDecoration(
                                color: appTheme.yellow400,
                                borderRadius: BorderRadius.circular(8.h)))),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text("lbl40".tr,
                            style: CustomTextStyles.bodyMediumGray90001))
                  ]))),
          Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                  height: 56.v,
                  width: 144.h,
                  child: Stack(alignment: Alignment.centerLeft, children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                            height: 56.v,
                            width: 144.h,
                            decoration: BoxDecoration(
                                color: appTheme.black900,
                                borderRadius: BorderRadius.circular(8.h)))),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text("lbl32".tr,
                            style: CustomTextStyles.bodyMediumWhiteA700))
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildFooter(BuildContext context) {
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
