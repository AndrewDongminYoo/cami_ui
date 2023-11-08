import 'package:cami_lab/core/app_export.dart';
import 'package:cami_lab/widgets/custom_drop_down.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class Faq1Screen extends StatelessWidget {
  Faq1Screen({Key? key}) : super(key: key);

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList1 = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList2 = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList3 = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList4 = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList5 = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList6 = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList7 = ["Item One", "Item Two", "Item Three"];

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: Column(children: [
                  _buildFrameImage(context),
                  SizedBox(height: 15.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgArrowLeft,
                                height: 28.v,
                                width: 20.h,
                                onTap: () {
                                  onTapImgArrowLeft(context);
                                }),
                            Padding(
                                padding: EdgeInsets.only(left: 106.h),
                                child: Text("lbl11".tr,
                                    style: CustomTextStyles.bodyLarge18))
                          ]))),
                  SizedBox(height: 15.v),
                  Divider(indent: 16.h, endIndent: 16.h),
                  SizedBox(height: 9.v),
                  _buildFrameRow1(context),
                  SizedBox(height: 7.v),
                  Divider(indent: 16.h, endIndent: 16.h),
                  SizedBox(height: 9.v),
                  _buildFrameRow2(context),
                  SizedBox(height: 7.v),
                  Divider(indent: 16.h, endIndent: 16.h),
                  SizedBox(height: 10.v),
                  _buildFrameRow3(context),
                  SizedBox(height: 5.v),
                  Divider(indent: 16.h, endIndent: 16.h),
                  SizedBox(height: 10.v),
                  _buildFrameRow4(context),
                  SizedBox(height: 5.v),
                  Divider(indent: 16.h, endIndent: 16.h),
                  SizedBox(height: 9.v),
                  _buildFrameRow5(context),
                  SizedBox(height: 7.v),
                  Divider(indent: 16.h, endIndent: 16.h),
                  SizedBox(height: 9.v),
                  _buildFrameRow6(context),
                  SizedBox(height: 7.v),
                  Divider(indent: 16.h, endIndent: 16.h),
                  SizedBox(height: 9.v),
                  _buildFrameRow7(context),
                  SizedBox(height: 7.v),
                  Divider(indent: 16.h, endIndent: 16.h),
                  SizedBox(height: 9.v),
                  _buildFrameRow8(context),
                  SizedBox(height: 136.v),
                  _buildFrameColumn(context)
                ])))));
  }

  /// Section Widget
  Widget _buildFrameImage(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: CustomImageView(
            imagePath: ImageConstant.imgFrameGray900,
            height: 50.v,
            width: 361.h));
  }

  /// Section Widget
  Widget _buildFrameRow1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 8.v),
              child: Text("lbl_q".tr,
                  style: CustomTextStyles.bodyMediumNanumSquareNeoBlack90013)),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: CustomDropDown(
                      icon: Container(
                          margin: EdgeInsets.only(left: 30.h),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgArrowdownGray700,
                              height: 32.v,
                              width: 30.h)),
                      hintText: "lbl55".tr,
                      items: dropdownItemList,
                      onChanged: (value) {})))
        ]));
  }

  /// Section Widget
  Widget _buildFrameRow2(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 8.v),
              child: Text("lbl_q".tr,
                  style: CustomTextStyles.bodyMediumNanumSquareNeoBlack90013)),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: CustomDropDown(
                      icon: Container(
                          margin: EdgeInsets.only(left: 30.h),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgArrowdownGray700,
                              height: 32.v,
                              width: 30.h)),
                      hintText: "lbl58".tr,
                      items: dropdownItemList1,
                      onChanged: (value) {})))
        ]));
  }

  /// Section Widget
  Widget _buildFrameRow3(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 10.v, bottom: 14.v),
                  child: Text("lbl_q".tr,
                      style:
                          CustomTextStyles.bodyMediumNanumSquareNeoBlack90013)),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(left: 10.h),
                      child: CustomDropDown(
                          icon: Container(
                              margin: EdgeInsets.only(left: 18.h),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgArrowdownGray700,
                                  height: 32.v,
                                  width: 30.h)),
                          hintText: "msg20".tr,
                          items: dropdownItemList2,
                          onChanged: (value) {})))
            ]));
  }

  /// Section Widget
  Widget _buildFrameRow4(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 11.v, bottom: 13.v),
                  child: Text("lbl_q".tr,
                      style:
                          CustomTextStyles.bodyMediumNanumSquareNeoBlack90013)),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(left: 10.h),
                      child: CustomDropDown(
                          icon: Container(
                              margin: EdgeInsets.only(left: 15.h),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgArrowdownGray700,
                                  height: 32.v,
                                  width: 30.h)),
                          hintText: "msg19".tr,
                          items: dropdownItemList3,
                          onChanged: (value) {})))
            ]));
  }

  /// Section Widget
  Widget _buildFrameRow5(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 8.v),
              child: Text("lbl_q".tr,
                  style: CustomTextStyles.bodyMediumNanumSquareNeoBlack90013)),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: CustomDropDown(
                      icon: Container(
                          margin: EdgeInsets.only(left: 30.h),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgArrowdownGray700,
                              height: 32.v,
                              width: 30.h)),
                      hintText: "msg21".tr,
                      items: dropdownItemList4,
                      onChanged: (value) {})))
        ]));
  }

  /// Section Widget
  Widget _buildFrameRow6(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 8.v),
              child: Text("lbl_q".tr,
                  style: CustomTextStyles.bodyMediumNanumSquareNeoBlack90013)),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: CustomDropDown(
                      icon: Container(
                          margin: EdgeInsets.only(left: 30.h),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgArrowdownGray700,
                              height: 32.v,
                              width: 30.h)),
                      hintText: "lbl59".tr,
                      items: dropdownItemList5,
                      onChanged: (value) {})))
        ]));
  }

  /// Section Widget
  Widget _buildFrameRow7(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 8.v),
              child: Text("lbl_q".tr,
                  style: CustomTextStyles.bodyMediumNanumSquareNeoBlack90013)),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: CustomDropDown(
                      icon: Container(
                          margin: EdgeInsets.only(left: 30.h),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgArrowdownGray700,
                              height: 32.v,
                              width: 30.h)),
                      hintText: "lbl60".tr,
                      items: dropdownItemList6,
                      onChanged: (value) {})))
        ]));
  }

  /// Section Widget
  Widget _buildFrameRow8(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 8.v),
              child: Text("lbl_q".tr,
                  style: CustomTextStyles.bodyMediumNanumSquareNeoBlack90013)),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: CustomDropDown(
                      icon: Container(
                          margin: EdgeInsets.only(left: 30.h),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgArrowdownGray700,
                              height: 32.v,
                              width: 30.h)),
                      hintText: "msg22".tr,
                      items: dropdownItemList7,
                      onChanged: (value) {})))
        ]));
  }

  /// Section Widget
  Widget _buildFrameColumn(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 60.v),
        decoration: AppDecoration.fillOnErrorContainer,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              imagePath: ImageConstant.imgTicket, height: 30.v, width: 92.h),
          SizedBox(height: 37.v),
          Row(children: [
            Text("lbl10".tr, style: theme.textTheme.bodySmall),
            Padding(
                padding: EdgeInsets.only(left: 19.h),
                child: Text("lbl11".tr, style: theme.textTheme.bodySmall)),
            Padding(
                padding: EdgeInsets.only(left: 21.h),
                child: Text("lbl12".tr, style: theme.textTheme.bodySmall))
          ]),
          SizedBox(height: 9.v),
          Padding(
              padding: EdgeInsets.only(right: 9.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("lbl13".tr, style: CustomTextStyles.bodySmallGray500),
                    Text("lbl14".tr, style: CustomTextStyles.bodySmallGray500),
                    Text("lbl15".tr, style: CustomTextStyles.bodySmallGray500),
                    Text("lbl16".tr, style: CustomTextStyles.bodySmallGray500)
                  ])),
          SizedBox(height: 38.v),
          Padding(
              padding: EdgeInsets.only(right: 63.h),
              child: Row(children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text("lbl_address".tr, style: theme.textTheme.bodySmall),
                  SizedBox(height: 9.v),
                  Text("msg_34".tr, style: theme.textTheme.bodySmall),
                  Text("msg_2_b101".tr, style: theme.textTheme.bodySmall)
                ]),
                Padding(
                    padding: EdgeInsets.only(left: 27.h),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("lbl_contact".tr,
                              style: theme.textTheme.bodySmall),
                          SizedBox(height: 10.v),
                          Text("msg_business_cami_kr".tr,
                              style: theme.textTheme.bodySmall),
                          Text("lbl_02_861_6828".tr,
                              style: theme.textTheme.bodySmall)
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
                imagePath: ImageConstant.imgImage,
                height: 24.adaptSize,
                width: 24.adaptSize),
            CustomImageView(
                imagePath: ImageConstant.imgImage,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(left: 16.h)),
            CustomImageView(
                imagePath: ImageConstant.imgImage,
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
}
