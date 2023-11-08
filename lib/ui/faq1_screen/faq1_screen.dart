// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/localization/app_localization.dart';
import '/theme/app_decoration.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/widgets/custom_drop_down.dart';
import '/widgets/custom_image_view.dart';

// ignore: must_be_immutable
class Faq1Screen extends StatelessWidget {
  Faq1Screen({super.key});

  List<String> dropdownItemList = ['Item One', 'Item Two', 'Item Three'];

  List<String> dropdownItemList1 = ['Item One', 'Item Two', 'Item Three'];

  List<String> dropdownItemList2 = ['Item One', 'Item Two', 'Item Three'];

  List<String> dropdownItemList3 = ['Item One', 'Item Two', 'Item Three'];

  List<String> dropdownItemList4 = ['Item One', 'Item Two', 'Item Three'];

  List<String> dropdownItemList5 = ['Item One', 'Item Two', 'Item Three'];

  List<String> dropdownItemList6 = ['Item One', 'Item Two', 'Item Three'];

  List<String> dropdownItemList7 = ['Item One', 'Item Two', 'Item Three'];

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
                  SizedBox(height: 15.h),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 16.w),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: Assets.svg.imgArrowLeft.path,
                                height: 28.h,
                                width: 20.w,
                                onTap: () {
                                  onTapImgArrowLeft(context);
                                }),
                            Padding(
                                padding: EdgeInsets.only(left: 106.w),
                                child: Text('lbl11'.tr,
                                    style: CustomTextStyles.bodyLarge18))
                          ]))),
                  SizedBox(height: 15.h),
                  Divider(indent: 16.w, endIndent: 16.w),
                  SizedBox(height: 9.h),
                  _buildFrameRow1(context),
                  SizedBox(height: 7.h),
                  Divider(indent: 16.w, endIndent: 16.w),
                  SizedBox(height: 9.h),
                  _buildFrameRow2(context),
                  SizedBox(height: 7.h),
                  Divider(indent: 16.w, endIndent: 16.w),
                  SizedBox(height: 10.h),
                  _buildFrameRow3(context),
                  SizedBox(height: 5.h),
                  Divider(indent: 16.w, endIndent: 16.w),
                  SizedBox(height: 10.h),
                  _buildFrameRow4(context),
                  SizedBox(height: 5.h),
                  Divider(indent: 16.w, endIndent: 16.w),
                  SizedBox(height: 9.h),
                  _buildFrameRow5(context),
                  SizedBox(height: 7.h),
                  Divider(indent: 16.w, endIndent: 16.w),
                  SizedBox(height: 9.h),
                  _buildFrameRow6(context),
                  SizedBox(height: 7.h),
                  Divider(indent: 16.w, endIndent: 16.w),
                  SizedBox(height: 9.h),
                  _buildFrameRow7(context),
                  SizedBox(height: 7.h),
                  Divider(indent: 16.w, endIndent: 16.w),
                  SizedBox(height: 9.h),
                  _buildFrameRow8(context),
                  SizedBox(height: 136.h),
                  _buildFrameColumn(context)
                ])))));
  }

  /// Section Widget
  Widget _buildFrameImage(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: CustomImageView(
            imagePath: Assets.images.imgAppNavBar.path,
            height: 50.h,
            width: 393.w));
  }

  /// Section Widget
  Widget _buildFrameRow1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: Text('lbl_q'.tr,
                  style: CustomTextStyles.bodyMediumNanumSquareNeoBlack90013)),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 10.w),
                  child: CustomDropDown(
                      icon: Container(
                          margin: EdgeInsets.only(left: 30.w),
                          child: CustomImageView(
                              imagePath: Assets.svg.imgArrowdownGray700.path,
                              height: 32.h,
                              width: 30.w)),
                      hintText: 'lbl55'.tr,
                      items: dropdownItemList,
                      onChanged: (value) {})))
        ]));
  }

  /// Section Widget
  Widget _buildFrameRow2(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: Text('lbl_q'.tr,
                  style: CustomTextStyles.bodyMediumNanumSquareNeoBlack90013)),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 10.w),
                  child: CustomDropDown(
                      icon: Container(
                          margin: EdgeInsets.only(left: 30.w),
                          child: CustomImageView(
                              imagePath: Assets.svg.imgArrowdownGray700.path,
                              height: 32.h,
                              width: 30.w)),
                      hintText: 'lbl58'.tr,
                      items: dropdownItemList1,
                      onChanged: (value) {})))
        ]));
  }

  /// Section Widget
  Widget _buildFrameRow3(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 10.h, bottom: 14.h),
                  child: Text('lbl_q'.tr,
                      style:
                          CustomTextStyles.bodyMediumNanumSquareNeoBlack90013)),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(left: 10.w),
                      child: CustomDropDown(
                          icon: Container(
                              margin: EdgeInsets.only(left: 18.w),
                              child: CustomImageView(
                                  imagePath:
                                      Assets.svg.imgArrowdownGray700.path,
                                  height: 32.h,
                                  width: 30.w)),
                          hintText: 'msg20'.tr,
                          items: dropdownItemList2,
                          onChanged: (value) {})))
            ]));
  }

  /// Section Widget
  Widget _buildFrameRow4(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 11.h, bottom: 13.h),
                  child: Text('lbl_q'.tr,
                      style:
                          CustomTextStyles.bodyMediumNanumSquareNeoBlack90013)),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(left: 10.w),
                      child: CustomDropDown(
                          icon: Container(
                              margin: EdgeInsets.only(left: 15.w),
                              child: CustomImageView(
                                  imagePath:
                                      Assets.svg.imgArrowdownGray700.path,
                                  height: 32.h,
                                  width: 30.w)),
                          hintText: 'msg19'.tr,
                          items: dropdownItemList3,
                          onChanged: (value) {})))
            ]));
  }

  /// Section Widget
  Widget _buildFrameRow5(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: Text('lbl_q'.tr,
                  style: CustomTextStyles.bodyMediumNanumSquareNeoBlack90013)),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 10.w),
                  child: CustomDropDown(
                      icon: Container(
                          margin: EdgeInsets.only(left: 30.w),
                          child: CustomImageView(
                              imagePath: Assets.svg.imgArrowdownGray700.path,
                              height: 32.h,
                              width: 30.w)),
                      hintText: 'msg21'.tr,
                      items: dropdownItemList4,
                      onChanged: (value) {})))
        ]));
  }

  /// Section Widget
  Widget _buildFrameRow6(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: Text('lbl_q'.tr,
                  style: CustomTextStyles.bodyMediumNanumSquareNeoBlack90013)),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 10.w),
                  child: CustomDropDown(
                      icon: Container(
                          margin: EdgeInsets.only(left: 30.w),
                          child: CustomImageView(
                              imagePath: Assets.svg.imgArrowdownGray700.path,
                              height: 32.h,
                              width: 30.w)),
                      hintText: 'lbl59'.tr,
                      items: dropdownItemList5,
                      onChanged: (value) {})))
        ]));
  }

  /// Section Widget
  Widget _buildFrameRow7(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: Text('lbl_q'.tr,
                  style: CustomTextStyles.bodyMediumNanumSquareNeoBlack90013)),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 10.w),
                  child: CustomDropDown(
                      icon: Container(
                          margin: EdgeInsets.only(left: 30.w),
                          child: CustomImageView(
                              imagePath: Assets.svg.imgArrowdownGray700.path,
                              height: 32.h,
                              width: 30.w)),
                      hintText: 'lbl60'.tr,
                      items: dropdownItemList6,
                      onChanged: (value) {})))
        ]));
  }

  /// Section Widget
  Widget _buildFrameRow8(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: Text('lbl_q'.tr,
                  style: CustomTextStyles.bodyMediumNanumSquareNeoBlack90013)),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 10.w),
                  child: CustomDropDown(
                      icon: Container(
                          margin: EdgeInsets.only(left: 30.w),
                          child: CustomImageView(
                              imagePath: Assets.svg.imgArrowdownGray700.path,
                              height: 32.h,
                              width: 30.w)),
                      hintText: 'msg22'.tr,
                      items: dropdownItemList7,
                      onChanged: (value) {})))
        ]));
  }

  /// Section Widget
  Widget _buildFrameColumn(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 60.h),
        decoration: AppDecoration.fillOnErrorContainer,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              imagePath: Assets.svg.imgTicket.path, height: 30.h, width: 92.w),
          SizedBox(height: 37.h),
          Row(children: [
            Text('lbl10'.tr, style: theme.textTheme.bodySmall),
            Padding(
                padding: EdgeInsets.only(left: 19.w),
                child: Text('lbl11'.tr, style: theme.textTheme.bodySmall)),
            Padding(
                padding: EdgeInsets.only(left: 21.w),
                child: Text('lbl12'.tr, style: theme.textTheme.bodySmall))
          ]),
          SizedBox(height: 9.h),
          Padding(
              padding: EdgeInsets.only(right: 9.w),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('lbl13'.tr, style: CustomTextStyles.bodySmallGray500),
                    Text('lbl14'.tr, style: CustomTextStyles.bodySmallGray500),
                    Text('lbl15'.tr, style: CustomTextStyles.bodySmallGray500),
                    Text('lbl16'.tr, style: CustomTextStyles.bodySmallGray500)
                  ])),
          SizedBox(height: 38.h),
          Padding(
              padding: EdgeInsets.only(right: 63.w),
              child: Row(children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text('lbl_address'.tr, style: theme.textTheme.bodySmall),
                  SizedBox(height: 9.h),
                  Text('msg_34'.tr, style: theme.textTheme.bodySmall),
                  Text('msg_2_b101'.tr, style: theme.textTheme.bodySmall)
                ]),
                Padding(
                    padding: EdgeInsets.only(left: 27.w),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('lbl_contact'.tr,
                              style: theme.textTheme.bodySmall),
                          SizedBox(height: 10.h),
                          Text('msg_business_cami_kr'.tr,
                              style: theme.textTheme.bodySmall),
                          Text('lbl_02_861_6828'.tr,
                              style: theme.textTheme.bodySmall)
                        ]))
              ])),
          SizedBox(height: 45.h),
          Text('lbl17'.tr, style: theme.textTheme.bodySmall),
          Text('msg'.tr, style: theme.textTheme.bodySmall),
          SizedBox(height: 15.h),
          Text('msg_copyright_2023'.tr, style: theme.textTheme.bodySmall),
          SizedBox(height: 38.h),
          Row(children: [
            CustomImageView(
                imagePath: Assets.images.imgImage.path,
                height: 24.r,
                width: 24.r),
            CustomImageView(
                imagePath: Assets.images.imgImage.path,
                height: 24.r,
                width: 24.r,
                margin: EdgeInsets.only(left: 16.w)),
            CustomImageView(
                imagePath: Assets.images.imgImage.path,
                height: 24.r,
                width: 24.r,
                margin: EdgeInsets.only(left: 16.w))
          ])
        ]));
  }

  /// Navigates back to the previous screen.
  void onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
