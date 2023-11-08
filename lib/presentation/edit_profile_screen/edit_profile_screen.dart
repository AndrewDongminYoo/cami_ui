import 'package:cami_lab/core/app_export.dart';
import 'package:cami_lab/widgets/custom_drop_down.dart';
import 'package:cami_lab/widgets/custom_icon_button.dart';
import 'package:cami_lab/widgets/custom_radio_button.dart';
import 'package:cami_lab/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore_for_file: must_be_immutable
class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({Key? key}) : super(key: key);

  TextEditingController editText1Controller = TextEditingController();

  TextEditingController editTextController = TextEditingController();

  TextEditingController editText3Controller = TextEditingController();

  TextEditingController editText4Controller = TextEditingController();

  TextEditingController editText5Controller = TextEditingController();

  TextEditingController editText6Controller = TextEditingController();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList1 = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList2 = ["Item One", "Item Two", "Item Three"];

  String genderSection = "";

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
                      SizedBox(height: 28.v),
                      Padding(
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
                                    padding: EdgeInsets.only(left: 130.h),
                                    child: Text("lbl156".tr,
                                        style: CustomTextStyles.bodyLarge18))
                              ])),
                      SizedBox(height: 17.v),
                      _buildProfileSection(context),
                      SizedBox(height: 49.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("lbl145".tr,
                              style: CustomTextStyles.bodyMediumBluegray900)),
                      SizedBox(height: 9.v),
                      _buildEditText1(context),
                      SizedBox(height: 5.v),
                      Container(
                          width: 325.h,
                          margin: EdgeInsets.only(left: 16.h, right: 51.h),
                          child: Text("msg61".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodySmallGray500
                                  .copyWith(height: 1.33))),
                      SizedBox(height: 25.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("lbl158".tr,
                              style: CustomTextStyles.bodyMediumBluegray900)),
                      SizedBox(height: 9.v),
                      _buildEditText2(context),
                      SizedBox(height: 8.v),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              height: 40.v,
                              width: 361.h,
                              decoration: BoxDecoration(
                                  color: appTheme.gray300,
                                  borderRadius: BorderRadius.circular(8.h)))),
                      SizedBox(height: 5.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("msg62".tr,
                              style: CustomTextStyles.bodySmallGray500)),
                      SizedBox(height: 25.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("lbl160".tr,
                              style: CustomTextStyles.bodyMediumBluegray900)),
                      SizedBox(height: 9.v),
                      _buildEditText3(context),
                      SizedBox(height: 8.v),
                      _buildEditText4(context),
                      SizedBox(height: 25.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("lbl148".tr,
                              style: CustomTextStyles.bodyMediumBluegray900)),
                      SizedBox(height: 9.v),
                      _buildEditText5(context),
                      SizedBox(height: 25.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("lbl149".tr,
                              style: CustomTextStyles.bodyMediumBluegray900)),
                      SizedBox(height: 9.v),
                      _buildEditText6(context),
                      SizedBox(height: 25.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("lbl120".tr,
                              style: CustomTextStyles.bodyMediumBluegray900)),
                      SizedBox(height: 9.v),
                      _buildDropdownSection(context),
                      SizedBox(height: 25.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("lbl124".tr,
                              style: CustomTextStyles.bodyMediumBluegray900)),
                      SizedBox(height: 9.v),
                      _buildGenderSection(context),
                      SizedBox(height: 23.v),
                      _buildWidget(context, userLabel: "lbl161".tr),
                      SizedBox(height: 8.v),
                      _buildWidget(context, userLabel: "lbl162".tr),
                      SizedBox(height: 128.v),
                      _buildFooterSection(context)
                    ])))));
  }

  /// Section Widget
  Widget _buildAppNavBar(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 4978.h),
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
  Widget _buildProfileSection(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: SizedBox(
            height: 204.v,
            width: 361.h,
            child: Stack(alignment: Alignment.topLeft, children: [
              Align(
                  alignment: Alignment.center,
                  child: Container(
                      height: 204.v,
                      width: 361.h,
                      decoration: BoxDecoration(
                          color: appTheme.gray50,
                          borderRadius: BorderRadius.circular(12.h)))),
              Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                      height: 130.v,
                      width: 116.h,
                      margin: EdgeInsets.only(left: 12.h, top: 16.v),
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: appTheme.gray200, width: 1.h),
                          image: DecorationImage(
                              image: AssetImage(ImageConstant.imgImage130x116),
                              fit: BoxFit.cover)))),
              Padding(
                  padding: EdgeInsets.only(right: 72.h, bottom: 28.v),
                  child: CustomIconButton(
                      height: 40.v,
                      width: 121.h,
                      alignment: Alignment.bottomRight,
                      child: CustomImageView())),
              Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                      padding: EdgeInsets.only(top: 27.v, right: 30.h),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("lbl104".tr,
                                style: theme.textTheme.bodyMedium),
                            SizedBox(height: 1.v),
                            SizedBox(
                                width: 156.h,
                                child: Text("msg53".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles.bodySmallGray500
                                        .copyWith(height: 1.33))),
                            SizedBox(height: 1.v),
                            SizedBox(
                                width: 145.h,
                                child: Text("msg_9mb".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles.bodySmallGray500
                                        .copyWith(height: 1.33)))
                          ]))),
              Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                      padding: EdgeInsets.only(right: 86.h, bottom: 37.v),
                      child: Text("lbl157".tr,
                          style: CustomTextStyles.bodyMediumGray90001)))
            ])));
  }

  /// Section Widget
  Widget _buildEditText1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: CustomTextFormField(
            controller: editText1Controller,
            alignment: Alignment.center,
            borderDecoration: TextFormFieldStyleHelper.fillGrayTL8,
            fillColor: appTheme.gray300));
  }

  /// Section Widget
  Widget _buildEditText(BuildContext context) {
    return CustomTextFormField(width: 211.h, controller: editTextController);
  }

  /// Section Widget
  Widget _buildEditText2(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              _buildEditText(context),
              Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.only(left: 8.h),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusStyle.roundedBorder8),
                  child: Container(
                      height: 40.v,
                      width: 142.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusStyle.roundedBorder8),
                      child: Stack(alignment: Alignment.center, children: [
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                height: 40.v,
                                width: 142.h,
                                decoration: BoxDecoration(
                                    color: appTheme.blueGray300,
                                    borderRadius: BorderRadius.circular(8.h)))),
                        Align(
                            alignment: Alignment.center,
                            child: Text("lbl159".tr,
                                style: CustomTextStyles.bodyMediumGray60001))
                      ])))
            ])));
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
            controller: editText5Controller, alignment: Alignment.center));
  }

  /// Section Widget
  Widget _buildEditText6(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: CustomTextFormField(
            controller: editText6Controller,
            textInputAction: TextInputAction.done,
            alignment: Alignment.center));
  }

  /// Section Widget
  Widget _buildDropdownSection(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomDropDown(
                  width: 91.h,
                  icon: Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: 10.h, vertical: 16.v),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgArrowDown,
                          height: 8.v,
                          width: 12.h)),
                  items: dropdownItemList,
                  onChanged: (value) {}),
              Padding(
                  padding: EdgeInsets.only(left: 3.h, top: 7.v, bottom: 8.v),
                  child: Text("lbl108".tr, style: theme.textTheme.bodyLarge)),
              Padding(
                  padding: EdgeInsets.only(left: 17.h),
                  child: CustomDropDown(
                      width: 91.h,
                      icon: Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 10.h, vertical: 16.v),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgArrowDown,
                              height: 8.v,
                              width: 12.h)),
                      items: dropdownItemList1,
                      onChanged: (value) {})),
              Padding(
                  padding: EdgeInsets.only(left: 3.h, top: 7.v, bottom: 8.v),
                  child: Text("lbl109".tr, style: theme.textTheme.bodyLarge)),
              Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: CustomDropDown(
                      width: 91.h,
                      icon: Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 10.h, vertical: 16.v),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgArrowDown,
                              height: 8.v,
                              width: 12.h)),
                      items: dropdownItemList2,
                      onChanged: (value) {})),
              Padding(
                  padding: EdgeInsets.only(left: 4.h, top: 7.v, bottom: 8.v),
                  child: Text("lbl110".tr, style: theme.textTheme.bodyLarge))
            ])));
  }

  /// Section Widget
  Widget _buildGenderSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 16.h),
        child: Row(children: [
          CustomRadioButton(
              text: "lbl113".tr,
              value: radioList[0],
              groupValue: genderSection,
              textStyle: theme.textTheme.bodyLarge,
              onChange: (value) {
                genderSection = value;
              }),
          Padding(
              padding: EdgeInsets.only(left: 74.h),
              child: CustomRadioButton(
                  text: "lbl114".tr,
                  value: radioList[1],
                  groupValue: genderSection,
                  textStyle: theme.textTheme.bodyLarge,
                  onChange: (value) {
                    genderSection = value;
                  }))
        ]));
  }

  /// Section Widget
  Widget _buildFooterSection(BuildContext context) {
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
                          padding: EdgeInsets.only(left: 4994.h),
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
                          padding: EdgeInsets.only(left: 4994.h),
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
  Widget _buildWidget(
    BuildContext context, {
    required String userLabel,
  }) {
    return SizedBox(
        height: 38.v,
        width: 361.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          CustomIconButton(
              height: 38.v,
              width: 361.h,
              alignment: Alignment.center,
              child: CustomImageView()),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.only(bottom: 6.v),
                  child: Text(userLabel,
                      style: CustomTextStyles.bodyMediumBluegray10002
                          .copyWith(color: appTheme.blueGray10002))))
        ]));
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
