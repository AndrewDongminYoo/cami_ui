import '../naming_screen/widgets/slider_item_widget.dart';
import 'package:cami_lab/core/app_export.dart';
import 'package:cami_lab/widgets/custom_elevated_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
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
                    child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgAppNavBar,
                      height: 50.v,
                      width: 393.h),
                  SizedBox(height: 48.v),
                  Text("lbl38".tr, style: CustomTextStyles.titleLargeBlack900),
                  SizedBox(height: 70.v),
                  Text("lbl23".tr, style: theme.textTheme.titleLarge),
                  SizedBox(height: 18.v),
                  Text("lbl39".tr, style: CustomTextStyles.bodyLarge18),
                  SizedBox(height: 29.v),
                  SizedBox(
                      height: 283.v,
                      width: 289.h,
                      child: Stack(alignment: Alignment.topCenter, children: [
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 27.h),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text("lbl33".tr,
                                          style: CustomTextStyles
                                              .headlineSmallBlack900),
                                      SizedBox(height: 196.v),
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text("lbl_a".tr,
                                                style:
                                                    theme.textTheme.bodyLarge),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(left: 2.h),
                                                child: Text("lbl36".tr,
                                                    style: theme
                                                        .textTheme.bodyLarge)),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(left: 3.h),
                                                child: Text("lbl35".tr,
                                                    style: theme
                                                        .textTheme.bodyLarge))
                                          ]),
                                      _buildAddress(context,
                                          userAddress: "lbl33".tr,
                                          userContact: "lbl34".tr)
                                    ]))),
                        Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                                margin:
                                    EdgeInsets.only(top: 67.v, bottom: 83.v),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 56.h, vertical: 16.v),
                                decoration: AppDecoration.fillGray.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder8),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgImage100x100,
                                          height: 100.adaptSize,
                                          width: 100.adaptSize,
                                          radius: BorderRadius.circular(50.h)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              top: 15.v,
                                              right: 2.h,
                                              bottom: 11.v),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("lbl36".tr,
                                                    style: CustomTextStyles
                                                        .bodyMediumBlack900),
                                                SizedBox(height: 2.v),
                                                Text("lbl_5_2".tr,
                                                    style: CustomTextStyles
                                                        .bodyMediumBlack900),
                                                SizedBox(height: 3.v),
                                                Text("lbl37".tr,
                                                    style: theme
                                                        .textTheme.bodyLarge)
                                              ]))
                                    ])))
                      ])),
                  SizedBox(height: 78.v),
                  _buildSlider(context),
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
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 42.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomElevatedButton(
                                height: 56.v,
                                width: 144.h,
                                text: "lbl40".tr,
                                buttonStyle: CustomButtonStyles.fillPrimary,
                                buttonTextStyle: CustomTextStyles
                                    .bodyMediumOnErrorContainer),
                            CustomElevatedButton(
                                height: 56.v,
                                width: 144.h,
                                text: "lbl32".tr,
                                margin: EdgeInsets.only(left: 21.h),
                                buttonStyle: CustomButtonStyles.fillBlack)
                          ])),
                  SizedBox(height: 178.v),
                  _buildFooter(context)
                ])))));
  }

  /// Section Widget
  Widget _buildSlider(BuildContext context) {
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
          return SliderItemWidget();
        });
  }

  /// Section Widget
  Widget _buildFooter(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 60.v),
        decoration: AppDecoration.fillOnErrorContainer,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              imagePath: ImageConstant.imgTicket, height: 30.v, width: 92.h),
          SizedBox(height: 37.v),
          Row(children: [
            Text("lbl10".tr, style: theme.textTheme.bodySmall),
            GestureDetector(
                onTap: () {
                  onTapTxtWidget(context);
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
          _buildAddress(context,
              userAddress: "lbl_address".tr, userContact: "lbl_contact".tr),
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
          Text("lbl17".tr, style: theme.textTheme.bodySmall),
          Text("msg".tr, style: theme.textTheme.bodySmall),
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

  /// Common widget
  Widget _buildAddress(
    BuildContext context, {
    required String userAddress,
    required String userContact,
  }) {
    return Row(children: [
      Text(userAddress,
          style: theme.textTheme.bodySmall!
              .copyWith(color: theme.colorScheme.onPrimaryContainer)),
      Padding(
          padding: EdgeInsets.only(left: 131.h),
          child: Text(userContact,
              style: theme.textTheme.bodySmall!
                  .copyWith(color: theme.colorScheme.onPrimaryContainer)))
    ]);
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
