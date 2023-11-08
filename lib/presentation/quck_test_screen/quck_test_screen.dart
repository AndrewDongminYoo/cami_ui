import 'package:cami_lab/core/app_export.dart';
import 'package:cami_lab/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class QuckTestScreen extends StatelessWidget {
  const QuckTestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 52.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Column(children: [
                    Text("lbl18".tr,
                        style: CustomTextStyles
                            .headlineSmallNanumSquareNeoBlack900),
                    SizedBox(height: 66.v),
                    Container(
                        height: 257.v,
                        width: 241.h,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage(ImageConstant.imgImage257x241),
                                fit: BoxFit.cover))),
                    SizedBox(height: 34.v),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 53.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("lbl19".tr,
                                  style: CustomTextStyles
                                      .headlineSmallNanumSquareNeoGray90001),
                              Padding(
                                  padding: EdgeInsets.only(left: 8.h),
                                  child: Text("lbl20".tr,
                                      style: theme.textTheme.titleLarge))
                            ])),
                    SizedBox(height: 18.v),
                    _buildUserDetails(context),
                    SizedBox(height: 30.v),
                    Container(
                        width: 296.h,
                        margin: EdgeInsets.symmetric(horizontal: 48.h),
                        child: Text("msg3".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.bodyMedium!
                                .copyWith(height: 1.43))),
                    SizedBox(height: 2.v),
                    Container(
                        width: 345.h,
                        margin: EdgeInsets.symmetric(horizontal: 23.h),
                        child: Text("msg4".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.bodyMedium!
                                .copyWith(height: 1.43))),
                    SizedBox(height: 15.v),
                    _buildWidget(context, userName: "lbl22".tr),
                    SizedBox(height: 64.v),
                    Container(
                        height: 257.v,
                        width: 241.h,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(ImageConstant.imgImage4),
                                fit: BoxFit.cover))),
                    SizedBox(height: 35.v),
                    Text("lbl23".tr,
                        style: CustomTextStyles.titleLargeGray90001),
                    SizedBox(height: 18.v),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text("lbl24".tr, style: theme.textTheme.bodyMedium),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("lbl25".tr,
                              style: theme.textTheme.bodyMedium)),
                      Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Text("lbl26".tr,
                              style: theme.textTheme.bodyMedium))
                    ]),
                    SizedBox(height: 30.v),
                    Container(
                        width: 347.h,
                        margin: EdgeInsets.symmetric(horizontal: 22.h),
                        child: Text("msg5".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.bodyMedium!
                                .copyWith(height: 1.43))),
                    SizedBox(height: 2.v),
                    Container(
                        width: 315.h,
                        margin: EdgeInsets.only(left: 39.h, right: 38.h),
                        child: Text("msg6".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.bodyMedium!
                                .copyWith(height: 1.43))),
                    SizedBox(height: 15.v),
                    _buildWidget(context, userName: "lbl22".tr,
                        onTapIconButton: () {
                      onTapIconButton(context);
                    }),
                    SizedBox(height: 64.v),
                    Container(
                        height: 257.v,
                        width: 241.h,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(ImageConstant.imgImage5),
                                fit: BoxFit.cover))),
                    SizedBox(height: 34.v),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text("lbl27".tr,
                          style: CustomTextStyles
                              .headlineSmallNanumSquareNeoGray90001),
                      Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Text("lbl28".tr,
                              style: CustomTextStyles
                                  .headlineSmallNanumSquareNeoDeeporange400)),
                      Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Text("lbl29".tr,
                              style: CustomTextStyles
                                  .headlineSmallNanumSquareNeoGray90001)),
                      Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Text("lbl30".tr,
                              style: theme.textTheme.titleLarge)),
                      Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Text("lbl29".tr,
                              style: CustomTextStyles
                                  .headlineSmallNanumSquareNeoGray90001))
                    ]),
                    SizedBox(height: 18.v),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 39.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(bottom: 20.v),
                                  child: Text("lbl31".tr,
                                      style: theme.textTheme.bodyMedium)),
                              Container(
                                  width: 185.h,
                                  margin: EdgeInsets.only(left: 6.h),
                                  child: Text("msg7".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles
                                          .bodyMediumDeeporange400
                                          .copyWith(height: 1.43)))
                            ])),
                    SizedBox(height: 30.v),
                    Container(
                        width: 350.h,
                        margin: EdgeInsets.only(left: 21.h, right: 20.h),
                        child: Text("msg8".tr,
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.bodyMedium!
                                .copyWith(height: 1.43))),
                    SizedBox(height: 9.v),
                    _buildWidget(context, userName: "lbl22".tr),
                    SizedBox(height: 122.v),
                    _buildHorizontalScroll(context)
                  ])))
                ]))));
  }

  /// Section Widget
  Widget _buildUserDetails(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 28.h, right: 32.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("lbl21".tr, style: CustomTextStyles.bodyMediumDeeporange400),
          Padding(
              padding: EdgeInsets.only(left: 7.h),
              child: Text("msg2".tr, style: theme.textTheme.bodyMedium))
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

  /// Common widget
  Widget _buildWidget(
    BuildContext context, {
    required String userName,
    Function? onTapIconButton,
  }) {
    return SizedBox(
        height: 40.v,
        width: 117.h,
        child: Stack(alignment: Alignment.center, children: [
          CustomIconButton(
              height: 40.v,
              width: 117.h,
              alignment: Alignment.center,
              onTap: () {
                onTapIconButton!.call();
              },
              child: CustomImageView()),
          Align(
              alignment: Alignment.center,
              child: Text(userName,
                  style: CustomTextStyles.bodyMediumWhiteA700
                      .copyWith(color: appTheme.whiteA700)))
        ]));
  }

  /// Navigates to the namingScreen when the action is triggered.
  onTapIconButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.namingScreen);
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
