// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/localization/app_localization.dart';
import '/routes/app_routes.dart';
import '/theme/app_decoration.dart';
import '/theme/custom_button_style.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_image_view.dart';
import '/widgets/custom_text_form_field.dart';

class ContactUsRegisterScreen extends StatelessWidget {
  ContactUsRegisterScreen({super.key});

  final editTextController = TextEditingController();

  final editTextController1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
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
                                    padding: EdgeInsets.only(left: 132.w),
                                    child: Text('lbl_1_12'.tr,
                                        style: CustomTextStyles.bodyLarge18))
                              ]))),
                  SizedBox(height: 40.h),
                  Divider(
                      color: appTheme.black900, indent: 16.w, endIndent: 16.w),
                  SizedBox(height: 17.h),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 32.w),
                          child: Text('lbl_1_13'.tr,
                              style: theme.textTheme.bodyLarge))),
                  SizedBox(height: 16.h),
                  Divider(
                      color: appTheme.gray500, indent: 16.w, endIndent: 16.w),
                  SizedBox(height: 22.h),
                  _buildUserProfile(context),
                  SizedBox(height: 23.h),
                  _buildRecentOrders(context),
                  SizedBox(height: 28.h),
                  CustomElevatedButton(
                      text: 'lbl43'.tr,
                      margin: EdgeInsets.symmetric(horizontal: 16.w),
                      buttonStyle: CustomButtonStyles.fillBlackTL12),
                  SizedBox(height: 128.h),
                  _buildFooter(context)
                ])))));
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 28.w, right: 16.w),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
              width: 44.w,
              child: Text('lbl41'.tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyLarge!.copyWith(height: 1.50))),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 15.w, top: 4.h, bottom: 4.h),
                  child: CustomTextFormField(controller: editTextController))),
          Container(
              height: 40.h,
              width: 34.w,
              margin: EdgeInsets.only(left: 8.w, top: 4.h, bottom: 4.h),
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 16.h),
              decoration: AppDecoration.fillGray
                  .copyWith(borderRadius: BorderRadiusStyle.circleBorder8),
              child: CustomImageView(
                  imagePath: Assets.svg.imgArrowDown.path,
                  height: 8.h,
                  width: 13.w,
                  alignment: Alignment.center))
        ]));
  }

  /// Section Widget
  Widget _buildRecentOrders(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 28.w, right: 16.w),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: 43.w,
                  margin: EdgeInsets.only(top: 3.h, bottom: 43.h),
                  child: Text('lbl42'.tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style:
                          theme.textTheme.bodyLarge!.copyWith(height: 1.50))),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(left: 16.w),
                      child: CustomTextFormField(
                          controller: editTextController1,
                          textInputAction: TextInputAction.done)))
            ]));
  }

  /// Section Widget
  Widget _buildFooter(BuildContext context) {
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
            GestureDetector(
                onTap: () {
                  onTapTxtWidget1(context);
                },
                child: Padding(
                    padding: EdgeInsets.only(left: 17.w),
                    child: Text('lbl11'.tr, style: theme.textTheme.bodySmall))),
            Padding(
                padding: EdgeInsets.only(left: 17.w),
                child: Text('lbl12'.tr, style: theme.textTheme.bodySmall))
          ]),
          SizedBox(height: 9.h),
          Padding(
              padding: EdgeInsets.only(right: 19.w),
              child: Row(children: [
                Text('lbl13'.tr, style: CustomTextStyles.bodySmallGray500),
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
          SizedBox(
              height: 34.h,
              width: 241.w,
              child: Stack(alignment: Alignment.bottomCenter, children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Text('lbl17'.tr, style: theme.textTheme.bodySmall)),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Text('msg'.tr, style: theme.textTheme.bodySmall))
              ])),
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

  /// Navigates back to the previous screen.
  void onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  void onTapTxtWidget(BuildContext context) {
    // TODO: implement Actions
  }

  /// Navigates to the faqScreen when the action is triggered.
  void onTapTxtWidget1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.faqScreen);
  }
}