import 'package:cami_lab/core/app_export.dart';
import 'package:cami_lab/widgets/custom_icon_button.dart';
import 'package:cami_lab/widgets/custom_radio_button.dart';
import 'package:cami_lab/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore_for_file: must_be_immutable
class SignUpFormScreen extends StatelessWidget {
  SignUpFormScreen({Key? key}) : super(key: key);

  TextEditingController editText1Controller = TextEditingController();

  TextEditingController editText2Controller = TextEditingController();

  TextEditingController editText3Controller = TextEditingController();

  TextEditingController editText4Controller = TextEditingController();

  TextEditingController editText5Controller = TextEditingController();

  String gender = "";

  List<String> radioList = ["lbl113", "lbl114"];

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      _buildAppNavBar(context),
                      SizedBox(height: 92.v),
                      Align(
                          alignment: Alignment.center,
                          child: Text("lbl143".tr,
                              style: theme.textTheme.displaySmall)),
                      SizedBox(height: 15.v),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 43.h),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("lbl144".tr,
                                        style: CustomTextStyles
                                            .bodyMediumGray60001),
                                    Padding(
                                        padding: EdgeInsets.only(left: 4.h),
                                        child: Text("lbl_cami".tr,
                                            style: CustomTextStyles
                                                .bodyMediumGray60001)),
                                    Padding(
                                        padding: EdgeInsets.only(left: 1.h),
                                        child: Text("msg58".tr,
                                            style: CustomTextStyles
                                                .bodyMediumGray60001))
                                  ]))),
                      SizedBox(height: 64.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("lbl145".tr,
                              style: CustomTextStyles.bodyMediumBluegray900)),
                      SizedBox(height: 9.v),
                      _buildEditText1(context),
                      SizedBox(height: 33.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("lbl146".tr,
                              style: CustomTextStyles.bodyMediumBluegray900)),
                      SizedBox(height: 9.v),
                      _buildEditText2(context),
                      SizedBox(height: 33.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("lbl147".tr,
                              style: CustomTextStyles.bodyMediumBluegray900)),
                      SizedBox(height: 9.v),
                      _buildEditText3(context),
                      SizedBox(height: 33.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("lbl148".tr,
                              style: CustomTextStyles.bodyMediumBluegray900)),
                      SizedBox(height: 9.v),
                      _buildEditText4(context),
                      SizedBox(height: 33.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("lbl149".tr,
                              style: CustomTextStyles.bodyMediumBluegray900)),
                      SizedBox(height: 9.v),
                      _buildEditText5(context),
                      SizedBox(height: 19.v),
                      _buildDateTimeField(context),
                      SizedBox(height: 38.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("lbl124".tr,
                              style: CustomTextStyles.bodyMediumBluegray900)),
                      SizedBox(height: 3.v),
                      _buildGender(context),
                      SizedBox(height: 33.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Row(children: [
                            Container(
                                height: 16.adaptSize,
                                width: 16.adaptSize,
                                margin: EdgeInsets.only(top: 4.v, bottom: 3.v),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 3.h, vertical: 4.v),
                                decoration: AppDecoration.fillBlue.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder2),
                                child: CustomImageView(
                                    imagePath:
                                        ImageConstant.imgVectorWhiteA7007x8,
                                    height: 7.v,
                                    width: 8.h,
                                    alignment: Alignment.center)),
                            Padding(
                                padding: EdgeInsets.only(left: 20.h),
                                child: Text("lbl151".tr,
                                    style: theme.textTheme.bodyLarge)),
                            Padding(
                                padding: EdgeInsets.only(left: 7.h),
                                child: Text("lbl14".tr,
                                    style:
                                        CustomTextStyles.bodyLargeIndigo400)),
                            Padding(
                                padding: EdgeInsets.only(left: 3.h),
                                child: Text("lbl152".tr,
                                    style: theme.textTheme.bodyLarge))
                          ])),
                      SizedBox(height: 6.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h, right: 89.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    height: 16.adaptSize,
                                    width: 16.adaptSize,
                                    margin:
                                        EdgeInsets.only(top: 6.v, bottom: 3.v),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 3.h, vertical: 4.v),
                                    decoration: AppDecoration.fillBlue.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder2),
                                    child: CustomImageView(
                                        imagePath:
                                            ImageConstant.imgVectorWhiteA7007x8,
                                        height: 7.v,
                                        width: 8.h,
                                        alignment: Alignment.center)),
                                Padding(
                                    padding: EdgeInsets.only(left: 20.h),
                                    child: Text("lbl151".tr,
                                        style: theme.textTheme.bodyLarge)),
                                Padding(
                                    padding: EdgeInsets.only(left: 6.h),
                                    child: Text("lbl153".tr,
                                        style: CustomTextStyles
                                            .bodyLargeIndigo400)),
                                Padding(
                                    padding: EdgeInsets.only(left: 2.h),
                                    child: Text("lbl154".tr,
                                        style: theme.textTheme.bodyLarge))
                              ])),
                      SizedBox(height: 8.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h, right: 88.h),
                          child:
                              _buildVector(context, messageText: "msg59".tr)),
                      SizedBox(height: 7.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h, right: 88.h),
                          child:
                              _buildVector(context, messageText: "msg60".tr)),
                      SizedBox(height: 32.v),
                      _buildStack1(context),
                      SizedBox(height: 128.v),
                      _buildVector3(context)
                    ])))));
  }

  /// Section Widget
  Widget _buildAppNavBar(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 4466.h),
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
  Widget _buildEditText1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: CustomTextFormField(
            controller: editText1Controller, alignment: Alignment.center));
  }

  /// Section Widget
  Widget _buildEditText2(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: CustomTextFormField(
            controller: editText2Controller, alignment: Alignment.center));
  }

  /// Section Widget
  Widget _buildEditText3(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: CustomTextFormField(
            controller: editText3Controller, alignment: Alignment.center));
  }

  /// Section Widget
  Widget _buildEditText4(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: CustomTextFormField(
            controller: editText4Controller, alignment: Alignment.center));
  }

  /// Section Widget
  Widget _buildEditText5(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: CustomTextFormField(
            controller: editText5Controller,
            textInputAction: TextInputAction.done,
            alignment: Alignment.center));
  }

  /// Section Widget
  Widget _buildDateTimeField(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 16.h),
        child: IntrinsicWidth(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Padding(
                  padding: EdgeInsets.only(top: 14.v, bottom: 36.v),
                  child: Text("lbl120".tr,
                      style: CustomTextStyles.bodyMediumBluegray900)),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(left: 4410.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                                height: 40.v,
                                width: 91.h,
                                margin: EdgeInsets.only(top: 32.v),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10.h, vertical: 16.v),
                                decoration: AppDecoration.fillGray.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder8),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgArrowDown,
                                    height: 8.v,
                                    width: 12.h,
                                    alignment: Alignment.centerRight)),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 3.h, top: 39.v, bottom: 8.v),
                                child: Text("lbl108".tr,
                                    style: theme.textTheme.bodyLarge)),
                            Container(
                                height: 40.v,
                                width: 91.h,
                                margin: EdgeInsets.only(left: 17.h, top: 32.v),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10.h, vertical: 16.v),
                                decoration: AppDecoration.fillGray.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder8),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgArrowDown,
                                    height: 8.v,
                                    width: 12.h,
                                    alignment: Alignment.centerRight)),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 3.h, top: 39.v, bottom: 8.v),
                                child: Text("lbl109".tr,
                                    style: theme.textTheme.bodyLarge)),
                            Container(
                                height: 40.v,
                                width: 91.h,
                                margin: EdgeInsets.only(left: 16.h, top: 32.v),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10.h, vertical: 16.v),
                                decoration: AppDecoration.fillGray.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder8),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgArrowDown,
                                    height: 8.v,
                                    width: 12.h,
                                    alignment: Alignment.centerRight)),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 4.h, top: 39.v, bottom: 8.v),
                                child: Text("lbl110".tr,
                                    style: theme.textTheme.bodyLarge))
                          ])))
            ])));
  }

  /// Section Widget
  Widget _buildGender(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 20.h),
        child: Row(children: [
          CustomRadioButton(
              text: "lbl113".tr,
              value: radioList[0],
              groupValue: gender,
              onChange: (value) {
                gender = value;
              }),
          Padding(
              padding: EdgeInsets.only(left: 64.h),
              child: CustomRadioButton(
                  text: "lbl114".tr,
                  value: radioList[1],
                  groupValue: gender,
                  onChange: (value) {
                    gender = value;
                  }))
        ]));
  }

  /// Section Widget
  Widget _buildStack1(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: SizedBox(
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
                  child: Text("lbl155".tr,
                      style: CustomTextStyles.bodyMediumWhiteA700))
            ])));
  }

  /// Section Widget
  Widget _buildVector3(BuildContext context) {
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
                          padding: EdgeInsets.only(left: 4481.h),
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
                          padding: EdgeInsets.only(left: 4481.h),
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
  Widget _buildVector(
    BuildContext context, {
    required String messageText,
  }) {
    return Row(children: [
      Container(
          height: 16.adaptSize,
          width: 16.adaptSize,
          margin: EdgeInsets.only(top: 5.v, bottom: 2.v),
          padding: EdgeInsets.symmetric(horizontal: 3.h, vertical: 4.v),
          decoration: AppDecoration.fillBlue
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder2),
          child: CustomImageView(
              imagePath: ImageConstant.imgVectorWhiteA7007x8,
              height: 7.v,
              width: 8.h,
              alignment: Alignment.center)),
      Padding(
          padding: EdgeInsets.only(left: 20.h),
          child: Text(messageText,
              style: theme.textTheme.bodyLarge!
                  .copyWith(color: appTheme.black900)))
    ]);
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
