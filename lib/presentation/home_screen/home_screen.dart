import '../home_screen/widgets/animaltypetest_item_widget.dart';
import '../home_screen/widgets/expertprofiles_item_widget.dart';
import '../home_screen/widgets/userprofileviewlist1_item_widget.dart';
import '../home_screen/widgets/userreview_item_widget.dart';
import 'package:cami_lab/core/app_export.dart';
import 'package:cami_lab/widgets/custom_outlined_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key})
      : super(
          key: key,
        );

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
                SizedBox(height: 99.v),
                Text(
                  "lbl44".tr,
                  style: CustomTextStyles.bodyMediumGray90002,
                ),
                SizedBox(height: 11.v),
                Text(
                  "lbl45".tr,
                  style: theme.textTheme.headlineSmall,
                ),
                Text(
                  "lbl46".tr,
                  style: theme.textTheme.headlineSmall,
                ),
                SizedBox(height: 39.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildPopularTestsButton(context),
                      _buildRecommendedTestsButton(context),
                    ],
                  ),
                ),
                SizedBox(height: 60.v),
                _buildUserProfileViewList(context),
                SizedBox(height: 60.v),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 25.h,
                    vertical: 13.v,
                  ),
                  decoration: AppDecoration.fillGray50.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder24,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 4.h,
                          bottom: 2.v,
                        ),
                        child: Text(
                          "lbl63".tr,
                          style: CustomTextStyles.bodySmallGray90001,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgArrowRightGray600,
                        height: 12.v,
                        width: 9.h,
                        margin: EdgeInsets.only(
                          left: 8.h,
                          top: 3.v,
                          bottom: 5.v,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 100.v),
                _buildFrameColumn2(context),
                SizedBox(height: 99.v),
                Text(
                  "lbl92".tr,
                  style: CustomTextStyles.bodyMediumGray90002,
                ),
                SizedBox(height: 11.v),
                SizedBox(
                  height: 67.v,
                  width: 183.h,
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "lbl93".tr,
                          style: theme.textTheme.headlineSmall,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "lbl_cami".tr,
                          style: theme.textTheme.headlineSmall,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "lbl94".tr,
                          style: theme.textTheme.headlineSmall,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 6.v),
                Text(
                  "msg51".tr,
                  style: CustomTextStyles.bodySmallGray90002_1,
                ),
                SizedBox(height: 79.v),
                _buildUserReviewTitle(context),
                SizedBox(height: 56.v),
                SizedBox(
                  height: 24.v,
                  child: AnimatedSmoothIndicator(
                    activeIndex: 0,
                    count: 5,
                    effect: ScrollingDotsEffect(
                      spacing: 8,
                      activeDotColor: appTheme.black900,
                      dotColor: appTheme.black900,
                      dotHeight: 8.v,
                      dotWidth: 8.h,
                    ),
                  ),
                ),
                SizedBox(height: 124.v),
                _buildFrameColumn3(context),
                SizedBox(height: 128.v),
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
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      decoration: AppDecoration.fillOnPrimaryContainer,
      child: CustomImageView(
        imagePath: ImageConstant.imgFrameGray900,
        height: 50.v,
        width: 361.h,
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameColumn1(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 28.h),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 83.v),
          Text(
            "lbl86".tr,
            style: theme.textTheme.headlineLarge,
          ),
          SizedBox(height: 8.v),
          Text(
            "lbl87".tr,
            style: theme.textTheme.headlineLarge,
          ),
          SizedBox(height: 24.v),
          Text(
            "msg49".tr,
            style: CustomTextStyles.bodyMediumBlack900,
          ),
          Text(
            "lbl88".tr,
            style: CustomTextStyles.bodyMediumBlack900,
          ),
          SizedBox(height: 39.v),
          CustomImageView(
            imagePath: ImageConstant.imgImage320x337,
            height: 320.v,
            width: 337.h,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPopularTestsButton(BuildContext context) {
    return CustomOutlinedButton(
      width: 178.h,
      text: "lbl61".tr,
      buttonStyle: CustomButtonStyles.outlineBlueGrayTL17,
      buttonTextStyle: theme.textTheme.bodySmall!,
    );
  }

  /// Section Widget
  Widget _buildRecommendedTestsButton(BuildContext context) {
    return CustomOutlinedButton(
      width: 124.h,
      text: "lbl62".tr,
      margin: EdgeInsets.only(left: 10.h),
      buttonStyle: CustomButtonStyles.outlineBlueGrayTL171,
      buttonTextStyle: CustomTextStyles.bodySmallBlack900,
    );
  }

  /// Section Widget
  Widget _buildUserProfileViewList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 28.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 15.v,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return Userprofileviewlist1ItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameColumn2(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 28.h,
        vertical: 99.v,
      ),
      decoration: AppDecoration.fillBlue50,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "lbl90".tr,
            style: CustomTextStyles.bodyMediumGray90002,
          ),
          SizedBox(height: 11.v),
          Text(
            "lbl91".tr,
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 7.v),
          Text(
            "msg_cami".tr,
            style: CustomTextStyles.bodySmallGray90002_1,
          ),
          SizedBox(height: 60.v),
          CarouselSlider.builder(
            options: CarouselOptions(
              height: 180.v,
              initialPage: 0,
              autoPlay: true,
              viewportFraction: 1.0,
              enableInfiniteScroll: false,
              scrollDirection: Axis.horizontal,
              onPageChanged: (
                index,
                reason,
              ) {
                sliderIndex = index;
              },
            ),
            itemCount: 1,
            itemBuilder: (context, index, realIndex) {
              return ExpertprofilesItemWidget();
            },
          ),
          SizedBox(height: 24.v),
          SizedBox(
            height: 24.v,
            child: AnimatedSmoothIndicator(
              activeIndex: sliderIndex,
              count: 1,
              axisDirection: Axis.horizontal,
              effect: ScrollingDotsEffect(
                spacing: 8,
                activeDotColor: appTheme.black900,
                dotColor: appTheme.black900,
                dotHeight: 8.v,
                dotWidth: 8.h,
              ),
            ),
          ),
          SizedBox(height: 28.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserReviewTitle(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 300.v,
        width: 361.h,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle,
              height: 272.v,
              width: 12.h,
              alignment: Alignment.bottomRight,
            ),
            CarouselSlider.builder(
              options: CarouselOptions(
                height: 284.v,
                initialPage: 0,
                autoPlay: true,
                viewportFraction: 1.0,
                enableInfiniteScroll: false,
                scrollDirection: Axis.horizontal,
                onPageChanged: (
                  index,
                  reason,
                ) {
                  sliderIndex1 = index;
                },
              ),
              itemCount: 2,
              itemBuilder: (context, index, realIndex) {
                return UserreviewItemWidget();
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
        horizontal: 28.h,
        vertical: 59.v,
      ),
      decoration: AppDecoration.fillGray50,
      child: Column(
        children: [
          Text(
            "lbl95".tr,
            style: CustomTextStyles.bodyMediumGray90002,
          ),
          SizedBox(height: 11.v),
          Text(
            "lbl18".tr,
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 7.v),
          Text(
            "msg52".tr,
            style: CustomTextStyles.bodySmallGray90002_1,
          ),
          SizedBox(height: 60.v),
          CustomImageView(
            imagePath: ImageConstant.imgImage242x337,
            height: 242.v,
            width: 337.h,
          ),
          SizedBox(height: 60.v),
          ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 12.v,
              );
            },
            itemCount: 2,
            itemBuilder: (context, index) {
              return AnimaltypetestItemWidget();
            },
          ),
          SizedBox(height: 40.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameColumn4(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 60.v,
      ),
      decoration: AppDecoration.fillOnErrorContainer,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgTicket,
            height: 30.v,
            width: 92.h,
          ),
          SizedBox(height: 37.v),
          Row(
            children: [
              Text(
                "lbl10".tr,
                style: theme.textTheme.bodySmall,
              ),
              Padding(
                padding: EdgeInsets.only(left: 19.h),
                child: Text(
                  "lbl11".tr,
                  style: theme.textTheme.bodySmall,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 21.h),
                child: Text(
                  "lbl12".tr,
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ],
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.only(right: 9.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbl13".tr,
                  style: CustomTextStyles.bodySmallGray500,
                ),
                Text(
                  "lbl14".tr,
                  style: CustomTextStyles.bodySmallGray500,
                ),
                Text(
                  "lbl15".tr,
                  style: CustomTextStyles.bodySmallGray500,
                ),
                Text(
                  "lbl16".tr,
                  style: CustomTextStyles.bodySmallGray500,
                ),
              ],
            ),
          ),
          SizedBox(height: 38.v),
          Padding(
            padding: EdgeInsets.only(right: 63.h),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_address".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                    SizedBox(height: 9.v),
                    Text(
                      "msg_34".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                    Text(
                      "msg_2_b101".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 27.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_contact".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                      SizedBox(height: 10.v),
                      Text(
                        "msg_business_cami_kr".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                      Text(
                        "lbl_02_861_6828".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 45.v),
          Text(
            "lbl17".tr,
            style: theme.textTheme.bodySmall,
          ),
          Text(
            "msg".tr,
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 15.v),
          Text(
            "msg_copyright_2023".tr,
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 38.v),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgImage,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(left: 16.h),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgImage,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(left: 16.h),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
