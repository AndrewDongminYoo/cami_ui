// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/localization/app_localization.dart';
import '/theme/app_decoration.dart';
import '/theme/custom_button_style.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_image_view.dart';

class NoticeDetailScreen extends StatelessWidget {
  const NoticeDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      _buildFrameColumn(context),
                      SizedBox(height: 15.h),
                      Padding(
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
                                padding: EdgeInsets.only(left: 127.w),
                                child: Text('lbl10'.tr,
                                    style: CustomTextStyles.bodyLarge18))
                          ])),
                      SizedBox(height: 15.h),
                      Align(
                          child: Divider(
                              color: appTheme.black900,
                              indent: 16.w,
                              endIndent: 16.w)),
                      SizedBox(height: 12.h),
                      Padding(
                          padding: EdgeInsets.only(left: 24.w),
                          child: Text('msg9'.tr.toUpperCase(),
                              style: CustomTextStyles.bodyMediumBlack900)),
                      SizedBox(height: 21.h),
                      Padding(
                          padding: EdgeInsets.only(left: 24.w),
                          child: Text('lbl_2020_03_17'.tr.toUpperCase(),
                              style: CustomTextStyles.bodySmallGray500)),
                      SizedBox(height: 12.h),
                      _buildFrameColumn1(context),
                      SizedBox(height: 28.h),
                      CustomElevatedButton(
                          height: 32.h,
                          width: 104.w,
                          text: 'lbl32'.tr,
                          margin: EdgeInsets.only(right: 16.w),
                          buttonStyle: CustomButtonStyles.fillBlue,
                          buttonTextStyle: CustomTextStyles.bodySmallBlack900,
                          alignment: Alignment.centerRight),
                      SizedBox(height: 128.h),
                      _buildNoticeDetailColumn(context)
                    ])))));
  }

  /// Section Widget
  Widget _buildFrameColumn(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: CustomImageView(
            imagePath: Assets.images.imgAppNavBar.path,
            height: 50.h,
            width: 393.w));
  }

  /// Section Widget
  Widget _buildFrameColumn1(BuildContext context) {
    return Align(
        child: Container(
            width: 361.w,
            margin: EdgeInsets.symmetric(horizontal: 16.w),
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 13.h),
            decoration: AppDecoration.fillGray50,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: 327.w,
                      margin: EdgeInsets.only(right: 9.w),
                      child: Text('msg10'.tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodySmallBlack900
                              .copyWith(height: 1.33))),
                  Container(
                      width: 326.w,
                      margin: EdgeInsets.only(right: 9.w),
                      child: Text('msg11'.tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodySmallBlack900
                              .copyWith(height: 1.33))),
                  Text('msg12'.tr, style: CustomTextStyles.bodySmallBlack900),
                  SizedBox(height: 3.h),
                  Container(
                      width: 327.w,
                      margin: EdgeInsets.only(right: 9.w),
                      child: Text('msg13'.tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodySmallBlack900
                              .copyWith(height: 1.33)))
                ])));
  }

  /// Section Widget
  Widget _buildNoticeDetailColumn(BuildContext context) {
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
