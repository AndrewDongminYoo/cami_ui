import 'package:cami_lab/core/app_export.dart';
import 'package:cami_lab/widgets/custom_drop_down.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class FaqScreen extends StatelessWidget {
  FaqScreen({Key? key}) : super(key: key);

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList1 = ["Item One", "Item Two", "Item Three"];

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgAppNavBar,
                      height: 50.v,
                      width: 393.h),
                  SizedBox(height: 15.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
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
                                    padding: EdgeInsets.only(left: 105.h),
                                    child: Text("lbl11".tr,
                                        style: CustomTextStyles.bodyLarge18))
                              ]))),
                  SizedBox(height: 16.v),
                  Divider(indent: 16.h, endIndent: 16.h),
                  _buildAppNavBarArrowLeft(context),
                  _buildAppNavBarWidget(context),
                  SizedBox(height: 9.v),
                  _buildAppNavBarQStack(context),
                  SizedBox(height: 136.v),
                  _buildAppNavBarFooter(context)
                ])))));
  }

  /// Section Widget
  Widget _buildAppNavBarArrowLeft(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16.h),
        padding: EdgeInsets.all(8.h),
        decoration: AppDecoration.fillGray100,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 9.v, bottom: 7.v),
                  child: Text("lbl_q".tr,
                      style:
                          CustomTextStyles.bodyMediumNanumSquareNeoBlack900)),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(left: 9.h, top: 1.v),
                      child: CustomDropDown(
                          icon: Container(
                              margin: EdgeInsets.only(left: 30.h),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgArrowdownGray700,
                                  height: 32.v,
                                  width: 30.h)),
                          hintText: "lbl55".tr,
                          hintStyle: CustomTextStyles
                              .bodyMediumNanumSquareNeoBlack90013,
                          items: dropdownItemList,
                          onChanged: (value) {})))
            ]));
  }

  /// Section Widget
  Widget _buildAppNavBarWidget(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16.h),
        decoration: AppDecoration.fillGray50,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 23.v),
              Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text("lbl56".tr,
                      style: CustomTextStyles.bodyMediumBlack900)),
              SizedBox(height: 10.v),
              Align(
                  alignment: Alignment.center,
                  child: Container(
                      width: 314.h,
                      margin: EdgeInsets.only(left: 20.h, right: 26.h),
                      child: Text("msg_1_explorer".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodyMediumBlack900
                              .copyWith(height: 2.00)))),
              Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text("msg17".tr,
                      style: CustomTextStyles.bodyMediumBlack900)),
              SizedBox(height: 10.v),
              Container(
                  width: 307.h,
                  margin: EdgeInsets.only(left: 20.h, right: 33.h),
                  child: Text("msg_22".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyMediumBlack900
                          .copyWith(height: 2.00))),
              Container(
                  width: 304.h,
                  margin: EdgeInsets.only(left: 20.h, right: 36.h),
                  child: Text("msg_32".tr,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyMediumBlack900
                          .copyWith(height: 2.00))),
              SizedBox(height: 29.v),
              Align(
                  alignment: Alignment.center,
                  child: Container(
                      width: 317.h,
                      margin: EdgeInsets.only(left: 20.h, right: 23.h),
                      child: Text("msg18".tr,
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodyMediumBlack900
                              .copyWith(height: 2.00)))),
              SizedBox(height: 24.v),
              Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text("lbl57".tr,
                      style: CustomTextStyles.bodyMediumBlack900)),
              SizedBox(height: 30.v),
              Divider()
            ]));
  }

  /// Section Widget
  Widget _buildAppNavBarQStack(BuildContext context) {
    return SizedBox(
        height: 342.v,
        width: 361.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Padding(
                  padding: EdgeInsets.only(top: 107.v),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 10.v, bottom: 13.v),
                            child: Text("lbl_q".tr,
                                style: CustomTextStyles
                                    .bodyMediumNanumSquareNeoBlack900)),
                        Expanded(
                            child: Padding(
                                padding: EdgeInsets.only(left: 9.h),
                                child: CustomDropDown(
                                    icon: Container(
                                        margin: EdgeInsets.only(left: 28.h),
                                        child: CustomImageView(
                                            imagePath: ImageConstant
                                                .imgArrowdownGray700,
                                            height: 32.v,
                                            width: 30.h)),
                                    hintText: "msg19".tr,
                                    items: dropdownItemList1,
                                    onChanged: (value) {})))
                      ]))),
          Align(
              alignment: Alignment.center,
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.h),
                    child: _buildQ(context,
                        userName: "lbl_q".tr, userMessage: "lbl58".tr)),
                SizedBox(height: 7.v),
                Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.h, vertical: 6.v),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(top: 15.v, bottom: 13.v),
                              child: Text("lbl_q".tr,
                                  style: CustomTextStyles
                                      .bodyMediumNanumSquareNeoBlack900)),
                          Expanded(
                              child: Container(
                                  width: 273.h,
                                  margin: EdgeInsets.only(left: 9.h, top: 5.v),
                                  child: Text("msg20".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: CustomTextStyles
                                          .bodyMediumNanumSquareNeoBlack900
                                          .copyWith(height: 1.43)))),
                          CustomImageView(
                              imagePath: ImageConstant.imgArrowdownGray700,
                              height: 32.v,
                              width: 30.h,
                              margin: EdgeInsets.only(
                                  left: 18.h, top: 7.v, bottom: 5.v))
                        ])),
                SizedBox(height: 66.v),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.h),
                    child: _buildQ(context,
                        userName: "lbl_q".tr, userMessage: "msg21".tr)),
                SizedBox(height: 17.v),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.h),
                    child: _buildQ(context,
                        userName: "lbl_q".tr, userMessage: "lbl59".tr)),
                SizedBox(height: 17.v),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.h),
                    child: _buildQ(context,
                        userName: "lbl_q".tr, userMessage: "lbl60".tr)),
                SizedBox(height: 17.v),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.h),
                    child: _buildQ(context,
                        userName: "lbl_q".tr, userMessage: "msg22".tr))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildAppNavBarFooter(BuildContext context) {
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
            Padding(
                padding: EdgeInsets.only(left: 17.h),
                child: Text("lbl11".tr, style: theme.textTheme.bodySmall)),
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
                      onTapTxtWidget1(context);
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
  Widget _buildQ(
    BuildContext context, {
    required String userName,
    required String userMessage,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Padding(
          padding: EdgeInsets.only(top: 8.v, bottom: 7.v),
          child: Text(userName,
              style: CustomTextStyles.bodyMediumNanumSquareNeoBlack900
                  .copyWith(color: appTheme.black900))),
      Padding(
          padding: EdgeInsets.only(left: 9.h, top: 7.v, bottom: 8.v),
          child: Text(userMessage,
              style: CustomTextStyles.bodyMediumNanumSquareNeoBlack900
                  .copyWith(color: appTheme.black900))),
      Spacer(),
      CustomImageView(
          imagePath: ImageConstant.imgArrowdownGray700,
          height: 32.v,
          width: 30.h)
    ]);
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapTxtWidget(BuildContext context) {
    // TODO: implement Actions
  }

  /// Navigates to the contactUsRegisterScreen when the action is triggered.
  onTapTxtWidget1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.contactUsRegisterScreen);
  }
}
