// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
import 'widgets/slider_item_widget.dart';

// ignore: must_be_immutable
class NamingScreen extends StatelessWidget {
  NamingScreen({super.key});

  final indexListenable = ValueNotifier(1);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    final sliderBanners = [
      Assets.images.imgImage186x329.path,
      Assets.images.imgImage5.path,
      Assets.images.imgImage6.path,
    ];
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
              SizedBox(height: 48.h),
              Text('lbl38'.tr, style: CustomTextStyles.titleLargeBlack900),
              SizedBox(height: 70.h),
              Text('lbl23'.tr, style: theme.textTheme.titleLarge),
              SizedBox(height: 18.h),
              Text('lbl39'.tr, style: CustomTextStyles.bodyLarge18),
              SizedBox(height: 29.h),
              SizedBox(
                height: 283.h,
                width: 289.w,
                child: Stack(alignment: Alignment.topCenter, children: [
                  Align(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 27.w),
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                          Text('lbl33'.tr,
                              style: CustomTextStyles.headlineSmallBlack900),
                          SizedBox(height: 196.h),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('lbl_a'.tr,
                                    style: theme.textTheme.bodyLarge),
                                Padding(
                                  padding: EdgeInsets.only(left: 2.w),
                                  child: Text('lbl36'.tr,
                                      style: theme.textTheme.bodyLarge),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(left: 3.w),
                                    child: Text('lbl35'.tr,
                                        style: theme.textTheme.bodyLarge))
                              ]),
                          _buildAddress(context,
                              userAddress: 'lbl33'.tr, userContact: 'lbl34'.tr)
                        ])),
                  ),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          margin: EdgeInsets.only(top: 67.h, bottom: 83.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 56.w, vertical: 16.h),
                          decoration: AppDecoration.fillGray.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder8),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                  imagePath: Assets.images.imgCatProfile.path,
                                  height: 100.r,
                                  width: 100.r,
                                  radius: BorderRadius.circular(50.w),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(
                                        top: 15.h, right: 2.w, bottom: 11.h),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('lbl36'.tr,
                                              style: CustomTextStyles
                                                  .bodyMediumBlack900),
                                          SizedBox(height: 2.h),
                                          Text('lbl_5_2'.tr,
                                              style: CustomTextStyles
                                                  .bodyMediumBlack900),
                                          SizedBox(height: 3.h),
                                          Text('lbl37'.tr,
                                              style: theme.textTheme.bodyLarge)
                                        ]))
                              ])))
                ]),
              ),
              SizedBox(height: 78.h),
              SliderItemWidget(
                  current: indexListenable,
                  items: sliderBanners),
              SizedBox(height: 31.h),
              SizedBox(
                height: 24.h,
                child: ValueListenableBuilder(
                  valueListenable: indexListenable,
                  builder: (context, index, child) {
                    return AnimatedSmoothIndicator(
                      activeIndex: index,
                      count: sliderBanners.length,
                      effect: WormEffect(
                        activeDotColor: appTheme.black900,
                        dotColor: appTheme.gray600,
                        dotHeight: 8.h,
                        dotWidth: 8.w,
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 56.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 42.w),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CustomElevatedButton(
                      height: 56.h,
                      width: 144.w,
                      text: 'lbl40'.tr,
                      buttonStyle: CustomButtonStyles.fillPrimary,
                      buttonTextStyle:
                          CustomTextStyles.bodyMediumOnErrorContainer),
                  CustomElevatedButton(
                      height: 56.h,
                      width: 144.w,
                      text: 'lbl32'.tr,
                      margin: EdgeInsets.only(left: 21.w),
                      buttonStyle: CustomButtonStyles.fillBlack)
                ]),
              ),
              SizedBox(height: 178.h),
              _buildFooter(context)
            ]))),
      ),
    );
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
          Text('lbl10'.tr, style: theme.textTheme.bodySmall),
          GestureDetector(
            onTap: () {
              onTapTxtWidget(context);
            },
            child: Padding(
                padding: EdgeInsets.only(left: 17.w),
                child: Text('lbl11'.tr, style: theme.textTheme.bodySmall)),
          ),
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
              child: Text('lbl13'.tr, style: CustomTextStyles.bodySmallGray500),
            ),
            Padding(
              padding: EdgeInsets.only(left: 18.w),
              child: Text('lbl14'.tr, style: CustomTextStyles.bodySmallGray500),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.w),
              child: Text('lbl15'.tr, style: CustomTextStyles.bodySmallGray500),
            ),
            Padding(
                padding: EdgeInsets.only(left: 19.w),
                child:
                    Text('lbl16'.tr, style: CustomTextStyles.bodySmallGray500))
          ]),
        ),
        SizedBox(height: 38.h),
        _buildAddress(context,
            userAddress: 'lbl_address'.tr, userContact: 'lbl_contact'.tr),
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
          ]),
        ),
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
            margin: EdgeInsets.only(left: 16.w),
          ),
          CustomImageView(
              imagePath: Assets.images.imgImage4.path,
              height: 24.r,
              width: 24.r,
              margin: EdgeInsets.only(left: 16.w))
        ])
      ]),
    );
  }

  /// Common widget
  Widget _buildAddress(
    BuildContext context, {
    required String userAddress,
    required String userContact,
  }) {
    return Row(children: [
      Text(
        userAddress,
        style: theme.textTheme.bodySmall!
            .copyWith(color: theme.colorScheme.onPrimaryContainer),
      ),
      Padding(
          padding: EdgeInsets.only(left: 131.w),
          child: Text(userContact,
              style: theme.textTheme.bodySmall!
                  .copyWith(color: theme.colorScheme.onPrimaryContainer)))
    ]);
  }

  /// Navigates to the faqScreen when the action is triggered.
  void onTapTxtWidget(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.faqScreen);
  }

  /// Navigates to the contactUsRegisterScreen when the action is triggered.
  void onTapTxtWidget1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.contactUsRegisterScreen);
  }
}
