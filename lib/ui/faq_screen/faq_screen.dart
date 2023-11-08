// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/localization/app_localization.dart';
import '/routes/app_routes.dart';
import '/theme/app_decoration.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/widgets/custom_drop_down.dart';
import '/widgets/custom_image_view.dart';

// ignore: must_be_immutable
class FaqScreen extends StatelessWidget {
  FaqScreen({super.key});

  List<String> dropdownItemList = ['Item One', 'Item Two', 'Item Three'];

  List<String> dropdownItemList1 = ['Item One', 'Item Two', 'Item Three'];

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
                      imagePath: Assets.images.imgAppNavBar.path,
                      height: 50.h,
                      width: 393.w),
                  SizedBox(height: 15.h),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 16.w),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: Assets.svg.imgArrowLeft.path,
                                    height: 20.r,
                                    width: 20.r,
                                    margin: EdgeInsets.only(bottom: 6.h),
                                    onTap: () {
                                      onTapImgArrowLeft(context);
                                    }),
                                Padding(
                                    padding: EdgeInsets.only(left: 105.w),
                                    child: Text('lbl11'.tr,
                                        style: CustomTextStyles.bodyLarge18))
                              ]))),
                  SizedBox(height: 16.h),
                  Divider(indent: 16.w, endIndent: 16.w),
                  _buildAppNavBarArrowLeft(context),
                  _buildAppNavBarWidget(context),
                  SizedBox(height: 9.h),
                  _buildAppNavBarQStack(context),
                  SizedBox(height: 136.h),
                  _buildAppNavBarFooter(context)
                ])))));
  }

  /// Section Widget
  Widget _buildAppNavBarArrowLeft(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16.w),
        padding: EdgeInsets.all(8.w),
        decoration: AppDecoration.fillGray100,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 9.h, bottom: 7.h),
                  child: Text('lbl_q'.tr,
                      style:
                          CustomTextStyles.bodyMediumNanumSquareNeoBlack900)),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(left: 9.w, top: 1.h),
                      child: CustomDropDown(
                          icon: Container(
                              margin: EdgeInsets.only(left: 30.w),
                              child: CustomImageView(
                                  imagePath:
                                      Assets.svg.imgArrowdownGray700.path,
                                  height: 32.h,
                                  width: 30.w)),
                          hintText: 'lbl55'.tr,
                          hintStyle: CustomTextStyles
                              .bodyMediumNanumSquareNeoBlack90013,
                          items: dropdownItemList,
                          onChanged: (value) {})))
            ]));
  }

  /// Section Widget
  Widget _buildAppNavBarWidget(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16.w),
        decoration: AppDecoration.fillGray50,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 23.h),
              Padding(
                  padding: EdgeInsets.only(left: 20.w),
                  child: Text('lbl56'.tr,
                      style: CustomTextStyles.bodyMediumBlack900)),
              SizedBox(height: 10.h),
              Align(
                  child: Container(
                      width: 314.w,
                      margin: EdgeInsets.only(left: 20.w, right: 26.w),
                      child: Text('msg_1_explorer'.tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodyMediumBlack900
                              .copyWith(height: 2)))),
              Padding(
                  padding: EdgeInsets.only(left: 20.w),
                  child: Text('msg17'.tr,
                      style: CustomTextStyles.bodyMediumBlack900)),
              SizedBox(height: 10.h),
              Container(
                  width: 307.w,
                  margin: EdgeInsets.only(left: 20.w, right: 33.w),
                  child: Text('msg_22'.tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyMediumBlack900
                          .copyWith(height: 2))),
              Container(
                  width: 304.w,
                  margin: EdgeInsets.only(left: 20.w, right: 36.w),
                  child: Text('msg_32'.tr,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyMediumBlack900
                          .copyWith(height: 2))),
              SizedBox(height: 29.h),
              Align(
                  child: Container(
                      width: 317.w,
                      margin: EdgeInsets.only(left: 20.w, right: 23.w),
                      child: Text('msg18'.tr,
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodyMediumBlack900
                              .copyWith(height: 2)))),
              SizedBox(height: 24.h),
              Padding(
                  padding: EdgeInsets.only(left: 20.w),
                  child: Text('lbl57'.tr,
                      style: CustomTextStyles.bodyMediumBlack900)),
              SizedBox(height: 30.h),
              const Divider()
            ]));
  }

  /// Section Widget
  Widget _buildAppNavBarQStack(BuildContext context) {
    return SizedBox(
        height: 342.h,
        width: 361.w,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Padding(
                  padding: EdgeInsets.only(top: 107.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 10.h, bottom: 13.h),
                            child: Text('lbl_q'.tr,
                                style: CustomTextStyles
                                    .bodyMediumNanumSquareNeoBlack900)),
                        Expanded(
                            child: Padding(
                                padding: EdgeInsets.only(left: 9.w),
                                child: CustomDropDown(
                                    icon: Container(
                                        margin: EdgeInsets.only(left: 28.w),
                                        child: CustomImageView(
                                            imagePath: Assets
                                                .svg.imgArrowdownGray700.path,
                                            height: 32.h,
                                            width: 30.w)),
                                    hintText: 'msg19'.tr,
                                    items: dropdownItemList1,
                                    onChanged: (value) {})))
                      ]))),
          Align(
              child: Column(mainAxisSize: MainAxisSize.min, children: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: _buildQ(context,
                    userName: 'lbl_q'.tr, userMessage: 'lbl58'.tr)),
            SizedBox(height: 7.h),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Padding(
                      padding: EdgeInsets.only(top: 15.h, bottom: 13.h),
                      child: Text('lbl_q'.tr,
                          style: CustomTextStyles
                              .bodyMediumNanumSquareNeoBlack900)),
                  Expanded(
                      child: Container(
                          width: 273.w,
                          margin: EdgeInsets.only(left: 9.w, top: 5.h),
                          child: Text('msg20'.tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles
                                  .bodyMediumNanumSquareNeoBlack900
                                  .copyWith(height: 1.43)))),
                  CustomImageView(
                      imagePath: Assets.svg.imgArrowdownGray700.path,
                      height: 32.h,
                      width: 30.w,
                      margin:
                          EdgeInsets.only(left: 18.w, top: 7.h, bottom: 5.h))
                ])),
            SizedBox(height: 66.h),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: _buildQ(context,
                    userName: 'lbl_q'.tr, userMessage: 'msg21'.tr)),
            SizedBox(height: 17.h),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: _buildQ(context,
                    userName: 'lbl_q'.tr, userMessage: 'lbl59'.tr)),
            SizedBox(height: 17.h),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: _buildQ(context,
                    userName: 'lbl_q'.tr, userMessage: 'lbl60'.tr)),
            SizedBox(height: 17.h),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: _buildQ(context,
                    userName: 'lbl_q'.tr, userMessage: 'msg22'.tr))
          ]))
        ]));
  }

  /// Section Widget
  Widget _buildAppNavBarFooter(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 60.h),
        decoration: AppDecoration.fillOnErrorContainer,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              imagePath: Assets.svg.imgTicket.path, height: 30.h, width: 92.w),
          SizedBox(height: 37.h),
          Row(children: [
            GestureDetector(
                onTap: () {
                  onTapTxtWidget(context);
                },
                child: Text('lbl10'.tr, style: theme.textTheme.bodySmall)),
            Padding(
                padding: EdgeInsets.only(left: 17.w),
                child: Text('lbl11'.tr, style: theme.textTheme.bodySmall)),
            Padding(
                padding: EdgeInsets.only(left: 17.w),
                child: Text('lbl12'.tr, style: theme.textTheme.bodySmall))
          ]),
          SizedBox(height: 9.h),
          Padding(
              padding: EdgeInsets.only(right: 19.w),
              child: Row(children: [
                GestureDetector(
                    onTap: () {
                      onTapTxtWidget1(context);
                    },
                    child: Text('lbl13'.tr,
                        style: CustomTextStyles.bodySmallGray500)),
                Padding(
                    padding: EdgeInsets.only(left: 18.w),
                    child: Text('lbl14'.tr,
                        style: CustomTextStyles.bodySmallGray500)),
                Padding(
                    padding: EdgeInsets.only(left: 16.w),
                    child: Text('lbl15'.tr,
                        style: CustomTextStyles.bodySmallGray500)),
                Padding(
                    padding: EdgeInsets.only(left: 19.w),
                    child: Text('lbl16'.tr,
                        style: CustomTextStyles.bodySmallGray500))
              ])),
          SizedBox(height: 38.h),
          Row(children: [
            Text('lbl_address'.tr, style: theme.textTheme.bodySmall),
            Padding(
                padding: EdgeInsets.only(left: 131.w),
                child: Text('lbl_contact'.tr, style: theme.textTheme.bodySmall))
          ]),
          SizedBox(height: 9.h),
          Padding(
              padding: EdgeInsets.only(right: 72.w),
              child: Row(children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text('msg_34'.tr, style: theme.textTheme.bodySmall),
                  Text('msg_2_b101'.tr, style: theme.textTheme.bodySmall)
                ]),
                Padding(
                    padding: EdgeInsets.only(left: 19.w),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('msg_business_cami_kr'.tr,
                              style: theme.textTheme.bodySmall),
                          Text('lbl_02_861_6828'.tr,
                              style: CustomTextStyles.bodySmall11)
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
                imagePath: Assets.images.imgImage24x24.path,
                height: 24.r,
                width: 24.r),
            CustomImageView(
                imagePath: Assets.images.imgImage3.path,
                height: 24.r,
                width: 24.r,
                margin: EdgeInsets.only(left: 16.w)),
            CustomImageView(
                imagePath: Assets.images.imgImage4.path,
                height: 24.r,
                width: 24.r,
                margin: EdgeInsets.only(left: 16.w))
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
          padding: EdgeInsets.only(top: 8.h, bottom: 7.h),
          child: Text(userName,
              style: CustomTextStyles.bodyMediumNanumSquareNeoBlack900
                  .copyWith(color: appTheme.black900))),
      Padding(
          padding: EdgeInsets.only(left: 9.w, top: 7.h, bottom: 8.h),
          child: Text(userMessage,
              style: CustomTextStyles.bodyMediumNanumSquareNeoBlack900
                  .copyWith(color: appTheme.black900))),
      const Spacer(),
      CustomImageView(
          imagePath: Assets.svg.imgArrowdownGray700.path,
          height: 32.h,
          width: 30.w)
    ]);
  }

  /// Navigates back to the previous screen.
  void onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  void onTapTxtWidget(BuildContext context) {
    // TODO: implement Actions
  }

  /// Navigates to the contactUsRegisterScreen when the action is triggered.
  void onTapTxtWidget1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.contactUsRegisterScreen);
  }
}
