import 'package:cami_lab/core/app_export.dart';
import 'package:cami_lab/widgets/custom_drop_down.dart';
import 'package:cami_lab/widgets/custom_elevated_button.dart';
import 'package:cami_lab/widgets/custom_radio_button.dart';
import 'package:cami_lab/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SignUpFormScreen extends StatelessWidget {
  SignUpFormScreen({Key? key}) : super(key: key);

  TextEditingController appNavBarController = TextEditingController();

  TextEditingController editText1Controller = TextEditingController();

  TextEditingController editText2Controller = TextEditingController();

  TextEditingController editText3Controller = TextEditingController();

  TextEditingController editText4Controller = TextEditingController();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList1 = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList2 = ["Item One", "Item Two", "Item Three"];

  String genderRadioGroup = "";

  List<String> radioList = ["lbl113", "lbl114", "lbl150"];

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
                      CustomImageView(
                          imagePath: ImageConstant.imgAppNavBar,
                          height: 50.v,
                          width: 392.h,
                          margin: EdgeInsets.only(left: 1.h)),
                      SizedBox(height: 79.v),
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
                              style: CustomTextStyles.bodyMediumOnPrimary)),
                      SizedBox(height: 9.v),
                      _buildAppNavBar(context),
                      SizedBox(height: 33.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("lbl146".tr,
                              style: CustomTextStyles.bodyMediumOnPrimary)),
                      SizedBox(height: 9.v),
                      _buildEditText1(context),
                      SizedBox(height: 33.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("lbl147".tr,
                              style: CustomTextStyles.bodyMediumOnPrimary)),
                      SizedBox(height: 9.v),
                      _buildEditText2(context),
                      SizedBox(height: 33.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("lbl148".tr,
                              style: CustomTextStyles.bodyMediumOnPrimary)),
                      SizedBox(height: 9.v),
                      _buildEditText3(context),
                      SizedBox(height: 33.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("lbl149".tr,
                              style: CustomTextStyles.bodyMediumOnPrimary)),
                      SizedBox(height: 9.v),
                      _buildEditText4(context),
                      SizedBox(height: 33.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("lbl120".tr,
                              style: CustomTextStyles.bodyMediumOnPrimary)),
                      SizedBox(height: 9.v),
                      _buildDateTimeField(context),
                      SizedBox(height: 25.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("lbl124".tr,
                              style: CustomTextStyles.bodyMediumOnPrimary)),
                      SizedBox(height: 3.v),
                      _buildGenderRadioGroup(context),
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
                      _buildTf(context),
                      SizedBox(height: 128.v),
                      _buildFooter(context)
                    ])))));
  }

  /// Section Widget
  Widget _buildAppNavBar(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: CustomTextFormField(
            controller: appNavBarController, alignment: Alignment.center));
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
            controller: editText4Controller,
            textInputAction: TextInputAction.done,
            alignment: Alignment.center));
  }

  /// Section Widget
  Widget _buildDateTimeField(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 13.h, right: 19.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomDropDown(
                  width: 91.h,
                  icon: Container(
                      padding: EdgeInsets.fromLTRB(30.h, 16.v, 10.h, 16.v),
                      decoration: BoxDecoration(
                          color: appTheme.gray10001,
                          borderRadius: BorderRadius.circular(8.h)),
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
                          padding: EdgeInsets.fromLTRB(30.h, 16.v, 10.h, 16.v),
                          decoration: BoxDecoration(
                              color: appTheme.gray10001,
                              borderRadius: BorderRadius.circular(8.h)),
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
                          padding: EdgeInsets.fromLTRB(30.h, 16.v, 10.h, 16.v),
                          decoration: BoxDecoration(
                              color: appTheme.gray10001,
                              borderRadius: BorderRadius.circular(8.h)),
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
  Widget _buildGenderRadioGroup(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 20.h),
        child: Row(children: [
          CustomRadioButton(
              text: "lbl113".tr,
              value: radioList[0],
              groupValue: genderRadioGroup,
              onChange: (value) {
                genderRadioGroup = value;
              }),
          Padding(
              padding: EdgeInsets.only(left: 64.h),
              child: CustomRadioButton(
                  text: "lbl114".tr,
                  value: radioList[1],
                  groupValue: genderRadioGroup,
                  onChange: (value) {
                    genderRadioGroup = value;
                  })),
          Padding(
              padding: EdgeInsets.only(left: 63.h),
              child: CustomRadioButton(
                  text: "lbl150".tr,
                  value: radioList[2],
                  groupValue: genderRadioGroup,
                  onChange: (value) {
                    genderRadioGroup = value;
                  }))
        ]));
  }

  /// Section Widget
  Widget _buildTf(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl155".tr,
        margin: EdgeInsets.symmetric(horizontal: 16.h),
        buttonStyle: CustomButtonStyles.fillBlack,
        alignment: Alignment.center);
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
            GestureDetector(
                onTap: () {
                  onTapTxtWidget(context);
                },
                child: Text("lbl10".tr, style: theme.textTheme.bodySmall)),
            GestureDetector(
                onTap: () {
                  onTapTxtWidget1(context);
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
            Text("lbl_address".tr, style: theme.textTheme.bodySmall),
            Padding(
                padding: EdgeInsets.only(left: 131.h),
                child: Text("lbl_contact".tr, style: theme.textTheme.bodySmall))
          ]),
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

  onTapTxtWidget(BuildContext context) {
    // TODO: implement Actions
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
