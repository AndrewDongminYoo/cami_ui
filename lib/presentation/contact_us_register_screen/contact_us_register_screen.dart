import 'package:cami_lab/core/app_export.dart';
import 'package:cami_lab/widgets/app_bar/appbar_leading_image.dart';
import 'package:cami_lab/widgets/app_bar/appbar_title_image.dart';
import 'package:cami_lab/widgets/app_bar/custom_app_bar.dart';
import 'package:cami_lab/widgets/custom_icon_button.dart';
import 'package:cami_lab/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore_for_file: must_be_immutable
class ContactUsRegisterScreen extends StatelessWidget {
  ContactUsRegisterScreen({Key? key}) : super(key: key);

  TextEditingController editTextController = TextEditingController();

  TextEditingController editTextController1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
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
                                        padding: EdgeInsets.only(left: 138.h),
                                        child: Text("lbl_1_12".tr,
                                            style:
                                                CustomTextStyles.bodyLarge18))
                                  ]))),
                      SizedBox(height: 40.v),
                      Container(
                          height: 1.v,
                          width: 361.h,
                          decoration: BoxDecoration(color: appTheme.black900)),
                      SizedBox(height: 17.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 32.h),
                              child: Text("lbl_1_13".tr,
                                  style: theme.textTheme.bodyLarge))),
                      SizedBox(height: 16.v),
                      Container(
                          height: 1.v,
                          width: 361.h,
                          decoration: BoxDecoration(color: appTheme.gray500)),
                      SizedBox(height: 22.v),
                      _buildForty(context),
                      SizedBox(height: 23.v),
                      _buildFiftyOne(context),
                      SizedBox(height: 28.v),
                      _buildFortyFive(context),
                      SizedBox(height: 128.v),
                      _buildFooter(context)
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
  Widget _buildForty(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 28.h, right: 16.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
              width: 44.h,
              child: Text("lbl41".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyLarge!.copyWith(height: 1.50))),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 15.h, top: 4.v, bottom: 4.v),
                  child: CustomTextFormField(controller: editTextController))),
          Container(
              height: 40.v,
              width: 34.h,
              margin: EdgeInsets.only(left: 8.h, top: 4.v, bottom: 4.v),
              padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 16.v),
              decoration: AppDecoration.fillGray
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
              child: CustomImageView(
                  imagePath: ImageConstant.imgArrowDown,
                  height: 8.v,
                  width: 13.h,
                  alignment: Alignment.center))
        ]));
  }

  /// Section Widget
  Widget _buildFiftyOne(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 28.h, right: 16.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: 43.h,
                  margin: EdgeInsets.only(top: 3.v, bottom: 43.v),
                  child: Text("lbl42".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style:
                          theme.textTheme.bodyLarge!.copyWith(height: 1.50))),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: CustomTextFormField(
                          controller: editTextController1,
                          textInputAction: TextInputAction.done)))
            ]));
  }

  /// Section Widget
  Widget _buildFortyFive(BuildContext context) {
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
              child:
                  Text("lbl43".tr, style: CustomTextStyles.bodyMediumWhiteA700))
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
                            Text("lbl13".tr,
                                style: CustomTextStyles.bodySmallGray500),
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
}
