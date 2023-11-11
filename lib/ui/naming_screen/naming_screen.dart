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
import '/ui/shared/cami_app_bar.dart';
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
        appBar: const CamiAppBar(),
        body: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
                child: Column(children: [
              SizedBox(height: 48.h),
              Text('한 번 해보시개'.tr, style: CustomTextStyles.titleLargeBlack900),
              SizedBox(height: 70.h),
              Text('삼칠이 작명소'.tr, style: theme.textTheme.titleLarge),
              SizedBox(height: 18.h),
              Text('개성만점 별명 짓기'.tr, style: CustomTextStyles.bodyLarge18),
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
                          Text('강렬한 거북이의 안내자'.tr,
                              style: CustomTextStyles.headlineSmallBlack900),
                          SizedBox(height: 196.h),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('A.', style: theme.textTheme.bodyLarge),
                                Padding(
                                  padding: EdgeInsets.only(left: 2.w),
                                  child: Text('꼬리'.tr,
                                      style: theme.textTheme.bodyLarge),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(left: 3.w),
                                    child: Text('의 아메리카 원주민 이름은'.tr,
                                        style: theme.textTheme.bodyLarge))
                              ]),
                          _buildAddress(context,
                              userAddress: '강렬한 거북이의 안내자'.tr,
                              userContact: '입니다.'.tr)
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
                                          Text('꼬리'.tr,
                                              style: CustomTextStyles
                                                  .bodyMediumBlack900),
                                          SizedBox(height: 2.h),
                                          Text('5살 2개월'.tr,
                                              style: CustomTextStyles
                                                  .bodyMediumBlack900),
                                          SizedBox(height: 3.h),
                                          Text('남자'.tr,
                                              style: theme.textTheme.bodyLarge)
                                        ]))
                              ])))
                ]),
              ),
              SizedBox(height: 78.h),
              SliderItemWidget(current: indexListenable, items: sliderBanners),
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
                      text: '다시하기'.tr,
                      buttonStyle: CustomButtonStyles.fillPrimary,
                      buttonTextStyle:
                          CustomTextStyles.bodyMediumOnErrorContainer),
                  CustomElevatedButton(
                      height: 56.h,
                      width: 144.w,
                      text: '목록으로'.tr,
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
          Text('공지사항'.tr, style: theme.textTheme.bodySmall),
          GestureDetector(
            onTap: () {
              onTapTxtWidget(context);
            },
            child: Padding(
                padding: EdgeInsets.only(left: 17.w),
                child: Text('자주 묻는 질문'.tr, style: theme.textTheme.bodySmall)),
          ),
          Padding(
              padding: EdgeInsets.only(left: 17.w),
              child: Text('이벤트'.tr, style: theme.textTheme.bodySmall))
        ]),
        SizedBox(height: 9.h),
        Padding(
          padding: EdgeInsets.only(right: 19.w),
          child: Row(children: [
            GestureDetector(
              onTap: () {
                onTapTxtWidget1(context);
              },
              child: Text('고객센터'.tr, style: CustomTextStyles.bodySmallGray500),
            ),
            Padding(
              padding: EdgeInsets.only(left: 18.w),
              child: Text('이용약관'.tr, style: CustomTextStyles.bodySmallGray500),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.w),
              child:
                  Text('개인정보취급방침'.tr, style: CustomTextStyles.bodySmallGray500),
            ),
            Padding(
                padding: EdgeInsets.only(left: 19.w),
                child: Text('기관 제휴 및 구매 문의'.tr,
                    style: CustomTextStyles.bodySmallGray500))
          ]),
        ),
        SizedBox(height: 38.h),
        _buildAddress(context, userAddress: 'Address', userContact: 'Contact'),
        SizedBox(height: 9.h),
        Padding(
          padding: EdgeInsets.only(right: 72.w),
          child: Row(children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text('서울시 구로구 디지털로34길 55'.tr, style: theme.textTheme.bodySmall),
              Text('코오롱싸이언스밸리2차 B101'.tr, style: theme.textTheme.bodySmall)
            ]),
            Padding(
                padding: EdgeInsets.only(left: 19.w),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('business@cami.kr',
                          style: theme.textTheme.bodySmall),
                      Text('02-861-6828', style: CustomTextStyles.bodySmall11)
                    ]))
          ]),
        ),
        SizedBox(height: 45.h),
        Text('주식회사 카미랩'.tr, style: theme.textTheme.bodySmall),
        Text('대표: 조윤수 | 사업자등록번호 : 539-81-02640'.tr,
            style: theme.textTheme.bodySmall),
        SizedBox(height: 15.h),
        Text('Copyright ⓒ 2023 CAMI Labs. All rights reserved.'.tr,
            style: theme.textTheme.bodySmall),
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
