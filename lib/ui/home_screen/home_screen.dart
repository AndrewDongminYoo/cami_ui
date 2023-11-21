// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// 🌎 Project imports:
import '/core/utils/media_query.dart';
import '/data/models/check_up.dart';
import '/gen/assets.gen.dart';
import '/theme/app_decoration.dart';
import '/theme/custom_button_style.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/ui/shared/cami_app_bar.dart';
import '/ui/shared/cami_app_footer.dart';
import '/ui/shared/check_up_item_widget.dart';
import '/ui/shared/check_up_list.dart';
import '/widgets/custom_image_view.dart';
import '/widgets/custom_outlined_button.dart';
import 'widgets/expert_profiles_item_widget.dart';
import 'widgets/quick_test_banner.dart';
import 'widgets/user_review_item_widget.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  int sliderIndex = 1;
  int sliderIndex1 = 1;

  List<CheckUp> allCheckUp =
      checkUpList.where((test) => test.popular ?? false).toList();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: const CamiAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            primary: true,
            child: Column(
              children: [
                _buildSubtitle(context),
                SizedBox(height: 99.h),
                Text(
                  '찾아봐요'.tr(),
                  style: textTheme.bodyMedium!.colored(const Color(0xFF1F2020)),
                ),
                SizedBox(height: 11.h),
                Text('우리에게 필요한'.tr(),
                    style: textTheme.headlineSmall!.extraBold),
                Text('심리검사는?'.tr(), style: textTheme.headlineSmall!.extraBold),
                SizedBox(height: 39.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildPopularTestsButton(context),
                      _buildRecommendedTestsButton(context),
                    ],
                  ),
                ),
                SizedBox(height: 60.h),
                _buildUserProfileViewList(context),
                SizedBox(height: 60.h),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 25.w,
                    vertical: 13.h,
                  ),
                  decoration: AppDecoration.fillGray50
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 4.w,
                          bottom: 2.h,
                        ),
                        child: Text(
                          '더 많은 검사 보러가기'.tr(),
                          style: textTheme.bodySmall!
                              .colored(const Color(0xFF121212)),
                        ),
                      ),
                      CustomImageView(
                        imagePath: Assets.svg.imgArrowRightGray600.path,
                        height: 12.h,
                        width: 9.w,
                        margin: EdgeInsets.only(
                          left: 8.w,
                          top: 3.h,
                          bottom: 5.h,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 100.h),
                _buildCamiAdvisoryBoard(context),
                SizedBox(height: 99.h),
                Text(
                  '고마워요'.tr(),
                  style: textTheme.bodyMedium!.colored(const Color(0xFF1F2020)),
                ),
                SizedBox(height: 11.h),
                SizedBox(
                  height: 67.h,
                  width: 183.w,
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          '심리검사로'.tr(),
                          style: textTheme.headlineSmall!
                              .colored(const Color(0xFF1F2020)),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'CAMI',
                          style: textTheme.headlineSmall!
                              .colored(const Color(0xFF1F2020)),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          '찾아온 기적'.tr(),
                          style: textTheme.headlineSmall!
                              .colored(const Color(0xFF1F2020)),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 6.h),
                Text(
                  '실제 반려생활에 도움 받은 고객님들의 후기랍니다 🤍'.tr(),
                  style: textTheme.bodySmall!.colored(const Color(0xFF1F2020)),
                ),
                SizedBox(height: 79.h),
                _buildUserReviewTitle(context),
                SizedBox(height: 56.h),
                SizedBox(
                  height: 24.h,
                  child: AnimatedSmoothIndicator(
                    activeIndex: 0,
                    count: 5,
                    effect: ScrollingDotsEffect(
                      activeDotColor: Colors.black,
                      dotColor: Colors.black,
                      dotHeight: 8.h,
                      dotWidth: 8.w,
                    ),
                  ),
                ),
                SizedBox(height: 124.h),
                _buildQuickTestTitle(context),
                SizedBox(height: 128.h),
                const CamiAppFooter(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSubtitle(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 28.w),
      decoration: AppDecoration.fillPrimary
          .copyWith(borderRadius: BorderRadiusStyle.circleBorder20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 83.h),
          Text('반려동물의'.tr(), style: textTheme.headlineLarge!.extraBold),
          SizedBox(height: 8.h),
          Text('마음을 읽다, 카미'.tr(), style: textTheme.headlineLarge!.extraBold),
          SizedBox(height: 24.h),
          Text('수의사가 제안하는 반려생활 솔루션으로'.tr(), style: textTheme.bodyMedium),
          Text('행복한 기적을 만듭니다'.tr(), style: textTheme.bodyMedium),
          SizedBox(height: 39.h),
          CustomImageView(
            imagePath: Assets.images.mainIllustMo.path,
            height: 320.h,
            width: 337.w,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPopularTestsButton(BuildContext context) {
    return CustomOutlinedButton(
      onPressed: (context) {
        allCheckUp =
            checkUpList.where((test) => test.popular ?? false).toList();
      },
      width: 178.w,
      text: '많은 분들이 찾은 인기 검사'.tr(),
      buttonStyle: CustomButtonStyles.outlineBlueGrayTL17,
      buttonTextStyle: textTheme.bodySmall!.colored(Colors.white),
    );
  }

  /// Section Widget
  Widget _buildRecommendedTestsButton(BuildContext context) {
    return CustomOutlinedButton(
      onPressed: (context) {
        allCheckUp =
            checkUpList.where((test) => test.featured ?? false).toList();
      },
      width: 124.w,
      text: '수의사 추천 검사'.tr(),
      margin: EdgeInsets.only(left: 10.w),
      buttonStyle: CustomButtonStyles.outlineBlueGrayTL171,
      buttonTextStyle: textTheme.bodySmall,
    );
  }

  /// Section Widget
  Widget _buildUserProfileViewList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 28.w),
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 15.h);
        },
        itemCount: allCheckUp.length,
        itemBuilder: (context, index) {
          final item = allCheckUp[index];
          return CheckUpItemWidget(
            thumbPath: item.thumbPath!,
            short: item.short!,
            nickname: item.nickname!,
            description: item.description!,
            location: item.location!,
          );
        },
      ),
    );
  }

  /// The CAMI Advisory Board is here to help you get your pet's life right.
  Widget _buildCamiAdvisoryBoard(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 28.w,
        vertical: 99.h,
      ),
      decoration: AppDecoration.fillBlue50,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '함께해요'.tr(),
            style: textTheme.bodyMedium!.colored(const Color(0xFF1F2020)),
          ),
          SizedBox(height: 11.h),
          Text(
            '누가 만들었을까요?'.tr(),
            style: textTheme.headlineSmall!.colored(const Color(0xFF1F2020)),
          ),
          SizedBox(height: 7.h),
          Text(
            '올바른 반려 생활을 위해 CAMI 자문위원단이 모였어요.'.tr(),
            style: textTheme.bodySmall!.colored(const Color(0xFF1F2020)),
          ),
          SizedBox(height: 60.h),
          CarouselSlider.builder(
            options: CarouselOptions(
              height: 180.h,
              autoPlay: true,
              viewportFraction: 1,
              enableInfiniteScroll: false,
              onPageChanged: (
                index,
                reason,
              ) {
                sliderIndex = index;
              },
            ),
            itemCount: 1,
            itemBuilder: (context, index, realIndex) {
              return const ExpertProfilesItemWidget();
            },
          ),
          SizedBox(height: 24.h),
          SizedBox(
            height: 24.h,
            child: AnimatedSmoothIndicator(
              activeIndex: sliderIndex,
              count: 1,
              effect: ScrollingDotsEffect(
                activeDotColor: Colors.black,
                dotColor: Colors.black,
                dotHeight: 8.h,
                dotWidth: 8.w,
              ),
            ),
          ),
          SizedBox(height: 28.h),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserReviewTitle(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      height: 300.h,
      width: 361.w,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: 272.h,
            width: 12.w,
            alignment: Alignment.bottomRight,
          ),
          CarouselSlider.builder(
            options: CarouselOptions(
              height: 284.h,
              autoPlay: true,
              viewportFraction: 1,
              enableInfiniteScroll: false,
              onPageChanged: (
                index,
                reason,
              ) {
                sliderIndex1 = index;
              },
            ),
            itemCount: 2,
            itemBuilder: (context, index, realIndex) {
              return const UserReviewItemWidget();
            },
          ),
        ],
      ),
    );
  }

  /// A fun 3-minute CAMI checkup, the first step to being a good pet parent
  Widget _buildQuickTestTitle(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 28.w,
        vertical: 59.h,
      ),
      decoration: AppDecoration.fillGray50,
      child: Column(
        children: [
          Text(
            '간단해요'.tr(),
            style: textTheme.bodyMedium!.colored(const Color(0xFF1F2020)),
          ),
          SizedBox(height: 11.h),
          Text(
            '반짝 테스트'.tr(),
            style: textTheme.headlineSmall!.colored(const Color(0xFF1F2020)),
          ),
          SizedBox(height: 7.h),
          Text(
            '양육자가 되기 위한 첫걸음, 재밌는 CAMI 3분 검사'.tr(),
            style: textTheme.bodySmall!.colored(const Color(0xFF1F2020)),
          ),
          SizedBox(height: 60.h),
          CustomImageView(
            imagePath: Assets.images.mainStar.path,
            height: 242.h,
            width: 337.w,
          ),
          SizedBox(height: 60.h),
          QuickTestBanner(
            title1: '동물 유형 테스트'.tr(),
            title2: '나는 강아지형 vs 고양이형 ?'.tr(),
            imagePath: Assets.images.figure1.path,
          ),
          QuickTestBanner(
            title1: '엉뚱 발랄 작명소'.tr(),
            title2: '원주민식 이름짓기'.tr(),
            imagePath: Assets.images.figure2.path,
          ),
          SizedBox(height: 40.h),
        ],
      ),
    );
  }
}
