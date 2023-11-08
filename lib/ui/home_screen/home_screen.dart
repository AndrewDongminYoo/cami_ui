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
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildFrameColumn(context),
                _buildFrameColumn1(context),
                SizedBox(height: 99.h),
                Text(
                  'lbl44'.tr,
                  style: CustomTextStyles.bodyMediumGray90002,
                ),
                SizedBox(height: 11.h),
                Text(
                  'lbl45'.tr,
                  style: theme.textTheme.headlineSmall,
                ),
                Text(
                  'lbl46'.tr,
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
                          'lbl63'.tr,
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
                  'lbl92'.tr,
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
                          'lbl93'.tr,
                          style: theme.textTheme.headlineSmall,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'lbl_cami'.tr,
                          style: theme.textTheme.headlineSmall,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          'lbl94'.tr,
                          style: theme.textTheme.headlineSmall,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 6.h),
                Text(
                  'msg51'.tr,
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
            'lbl86'.tr,
            style: theme.textTheme.headlineLarge,
          ),
          SizedBox(height: 8.h),
          Text(
            'lbl87'.tr,
            style: theme.textTheme.headlineLarge,
          ),
          SizedBox(height: 24.h),
          Text(
            'msg49'.tr,
            style: CustomTextStyles.bodyMediumBlack900,
          ),
          Text(
            'lbl88'.tr,
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
      text: 'lbl61'.tr,
      buttonStyle: CustomButtonStyles.outlineBlueGrayTL17,
      buttonTextStyle: theme.textTheme.bodySmall,
    );
  }

  /// Section Widget
  Widget _buildRecommendedTestsButton(BuildContext context) {
    return CustomOutlinedButton(
      width: 124.w,
      text: 'lbl62'.tr,
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
            'lbl90'.tr,
            style: CustomTextStyles.bodyMediumGray90002,
          ),
          SizedBox(height: 11.h),
          Text(
            'lbl91'.tr,
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 7.h),
          Text(
            'msg_cami'.tr,
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
            'lbl95'.tr,
            style: CustomTextStyles.bodyMediumGray90002,
          ),
          SizedBox(height: 11.h),
          Text(
            'lbl18'.tr,
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 7.h),
          Text(
            'msg52'.tr,
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
                'lbl10'.tr,
                style: theme.textTheme.bodySmall,
              ),
              Padding(
                padding: EdgeInsets.only(left: 19.w),
                child: Text(
                  'lbl11'.tr,
                  style: theme.textTheme.bodySmall,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 21.w),
                child: Text(
                  'lbl12'.tr,
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
                  'lbl13'.tr,
                  style: CustomTextStyles.bodySmallGray500,
                ),
                Text(
                  'lbl14'.tr,
                  style: CustomTextStyles.bodySmallGray500,
                ),
                Text(
                  'lbl15'.tr,
                  style: CustomTextStyles.bodySmallGray500,
                ),
                Text(
                  'lbl16'.tr,
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
                      'lbl_address'.tr,
                      style: theme.textTheme.bodySmall,
                    ),
                    SizedBox(height: 9.h),
                    Text(
                      'msg_34'.tr,
                      style: theme.textTheme.bodySmall,
                    ),
                    Text(
                      'msg_2_b101'.tr,
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
                        'lbl_contact'.tr,
                        style: theme.textTheme.bodySmall,
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        'msg_business_cami_kr'.tr,
                        style: theme.textTheme.bodySmall,
                      ),
                      Text(
                        'lbl_02_861_6828'.tr,
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
            'lbl17'.tr,
            style: theme.textTheme.bodySmall,
          ),
          Text(
            'msg'.tr,
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 15.h),
          Text(
            'msg_copyright_2023'.tr,
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
