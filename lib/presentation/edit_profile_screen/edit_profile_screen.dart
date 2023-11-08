import 'package:cami_lab/core/app_export.dart';
import 'package:cami_lab/widgets/custom_drop_down.dart';
import 'package:cami_lab/widgets/custom_elevated_button.dart';
import 'package:cami_lab/widgets/custom_outlined_button.dart';
import 'package:cami_lab/widgets/custom_radio_button.dart';
import 'package:cami_lab/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({Key? key}) : super(key: key);

  TextEditingController editTextController = TextEditingController();

  TextEditingController editTextWithButtonController = TextEditingController();

  TextEditingController editTextController1 = TextEditingController();

  TextEditingController editTextController2 = TextEditingController();

  TextEditingController editTextController3 = TextEditingController();

  TextEditingController editTextController4 = TextEditingController();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList1 = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList2 = ["Item One", "Item Two", "Item Three"];

  String radioGroup = "";

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
                          width: 393.h),
                      SizedBox(height: 15.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgArrowLeft,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize,
                                    margin: EdgeInsets.only(bottom: 6.v),
                                    onTap: () {
                                      onTapImgArrowLeft(context);
                                    }),
                                Padding(
                                    padding: EdgeInsets.only(left: 124.h),
                                    child: Text("lbl156".tr,
                                        style: CustomTextStyles.bodyLarge18))
                              ])),
                      SizedBox(height: 17.v),
                      _buildImageSelectionRow(context),
                      SizedBox(height: 49.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("lbl145".tr,
                              style: CustomTextStyles.bodyMediumOnPrimary)),
                      SizedBox(height: 9.v),
                      _buildEditText(context),
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
                              style: CustomTextStyles.bodyMediumOnPrimary)),
                      SizedBox(height: 9.v),
                      _buildEditTextRow(context),
                      SizedBox(height: 8.v),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              height: 40.v,
                              width: 361.h,
                              decoration: BoxDecoration(
                                  color: theme.colorScheme.onError,
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
                              style: CustomTextStyles.bodyMediumOnPrimary)),
                      SizedBox(height: 9.v),
                      _buildEditText1(context),
                      SizedBox(height: 8.v),
                      _buildEditText2(context),
                      SizedBox(height: 25.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("lbl148".tr,
                              style: CustomTextStyles.bodyMediumOnPrimary)),
                      SizedBox(height: 9.v),
                      _buildEditText3(context),
                      SizedBox(height: 25.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("lbl149".tr,
                              style: CustomTextStyles.bodyMediumOnPrimary)),
                      SizedBox(height: 9.v),
                      _buildEditText4(context),
                      SizedBox(height: 25.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("lbl120".tr,
                              style: CustomTextStyles.bodyMediumOnPrimary)),
                      SizedBox(height: 9.v),
                      _buildDropdownRow(context),
                      SizedBox(height: 25.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("lbl124".tr,
                              style: CustomTextStyles.bodyMediumOnPrimary)),
                      SizedBox(height: 9.v),
                      _buildRadioGroup(context),
                      SizedBox(height: 23.v),
                      _buildSaveButton(context),
                      SizedBox(height: 8.v),
                      _buildDeleteButton(context),
                      SizedBox(height: 128.v),
                      _buildFooterColumn(context)
                    ])))));
  }

  /// Section Widget
  Widget _buildImageSelectionButton(BuildContext context) {
    return CustomElevatedButton(
        width: 121.h,
        text: "lbl157".tr,
        buttonStyle: CustomButtonStyles.fillBlue,
        buttonTextStyle: CustomTextStyles.bodyMediumOnErrorContainer);
  }

  /// Section Widget
  Widget _buildImageSelectionRow(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 16.h),
            padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 16.v),
            decoration: AppDecoration.fillGray50
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgImage130x116,
                      height: 130.v,
                      width: 116.h,
                      margin: EdgeInsets.only(bottom: 42.v)),
                  Padding(
                      padding:
                          EdgeInsets.only(top: 11.v, right: 18.h, bottom: 11.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("lbl104".tr,
                                style: CustomTextStyles.bodyMediumBlack900),
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
                                        .copyWith(height: 1.33))),
                            SizedBox(height: 16.v),
                            _buildImageSelectionButton(context)
                          ]))
                ])));
  }

  /// Section Widget
  Widget _buildEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: CustomTextFormField(
            controller: editTextController,
            alignment: Alignment.center,
            borderDecoration: TextFormFieldStyleHelper.fillOnError,
            fillColor: theme.colorScheme.onError));
  }

  /// Section Widget
  Widget _buildEditTextWithButton(BuildContext context) {
    return CustomTextFormField(
        width: 211.h, controller: editTextWithButtonController);
  }

  /// Section Widget
  Widget _buildTf(BuildContext context) {
    return CustomElevatedButton(
        width: 142.h,
        text: "lbl159".tr,
        margin: EdgeInsets.only(left: 8.h),
        buttonStyle: CustomButtonStyles.fillBlueGray,
        buttonTextStyle: CustomTextStyles.bodyMediumGray60001);
  }

  /// Section Widget
  Widget _buildEditTextRow(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              _buildEditTextWithButton(context),
              _buildTf(context)
            ])));
  }

  /// Section Widget
  Widget _buildEditText1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: CustomTextFormField(
            controller: editTextController1, alignment: Alignment.center));
  }

  /// Section Widget
  Widget _buildEditText2(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: CustomTextFormField(
            controller: editTextController2, alignment: Alignment.center));
  }

  /// Section Widget
  Widget _buildEditText3(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: CustomTextFormField(
            controller: editTextController3, alignment: Alignment.center));
  }

  /// Section Widget
  Widget _buildEditText4(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: CustomTextFormField(
            controller: editTextController4,
            textInputAction: TextInputAction.done,
            alignment: Alignment.center));
  }

  /// Section Widget
  Widget _buildDropdownRow(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
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
  Widget _buildRadioGroup(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 16.h),
        child: Row(children: [
          CustomRadioButton(
              text: "lbl113".tr,
              value: radioList[0],
              groupValue: radioGroup,
              textStyle: theme.textTheme.bodyLarge,
              onChange: (value) {
                radioGroup = value;
              }),
          Padding(
              padding: EdgeInsets.only(left: 74.h),
              child: CustomRadioButton(
                  text: "lbl114".tr,
                  value: radioList[1],
                  groupValue: radioGroup,
                  textStyle: theme.textTheme.bodyLarge,
                  onChange: (value) {
                    radioGroup = value;
                  })),
          Padding(
              padding: EdgeInsets.only(left: 74.h),
              child: CustomRadioButton(
                  text: "lbl150".tr,
                  value: radioList[2],
                  groupValue: radioGroup,
                  textStyle: theme.textTheme.bodyLarge,
                  onChange: (value) {
                    radioGroup = value;
                  }))
        ]));
  }

  /// Section Widget
  Widget _buildSaveButton(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl161".tr,
        margin: EdgeInsets.symmetric(horizontal: 16.h),
        buttonStyle: CustomButtonStyles.fillBlack,
        alignment: Alignment.center);
  }

  /// Section Widget
  Widget _buildDeleteButton(BuildContext context) {
    return CustomOutlinedButton(
        height: 38.v,
        text: "lbl162".tr,
        margin: EdgeInsets.symmetric(horizontal: 16.h),
        alignment: Alignment.center);
  }

  /// Section Widget
  Widget _buildFooterColumn(BuildContext context) {
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

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
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
