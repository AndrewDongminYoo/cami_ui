import '../home_screen/widgets/slider1_item_widget.dart';
import '../home_screen/widgets/widget_item_widget.dart';
import 'package:cami_lab/core/app_export.dart';
import 'package:cami_lab/widgets/custom_elevated_button.dart';
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
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 28.h),
                  decoration: AppDecoration.fillYellow.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder20,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: 83.v),
                      Text(
                        "lbl86".tr,
                        style: CustomTextStyles
                            .headlineLargeNanumSquareNeoGray90001,
                      ),
                      SizedBox(height: 8.v),
                      Text(
                        "lbl87".tr,
                        style: CustomTextStyles
                            .headlineLargeNanumSquareNeoGray90001,
                      ),
                      SizedBox(height: 24.v),
                      Text(
                        "msg49".tr,
                        style: CustomTextStyles.bodyMediumBlack900_1,
                      ),
                      Text(
                        "lbl88".tr,
                        style: CustomTextStyles.bodyMediumBlack900_1,
                      ),
                      SizedBox(height: 39.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgImage320x337,
                        height: 320.v,
                        width: 337.h,
                      ),
                    ],
                  ),
                ),
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
                _buildDcsiFrameColumn(context),
                SizedBox(height: 15.v),
                _buildCcsiFrameColumn(context),
                SizedBox(height: 16.v),
                _buildDobiFrameColumn(context),
                SizedBox(height: 60.v),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.h,
                    vertical: 15.v,
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
                        padding: EdgeInsets.only(bottom: 2.v),
                        child: Text(
                          "lbl63".tr,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.bodySmallGray90001,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgArrowRightGray600,
                        height: 12.v,
                        width: 9.h,
                        margin: EdgeInsets.only(
                          left: 2.h,
                          right: 1.h,
                          bottom: 2.v,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 100.v),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 28.h,
                    vertical: 100.v,
                  ),
                  decoration: AppDecoration.fillBlue5001,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "lbl90".tr,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.bodyMediumGray90002,
                      ),
                      SizedBox(height: 15.v),
                      Text(
                        "lbl91".tr,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.headlineSmall,
                      ),
                      SizedBox(height: 10.v),
                      Text(
                        "msg_cami".tr,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.bodySmallGray90002_1,
                      ),
                      SizedBox(height: 61.v),
                      _buildSlider(context),
                      SizedBox(height: 24.v),
                      SizedBox(
                        height: 24.v,
                        child: AnimatedSmoothIndicator(
                          activeIndex: sliderIndex,
                          count: 6,
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
                ),
                SizedBox(height: 100.v),
                Text(
                  "lbl92".tr,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyMediumGray90002,
                ),
                SizedBox(height: 15.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "lbl_cami".tr,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.headlineSmall,
                    ),
                    Text(
                      "lbl93".tr,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.headlineSmall,
                    ),
                  ],
                ),
                Text(
                  "lbl94".tr,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headlineSmall,
                ),
                SizedBox(height: 10.v),
                Text(
                  "msg51".tr,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodySmallGray90002_1,
                ),
                SizedBox(height: 79.v),
                _buildWidgetStack(context),
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
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 28.h,
                    vertical: 60.v,
                  ),
                  decoration: AppDecoration.fillGray50,
                  child: Column(
                    children: [
                      Text(
                        "lbl95".tr,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.bodyMediumGray90002,
                      ),
                      SizedBox(height: 15.v),
                      Text(
                        "lbl18".tr,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.headlineSmall,
                      ),
                      SizedBox(height: 10.v),
                      Text(
                        "msg52".tr,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.bodySmallGray90002_1,
                      ),
                      SizedBox(height: 61.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgImage242x337,
                        height: 242.v,
                        width: 337.h,
                      ),
                      SizedBox(height: 60.v),
                      _buildVsFrameColumn(context),
                      SizedBox(height: 12.v),
                      _buildVsFrameColumn1(context),
                      SizedBox(height: 40.v),
                    ],
                  ),
                ),
                SizedBox(height: 128.v),
                Container(
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
                      SizedBox(height: 39.v),
                      Row(
                        children: [
                          Text(
                            "lbl10".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Text(
                              "lbl11".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Text(
                              "lbl12".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12.v),
                      _buildAddressRow(context),
                      SizedBox(height: 40.v),
                      Padding(
                        padding: EdgeInsets.only(right: 60.h),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "lbl_address".tr,
                                  style: theme.textTheme.bodySmall,
                                ),
                                SizedBox(height: 12.v),
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
                              padding: EdgeInsets.only(left: 16.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_contact".tr,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                  SizedBox(height: 12.v),
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
                      SizedBox(height: 48.v),
                      Text(
                        "lbl17".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                      Text(
                        "msg".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                      SizedBox(height: 16.v),
                      Text(
                        "msg_copyright_2023".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                      SizedBox(height: 41.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgFrame24x361,
                        height: 24.v,
                        width: 361.h,
                      ),
                    ],
                  ),
                ),
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
  Widget _buildPopularTestsButton(BuildContext context) {
    return CustomOutlinedButton(
      width: 178.h,
      text: "lbl61".tr,
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
  Widget _buildDcsiButton(BuildContext context) {
    return CustomElevatedButton(
      height: 24.v,
      width: 53.h,
      text: "lbl_dcsi_ii".tr,
      margin: EdgeInsets.only(left: 14.h),
      buttonStyle: CustomButtonStyles.fillGrayTL8,
      buttonTextStyle: CustomTextStyles.bodySmall10,
    );
  }

  /// Section Widget
  Widget _buildDcsiFrameColumn(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 28.h),
      decoration: AppDecoration.outlinePrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: AppDecoration.fillSecondaryContainer,
            child: CustomImageView(
              imagePath: ImageConstant.imgImage15,
              height: 159.v,
              width: 335.h,
            ),
          ),
          SizedBox(height: 13.v),
          _buildDcsiButton(context),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(left: 14.h),
            child: Text(
              "lbl_mbti".tr,
              style: CustomTextStyles.bodyMediumGray90002,
            ),
          ),
          SizedBox(height: 9.v),
          Align(
            alignment: Alignment.center,
            child: Text(
              "msg_16_bti".tr,
              style: CustomTextStyles.bodySmallPrimaryContainer,
            ),
          ),
          SizedBox(height: 42.v),
          Padding(
            padding: EdgeInsets.only(left: 14.h),
            child: _buildFrame(
              context,
              userName: "lbl51".tr,
            ),
          ),
          SizedBox(height: 18.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCcsiButton(BuildContext context) {
    return CustomElevatedButton(
      height: 24.v,
      width: 42.h,
      text: "lbl_ccsi".tr,
      margin: EdgeInsets.only(left: 14.h),
      buttonStyle: CustomButtonStyles.fillGrayTL8,
      buttonTextStyle: CustomTextStyles.bodySmall10,
    );
  }

  /// Section Widget
  Widget _buildCcsiFrameColumn(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 28.h),
      decoration: AppDecoration.outlinePrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: AppDecoration.fillSecondaryContainer,
            child: CustomImageView(
              imagePath: ImageConstant.imgImage164x346,
              height: 159.v,
              width: 335.h,
            ),
          ),
          SizedBox(height: 14.v),
          _buildCcsiButton(context),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(left: 14.h),
            child: Text(
              "lbl_mbti2".tr,
              style: CustomTextStyles.bodyMediumGray90002,
            ),
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.only(left: 14.h),
            child: Text(
              "msg50".tr,
              style: CustomTextStyles.bodySmallPrimaryContainer,
            ),
          ),
          SizedBox(height: 42.v),
          Padding(
            padding: EdgeInsets.only(left: 14.h),
            child: _buildFrame(
              context,
              userName: "lbl51".tr,
            ),
          ),
          SizedBox(height: 17.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDobiFrameColumn(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 28.h),
      decoration: AppDecoration.outlinePrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: AppDecoration.fillSecondaryContainer,
            child: CustomImageView(
              imagePath: ImageConstant.imgImage18,
              height: 159.v,
              width: 335.h,
            ),
          ),
          SizedBox(height: 14.v),
          Container(
            width: 40.h,
            margin: EdgeInsets.only(left: 14.h),
            padding: EdgeInsets.symmetric(
              horizontal: 8.h,
              vertical: 3.v,
            ),
            decoration: AppDecoration.fillGray90002.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Text(
              "lbl_dobi".tr,
              style: CustomTextStyles.bodySmall10,
            ),
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(left: 14.h),
            child: Text(
              "lbl89".tr,
              style: CustomTextStyles.bodyMediumGray90002,
            ),
          ),
          SizedBox(height: 9.v),
          Align(
            alignment: Alignment.center,
            child: Text(
              "msg_1".tr,
              style: CustomTextStyles.bodySmallPrimaryContainer,
            ),
          ),
          SizedBox(height: 42.v),
          Padding(
            padding: EdgeInsets.only(left: 14.h),
            child: _buildFrame(
              context,
              userName: "lbl51".tr,
            ),
          ),
          SizedBox(height: 17.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSlider(BuildContext context) {
    return CarouselSlider.builder(
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
      itemCount: 6,
      itemBuilder: (context, index, realIndex) {
        return Slider1ItemWidget();
      },
    );
  }

  /// Section Widget
  Widget _buildWidgetStack(BuildContext context) {
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
                return WidgetItemWidget();
              },
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildVsFrameColumn(BuildContext context) {
    return Container(
      width: 337.h,
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.v),
          Text(
            "lbl98".tr,
            style: CustomTextStyles.bodyMediumBlack900_1,
          ),
          SizedBox(height: 7.v),
          Text(
            "msg_vs".tr,
            style: CustomTextStyles.bodySmallGray60001,
          ),
          SizedBox(height: 6.v),
          CustomImageView(
            imagePath: ImageConstant.imgImage59x67,
            height: 59.v,
            width: 67.h,
            alignment: Alignment.centerRight,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildVsFrameColumn1(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.v),
          Text(
            "lbl96".tr,
            style: CustomTextStyles.bodyMediumBlack900_1,
          ),
          SizedBox(height: 7.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 65.v),
                child: Text(
                  "lbl97".tr,
                  style: CustomTextStyles.bodySmallGray60001,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgImage67x67,
                height: 67.adaptSize,
                width: 67.adaptSize,
                margin: EdgeInsets.only(top: 14.v),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAddressRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl13".tr,
            style: CustomTextStyles.bodySmallGray500_1,
          ),
          Text(
            "lbl14".tr,
            style: CustomTextStyles.bodySmallGray500_1,
          ),
          Text(
            "lbl15".tr,
            style: CustomTextStyles.bodySmallGray500_1,
          ),
          Text(
            "lbl16".tr,
            style: CustomTextStyles.bodySmallGray500_1,
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String userName,
  }) {
    return Row(
      children: [
        Text(
          userName,
          style: CustomTextStyles.bodySmallGray700.copyWith(
            color: appTheme.gray700,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowdownGray700,
          height: 10.v,
          width: 6.h,
          margin: EdgeInsets.only(top: 5.v),
        ),
      ],
    );
  }
}
