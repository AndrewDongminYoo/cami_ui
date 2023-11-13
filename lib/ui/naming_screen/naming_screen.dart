// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// 🌎 Project imports:
import '/core/utils/media_query.dart';
import '/gen/assets.gen.dart';
import '/routes/app_routes.dart';
import '/routes/go_extensions.dart';
import '/theme/app_decoration.dart';
import '/theme/custom_button_style.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/ui/shared/cami_app_bar.dart';
import '/ui/shared/cami_app_footer.dart';
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
            primary: true,
            child: Column(
              children: [
                SizedBox(height: 48.h),
                Text('한 번 해보시개'.tr(),
                    style: CustomTextStyles.titleLargeBlack900.extraBold),
                SizedBox(height: 70.h),
                Text('삼칠이 작명소'.tr(), style: textTheme.titleLarge!.thick),
                SizedBox(height: 18.h),
                Text('개성만점 별명 짓기'.tr(),
                    style: CustomTextStyles.bodyLarge18.bold),
                SizedBox(height: 29.h),
                SizedBox(
                  height: 283.h,
                  width: 289.w,
                  child: Stack(alignment: Alignment.topCenter, children: [
                    Align(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 27.w),
                        child: Column(
                          children: [
                            Text('강렬한 거북이의 안내자'.tr(),
                                style: CustomTextStyles
                                    .headlineSmallBlack900.thick),
                            SizedBox(height: 196.h),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('A.', style: textTheme.bodyLarge),
                                  Padding(
                                    padding: EdgeInsets.only(left: 2.w),
                                    child: Text('꼬리'.tr(),
                                        style: textTheme.bodyLarge),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(left: 3.w),
                                      child: Text('의 아메리카 원주민 이름은'.tr(),
                                          style: textTheme.bodyLarge))
                                ]),
                            Row(
                              children: [
                                Text(
                                  '강렬한 거북이의 안내자'.tr(),
                                  style: textTheme.bodyLarge!.bold.copyWith(
                                      color: appTheme.deepOrange400),
                                ),
                                Text('입니다.'.tr(), style: textTheme.bodyLarge)
                              ],
                            ),
                          ],
                        ),
                      ),
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('꼬리'.tr(),
                                      style:
                                          CustomTextStyles.bodyMediumBlack900),
                                  SizedBox(height: 2.h),
                                  Text('5살 2개월'.tr(),
                                      style:
                                          CustomTextStyles.bodyMediumBlack900),
                                  SizedBox(height: 3.h),
                                  Text('남자'.tr(), style: textTheme.bodyLarge)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]),
                ),
                SizedBox(height: 78.h),
                SliderItemWidget(
                    current: indexListenable, items: sliderBanners),
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
                          activeDotColor: Colors.black,
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
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomElevatedButton(
                          height: 56.h,
                          width: 144.w,
                          text: '다시하기'.tr(),
                          buttonStyle: CustomButtonStyles.fillPrimary,
                          buttonTextStyle:
                              CustomTextStyles.bodyMediumOnErrorContainer,
                          onPressed: (context) {
                            context.safePop();
                          },
                        ),
                        CustomElevatedButton(
                          height: 56.h,
                          width: 144.w,
                          text: '목록으로'.tr(),
                          margin: EdgeInsets.only(left: 21.w),
                          buttonStyle: CustomButtonStyles.fillBlack,
                          onPressed: onTapBackToList,
                        )
                      ]),
                ),
                SizedBox(height: 178.h),
                const CamiAppFooter()
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Navigates to the quickTestScreen when the action is triggered.
  void onTapBackToList(BuildContext context) {
    context.go(AppRoutes.quickTestScreen);
  }

  /// Navigates to the faqScreen when the action is triggered.
  void onTapTxtWidget(BuildContext context) {
    context.go(AppRoutes.faqScreen);
  }

  /// Navigates to the contactUsRegisterScreen when the action is triggered.
  void onTapTxtWidget1(BuildContext context) {
    context.go(AppRoutes.contactUsRegisterScreen);
  }
}
