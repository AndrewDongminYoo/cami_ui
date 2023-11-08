import 'package:cami_lab/core/app_export.dart';
import 'package:cami_lab/widgets/app_bar/appbar_leading_image.dart';
import 'package:cami_lab/widgets/app_bar/appbar_title_image.dart';
import 'package:cami_lab/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class FaqScreen extends StatelessWidget {
  const FaqScreen({Key? key}) : super(key: key);

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
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
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
                                            top: 3.v, bottom: 10.v)),
                                    Padding(
                                        padding: EdgeInsets.only(left: 111.h),
                                        child: Text("lbl11".tr,
                                            style:
                                                CustomTextStyles.bodyLarge18))
                                  ]))),
                      SizedBox(height: 16.v),
                      Container(
                          height: 1.v,
                          width: 361.h,
                          decoration:
                              BoxDecoration(color: appTheme.blueGray900)),
                      _buildUserProfile(context),
                      _buildRecentOrders(context),
                      SizedBox(height: 9.v),
                      _buildReviews(context),
                      SizedBox(height: 136.v),
                      _buildDoctorReviews(context)
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 29.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgVector,
            margin: EdgeInsets.only(left: 16.h, top: 21.v, bottom: 14.v)),
        title: Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Column(children: [
              AppbarTitleImage(
                  imagePath: ImageConstant.imgVectorGray9004x4,
                  margin: EdgeInsets.only(left: 44.h)),
              SizedBox(height: 2.v),
              Row(children: [
                AppbarTitleImage(imagePath: ImageConstant.imgVectorGray900),
                AppbarTitleImage(
                    imagePath: ImageConstant.imgVectorGray90014x23,
                    margin: EdgeInsets.only(left: 4.h)),
                AppbarTitleImage(
                    imagePath: ImageConstant.imgVectorGray9004x4,
                    margin: EdgeInsets.only(left: 3.h))
              ])
            ])),
        actions: [
          Container(
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(ImageConstant.imgMenu),
                      fit: BoxFit.cover)))
        ]);
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return SizedBox(
        height: 49.v,
        width: 361.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  height: 49.v,
                  width: 361.h,
                  decoration: BoxDecoration(color: appTheme.gray100))),
          Padding(
              padding: EdgeInsets.all(8.h),
              child: _buildQ(context,
                  userName: "lbl_q".tr, userMessage: "lbl55".tr))
        ]));
  }

  /// Section Widget
  Widget _buildRecentOrders(BuildContext context) {
    return SizedBox(
        height: 496.v,
        width: 361.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  height: 496.v,
                  width: 361.h,
                  decoration: BoxDecoration(color: appTheme.gray50))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: 1.v,
                  width: 361.h,
                  decoration: BoxDecoration(color: appTheme.blueGray900))),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 20.h, top: 23.v),
                  child: Text("lbl56".tr, style: theme.textTheme.bodyMedium))),
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  width: 314.h,
                  margin: EdgeInsets.only(top: 55.v),
                  child: Text("msg_1_explorer".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style:
                          theme.textTheme.bodyMedium!.copyWith(height: 2.00)))),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 20.h, top: 107.v),
                  child: Text("msg17".tr, style: theme.textTheme.bodyMedium))),
          Align(
              alignment: Alignment.topLeft,
              child: Container(
                  width: 307.h,
                  margin: EdgeInsets.only(left: 20.h, top: 139.v),
                  child: Text("msg_22".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style:
                          theme.textTheme.bodyMedium!.copyWith(height: 2.00)))),
          Align(
              alignment: Alignment.topLeft,
              child: Container(
                  width: 304.h,
                  margin: EdgeInsets.only(left: 20.h, top: 193.v),
                  child: Text("msg_32".tr,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style:
                          theme.textTheme.bodyMedium!.copyWith(height: 2.00)))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding:
                      EdgeInsets.only(left: 20.h, right: 23.h, bottom: 31.v),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            width: 317.h,
                            child: Text("msg18".tr,
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.bodyMedium!
                                    .copyWith(height: 2.00))),
                        SizedBox(height: 24.v),
                        Text("lbl57".tr, style: theme.textTheme.bodyMedium)
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildReviews(BuildContext context) {
    return SizedBox(
        height: 342.v,
        width: 361.h,
        child: Stack(alignment: Alignment.topCenter, children: [
          Padding(
              padding: EdgeInsets.fromLTRB(8.h, 107.v, 8.h, 194.v),
              child: _buildQ(context,
                  userName: "lbl_q".tr, userMessage: "msg19".tr)),
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  height: 1.v,
                  width: 361.h,
                  margin: EdgeInsets.only(top: 153.v),
                  decoration: BoxDecoration(color: appTheme.blueGray900))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: 1.v,
                  width: 361.h,
                  margin: EdgeInsets.only(bottom: 139.v),
                  decoration: BoxDecoration(color: appTheme.blueGray900))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: 1.v,
                  width: 361.h,
                  margin: EdgeInsets.only(bottom: 90.v),
                  decoration: BoxDecoration(color: appTheme.blueGray900))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: 1.v,
                  width: 361.h,
                  margin: EdgeInsets.only(bottom: 41.v),
                  decoration: BoxDecoration(color: appTheme.blueGray900))),
          SizedBox()
        ]));
  }

  /// Section Widget
  Widget _buildDoctorReviews(BuildContext context) {
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
                        Padding(
                            padding: EdgeInsets.only(left: 17.h),
                            child: Text("lbl11".tr,
                                style: theme.textTheme.bodySmall)),
                        Padding(
                            padding: EdgeInsets.only(left: 17.h),
                            child: Text("lbl12".tr,
                                style: theme.textTheme.bodySmall))
                      ]),
                      SizedBox(height: 9.v),
                      Padding(
                          padding: EdgeInsets.only(left: 890.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtWidget1(context);
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
                          padding: EdgeInsets.only(left: 890.h),
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

  /// Common widget
  Widget _buildQ(
    BuildContext context, {
    required String userName,
    required String userMessage,
  }) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
              padding: EdgeInsets.only(top: 10.v, bottom: 13.v),
              child: Text(userName,
                  style: CustomTextStyles.bodyMediumNanumSquareNeo_1
                      .copyWith(color: appTheme.black900))),
          Container(
              width: 262.h,
              margin: EdgeInsets.only(left: 9.h),
              child: Text(userMessage,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyMediumNanumSquareNeo_1
                      .copyWith(color: appTheme.black900, height: 1.43))),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgLocation,
              height: 6.v,
              width: 12.h,
              margin: EdgeInsets.only(top: 15.v, right: 8.h, bottom: 17.v))
        ]);
  }

  /// Navigates to the noticesScreen when the action is triggered.
  onTapTxtWidget(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.noticesScreen);
  }

  /// Navigates to the contactUsRegisterScreen when the action is triggered.
  onTapTxtWidget1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.contactUsRegisterScreen);
  }
}
