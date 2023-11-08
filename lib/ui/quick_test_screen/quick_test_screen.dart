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

class QuickTestScreen extends StatelessWidget {
  const QuickTestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 52.h),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Column(children: [
                    Text('lbl18'.tr,
                        style: CustomTextStyles
                            .headlineSmallNanumSquareNeoBlack900),
                    SizedBox(height: 66.h),
                    CustomImageView(
                        imagePath: Assets.images.imgImage257x241.path,
                        height: 257.h,
                        width: 241.w),
                    SizedBox(height: 34.h),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 53.w),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('lbl19'.tr,
                                  style: CustomTextStyles
                                      .headlineSmallNanumSquareNeoOnErrorContainer),
                              Padding(
                                  padding: EdgeInsets.only(left: 8.w),
                                  child: Text('lbl20'.tr,
                                      style: theme.textTheme.titleLarge))
                            ])),
                    SizedBox(height: 18.h),
                    _buildClientTestimonials(context),
                    SizedBox(height: 30.h),
                    Container(
                        width: 296.w,
                        margin: EdgeInsets.symmetric(horizontal: 48.w),
                        child: Text('msg3'.tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.bodyMediumBlack900
                                .copyWith(height: 1.43))),
                    SizedBox(height: 2.h),
                    Container(
                        width: 345.w,
                        margin: EdgeInsets.symmetric(horizontal: 23.w),
                        child: Text('msg4'.tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.bodyMediumBlack900
                                .copyWith(height: 1.43))),
                    SizedBox(height: 15.h),
                    CustomElevatedButton(
                        width: 117.w,
                        text: 'lbl22'.tr,
                        buttonStyle: CustomButtonStyles.fillBlack),
                    SizedBox(height: 64.h),
                    CustomImageView(
                        imagePath: Assets.images.imgImage1.path,
                        height: 257.h,
                        width: 241.w),
                    SizedBox(height: 35.h),
                    Text('lbl23'.tr,
                        style: CustomTextStyles.titleLargeOnErrorContainer),
                    SizedBox(height: 18.h),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text('lbl24'.tr,
                          style: CustomTextStyles.bodyMediumBlack900),
                      Padding(
                          padding: EdgeInsets.only(left: 4.w),
                          child: Text('lbl25'.tr,
                              style: CustomTextStyles.bodyMediumBlack900)),
                      Padding(
                          padding: EdgeInsets.only(left: 1.w),
                          child: Text('lbl26'.tr,
                              style: CustomTextStyles.bodyMediumBlack900))
                    ]),
                    SizedBox(height: 30.h),
                    Container(
                        width: 347.w,
                        margin: EdgeInsets.symmetric(horizontal: 22.w),
                        child: Text('msg5'.tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.bodyMediumBlack900
                                .copyWith(height: 1.43))),
                    SizedBox(height: 2.h),
                    Container(
                        width: 315.w,
                        margin: EdgeInsets.only(left: 39.w, right: 38.w),
                        child: Text('msg6'.tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.bodyMediumBlack900
                                .copyWith(height: 1.43))),
                    SizedBox(height: 15.h),
                    CustomElevatedButton(
                        width: 117.w,
                        text: 'lbl22'.tr,
                        buttonStyle: CustomButtonStyles.fillBlack,
                        onPressed: () {
                          onTaptf(context);
                        }),
                    SizedBox(height: 64.h),
                    CustomImageView(
                        imagePath: Assets.images.imgImage2.path,
                        height: 257.h,
                        width: 241.w),
                    SizedBox(height: 34.h),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text('lbl27'.tr,
                          style: CustomTextStyles
                              .headlineSmallNanumSquareNeoOnErrorContainer),
                      Padding(
                          padding: EdgeInsets.only(left: 2.w),
                          child: Text('lbl28'.tr,
                              style: CustomTextStyles
                                  .headlineSmallNanumSquareNeoErrorContainer)),
                      Padding(
                          padding: EdgeInsets.only(left: 3.w),
                          child: Text('lbl29'.tr,
                              style: CustomTextStyles
                                  .headlineSmallNanumSquareNeoOnErrorContainer)),
                      Padding(
                          padding: EdgeInsets.only(left: 2.w),
                          child: Text('lbl30'.tr,
                              style: theme.textTheme.titleLarge)),
                      Padding(
                          padding: EdgeInsets.only(left: 3.w),
                          child: Text('lbl29'.tr,
                              style: CustomTextStyles
                                  .headlineSmallNanumSquareNeoOnErrorContainer))
                    ]),
                    SizedBox(height: 18.h),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 39.w),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(bottom: 20.h),
                                  child: Text('lbl31'.tr,
                                      style:
                                          CustomTextStyles.bodyMediumBlack900)),
                              Container(
                                  width: 185.w,
                                  margin: EdgeInsets.only(left: 6.w),
                                  child: Text('msg7'.tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles
                                          .bodyMediumErrorContainer
                                          .copyWith(height: 1.43)))
                            ])),
                    SizedBox(height: 30.h),
                    Container(
                        width: 350.w,
                        margin: EdgeInsets.only(left: 21.w, right: 20.w),
                        child: Text('msg8'.tr,
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.bodyMediumBlack900
                                .copyWith(height: 1.43))),
                    SizedBox(height: 9.h),
                    CustomElevatedButton(
                        height: 36.h,
                        width: 117.w,
                        text: 'lbl22'.tr,
                        buttonStyle: CustomButtonStyles.fillBlack),
                    SizedBox(height: 122.h),
                    _buildFooter(context)
                  ])))
                ]))));
  }

  /// Section Widget
  Widget _buildClientTestimonials(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 28.w, right: 32.w),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('lbl21'.tr, style: CustomTextStyles.bodyMediumErrorContainer),
          Padding(
              padding: EdgeInsets.only(left: 7.w),
              child:
                  Text('msg2'.tr, style: CustomTextStyles.bodyMediumBlack900))
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
                GestureDetector(
                    onTap: () {
                      onTapTxtWidget2(context);
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
          SizedBox(height: 39.h),
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

  /// Navigates to the namingScreen when the action is triggered.
  void onTaptf(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.namingScreen);
  }

  void onTapTxtWidget(BuildContext context) {
    // TODO: implement Actions
  }

  /// Navigates to the faqScreen when the action is triggered.
  void onTapTxtWidget1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.faqScreen);
  }

  /// Navigates to the contactUsRegisterScreen when the action is triggered.
  void onTapTxtWidget2(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.contactUsRegisterScreen);
  }
}
