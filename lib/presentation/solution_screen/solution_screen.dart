import '../solution_screen/widgets/solutionlist_item_widget.dart';
import 'package:cami_lab/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class SolutionScreen extends StatelessWidget {
  const SolutionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: Column(children: [
                  _buildAppNavBar(context),
                  SizedBox(height: 11.v),
                  Text("lbl90".tr, style: CustomTextStyles.bodyMediumGray90004),
                  SizedBox(height: 18.v),
                  Text("lbl115".tr, style: CustomTextStyles.titleLargeBlack900),
                  SizedBox(height: 19.v),
                  SizedBox(
                      height: 47.v,
                      width: 111.h,
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                        Align(
                            alignment: Alignment.topCenter,
                            child: Text("lbl136".tr,
                                style: theme.textTheme.bodyLarge)),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Text("lbl137".tr,
                                style: theme.textTheme.bodyLarge))
                      ])),
                  SizedBox(height: 32.v),
                  _buildWidgetRow(context),
                  SizedBox(height: 32.v),
                  _buildViewStack(context),
                  SizedBox(height: 131.v),
                  Text("lbl142".tr,
                      style: CustomTextStyles.bodyLargeNanumSquareNeo),
                  SizedBox(height: 35.v),
                  _buildSolutionList(context),
                  SizedBox(height: 128.v),
                  _buildVectorHorizontalScroll(context)
                ])))));
  }

  /// Section Widget
  Widget _buildAppNavBar(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 3952.h),
            child: IntrinsicWidth(
                child: SizedBox(
                    height: 50.v,
                    width: double.maxFinite,
                    child: Stack(alignment: Alignment.center, children: [
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              height: 50.v,
                              width: double.maxFinite,
                              decoration:
                                  BoxDecoration(color: appTheme.whiteA700))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.h, vertical: 13.v),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: 2.v, bottom: 1.v),
                                        child: Column(children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgVectorGray9004x4,
                                              height: 4.adaptSize,
                                              width: 4.adaptSize,
                                              alignment: Alignment.centerRight),
                                          SizedBox(height: 1.v),
                                          Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
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
                                                    width: 14.adaptSize),
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgVectorGray90014x23,
                                                    height: 14.v,
                                                    width: 23.h),
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgVectorGray9004x4,
                                                    height: 14.v,
                                                    width: 3.h)
                                              ])
                                        ])),
                                    GestureDetector(
                                        onTap: () {
                                          onTapIMAGE(context);
                                        },
                                        child: Container(
                                            height: 24.adaptSize,
                                            width: 24.adaptSize,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        ImageConstant.imgMenu),
                                                    fit: BoxFit.cover))))
                                  ])))
                    ])))));
  }

  /// Section Widget
  Widget _buildWidgetRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 31.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 43.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("lbl138".tr, style: theme.textTheme.bodyLarge),
                    SizedBox(height: 15.v),
                    SizedBox(
                        height: 26.v,
                        width: 171.h,
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          Align(
                              alignment: Alignment.topCenter,
                              child: Text("msg54".tr,
                                  style: CustomTextStyles.bodySmallBlack9009)),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Text("msg55".tr,
                                  style: CustomTextStyles.bodySmallBlack9009))
                        ])),
                    Text("lbl139".tr,
                        style: CustomTextStyles.bodySmallBlack9009)
                  ])),
          Container(
              height: 167.v,
              width: 130.h,
              margin: EdgeInsets.only(left: 11.h),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(ImageConstant.imgImage167x130),
                      fit: BoxFit.cover)))
        ]));
  }

  /// Section Widget
  Widget _buildViewStack(BuildContext context) {
    return SizedBox(
        height: 129.v,
        width: 361.h,
        child: Stack(alignment: Alignment.centerLeft, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  height: 129.v,
                  width: 361.h,
                  decoration: BoxDecoration(
                      color: appTheme.gray50,
                      borderRadius: BorderRadius.circular(8.h)))),
          Align(
              alignment: Alignment.centerLeft,
              child: Container(
                  height: 128.v,
                  width: 142.h,
                  margin: EdgeInsets.only(left: 21.h),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ImageConstant.imgImage128x142),
                          fit: BoxFit.cover)))),
          Align(
              alignment: Alignment.topRight,
              child: Padding(
                  padding: EdgeInsets.only(top: 23.v, right: 29.h),
                  child: Text("lbl140".tr, style: theme.textTheme.bodyLarge))),
          Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                  padding: EdgeInsets.only(right: 29.h, bottom: 51.v),
                  child: Text("msg56".tr,
                      style: CustomTextStyles.bodySmallBlack9009))),
          Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                  padding: EdgeInsets.only(right: 28.h, bottom: 38.v),
                  child: Text("msg57".tr,
                      style: CustomTextStyles.bodySmallBlack9009))),
          Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                  padding: EdgeInsets.only(right: 29.h, bottom: 24.v),
                  child: Text("lbl141".tr,
                      style: CustomTextStyles.bodySmallBlack9009)))
        ]));
  }

  /// Section Widget
  Widget _buildSolutionList(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 24.v);
            },
            itemCount: 2,
            itemBuilder: (context, index) {
              return SolutionlistItemWidget();
            }));
  }

  /// Section Widget
  Widget _buildVectorHorizontalScroll(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: IntrinsicWidth(
            child: Container(
                margin: EdgeInsets.only(right: 1.h),
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
                          padding: EdgeInsets.only(left: 3968.h),
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
                          padding: EdgeInsets.only(left: 3968.h),
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

  /// Navigates to the menuBarScreen when the action is triggered.
  onTapIMAGE(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.menuBarScreen);
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
