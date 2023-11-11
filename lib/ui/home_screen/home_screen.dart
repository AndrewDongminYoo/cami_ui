// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/localization/app_localization.dart';
import '/theme/app_decoration.dart';
import '/theme/custom_button_style.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/ui/shared/cami_app_bar.dart';
import '/widgets/custom_image_view.dart';
import '/widgets/custom_outlined_button.dart';
import 'widgets/animal_type_test_item_widget.dart';
import 'widgets/expert_profiles_item_widget.dart';
import 'widgets/user_profile_view_list_item_widget.dart';
import 'widgets/user_review_item_widget.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  int sliderIndex = 1;
  int sliderIndex1 = 1;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: const CamiAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildFrameColumn1(context),
                SizedBox(height: 99.h),
                Text(
                  '찾아봐요'.tr,
                  style: CustomTextStyles.bodyMediumGray90002,
                ),
                SizedBox(height: 11.h),
                Text(
                  '우리에게 필요한'.tr,
                  style: theme.textTheme.headlineSmall,
                ),
                Text(
                  '심리검사는?'.tr,
                  style: theme.textTheme.headlineSmall,
                ),
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
                          '더 많은 검사 보러가기'.tr,
                          style: CustomTextStyles.bodySmallGray90001,
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
                _buildFrameColumn2(context),
                SizedBox(height: 99.h),
                Text(
                  '고마워요'.tr,
                  style: CustomTextStyles.bodyMediumGray90002,
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
                          '심리검사로'.tr,
                          style: theme.textTheme.headlineSmall,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'CAMI',
                          style: theme.textTheme.headlineSmall,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          '찾아온 기적'.tr,
                          style: theme.textTheme.headlineSmall,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 6.h),
                Text(
                  '실제 반려생활에 도움 받은 고객님들의 후기랍니다 🤍'.tr,
                  style: CustomTextStyles.bodySmallGray90002_1,
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
                      activeDotColor: appTheme.black900,
                      dotColor: appTheme.black900,
                      dotHeight: 8.h,
                      dotWidth: 8.w,
                    ),
                  ),
                ),
                SizedBox(height: 124.h),
                _buildFrameColumn3(context),
                SizedBox(height: 128.h),
                _buildFrameColumn4(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameColumn1(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 28.w),
      decoration: AppDecoration.fillPrimary
          .copyWith(borderRadius: BorderRadiusStyle.circleBorder20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 83.h),
          Text(
            '반려동물의'.tr,
            style: theme.textTheme.headlineLarge,
          ),
          SizedBox(height: 8.h),
          Text(
            '마음을 읽다, 카미'.tr,
            style: theme.textTheme.headlineLarge,
          ),
          SizedBox(height: 24.h),
          Text(
            '수의사가 제안하는 반려생활 솔루션으로'.tr,
            style: CustomTextStyles.bodyMediumBlack900,
          ),
          Text(
            '행복한 기적을 만듭니다'.tr,
            style: CustomTextStyles.bodyMediumBlack900,
          ),
          SizedBox(height: 39.h),
          CustomImageView(
            imagePath: Assets.images.imgImage320x337.path,
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
      width: 178.w,
      text: '많은 분들이 찾은 인기 검사'.tr,
      buttonStyle: CustomButtonStyles.outlineBlueGrayTL17,
      buttonTextStyle: theme.textTheme.bodySmall,
    );
  }

  /// Section Widget
  Widget _buildRecommendedTestsButton(BuildContext context) {
    return CustomOutlinedButton(
      width: 124.w,
      text: '수의사 추천 검사'.tr,
      margin: EdgeInsets.only(left: 10.w),
      buttonStyle: CustomButtonStyles.outlineBlueGrayTL171,
      buttonTextStyle: CustomTextStyles.bodySmallBlack900,
    );
  }

  /// Section Widget
  Widget _buildUserProfileViewList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 28.w),
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(height: 15.h);
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return const UserProfileViewListItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameColumn2(BuildContext context) {
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
            '함께해요'.tr,
            style: CustomTextStyles.bodyMediumGray90002,
          ),
          SizedBox(height: 11.h),
          Text(
            '누가 만들었을까요?'.tr,
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 7.h),
          Text(
            '올바른 반려 생활을 위해 CAMI 자문위원단이 모였어요.'.tr,
            style: CustomTextStyles.bodySmallGray90002_1,
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
                activeDotColor: appTheme.black900,
                dotColor: appTheme.black900,
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
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
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
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameColumn3(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 28.w,
        vertical: 59.h,
      ),
      decoration: AppDecoration.fillGray50,
      child: Column(
        children: [
          Text(
            '간단해요'.tr,
            style: CustomTextStyles.bodyMediumGray90002,
          ),
          SizedBox(height: 11.h),
          Text(
            '반짝 테스트'.tr,
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 7.h),
          Text(
            '양육자가 되기 위한 첫걸음, 재밌는 CAMI 3분 검사'.tr,
            style: CustomTextStyles.bodySmallGray90002_1,
          ),
          SizedBox(height: 60.h),
          CustomImageView(
            imagePath: Assets.images.imgImage242x337.path,
            height: 242.h,
            width: 337.w,
          ),
          SizedBox(height: 60.h),
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(height: 12.h);
            },
            itemCount: 2,
            itemBuilder: (context, index) {
              return const AnimalTypeTestItemWidget();
            },
          ),
          SizedBox(height: 40.h),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameColumn4(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 60.h,
      ),
      decoration: AppDecoration.fillOnErrorContainer,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: Assets.svg.imgTicket.path,
            height: 30.h,
            width: 92.w,
          ),
          SizedBox(height: 37.h),
          Row(
            children: [
              Text(
                '공지사항'.tr,
                style: theme.textTheme.bodySmall,
              ),
              Padding(
                padding: EdgeInsets.only(left: 19.w),
                child: Text(
                  '자주 묻는 질문'.tr,
                  style: theme.textTheme.bodySmall,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 21.w),
                child: Text(
                  '이벤트'.tr,
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ],
          ),
          SizedBox(height: 9.h),
          Padding(
            padding: EdgeInsets.only(right: 9.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '고객센터'.tr,
                  style: CustomTextStyles.bodySmallGray500,
                ),
                Text(
                  '이용약관'.tr,
                  style: CustomTextStyles.bodySmallGray500,
                ),
                Text(
                  '개인정보취급방침'.tr,
                  style: CustomTextStyles.bodySmallGray500,
                ),
                Text(
                  '기관 제휴 및 구매 문의'.tr,
                  style: CustomTextStyles.bodySmallGray500,
                ),
              ],
            ),
          ),
          SizedBox(height: 38.h),
          Padding(
            padding: EdgeInsets.only(right: 63.w),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Address',
                      style: theme.textTheme.bodySmall,
                    ),
                    SizedBox(height: 9.h),
                    Text(
                      '서울시 구로구 디지털로34길 55'.tr,
                      style: theme.textTheme.bodySmall,
                    ),
                    Text(
                      '코오롱싸이언스밸리2차 B101'.tr,
                      style: theme.textTheme.bodySmall,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 27.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Contact',
                        style: theme.textTheme.bodySmall,
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        'business@cami.kr',
                        style: theme.textTheme.bodySmall,
                      ),
                      Text(
                        '02-861-6828',
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 45.h),
          Text(
            '주식회사 카미랩'.tr,
            style: theme.textTheme.bodySmall,
          ),
          Text(
            '대표: 조윤수 | 사업자등록번호 : 539-81-02640'.tr,
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 15.h),
          Text(
            'Copyright ⓒ 2023 CAMI Labs. All rights reserved.'.tr,
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 38.h),
          Row(
            children: [
              CustomImageView(
                imagePath: Assets.images.imgImage.path,
                height: 24.r,
                width: 24.r,
              ),
              CustomImageView(
                imagePath: Assets.images.imgImage.path,
                height: 24.r,
                width: 24.r,
                margin: EdgeInsets.only(left: 16.w),
              ),
              CustomImageView(
                imagePath: Assets.images.imgImage.path,
                height: 24.r,
                width: 24.r,
                margin: EdgeInsets.only(left: 16.w),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
