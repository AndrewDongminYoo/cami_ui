import 'package:cami_lab/core/app_export.dart';
import 'package:cami_lab/presentation/checkup_cat_page/checkup_cat_page.dart';
import 'package:cami_lab/presentation/checkup_dog_page/checkup_dog_page.dart';
import 'package:cami_lab/widgets/app_bar/appbar_subtitle.dart';
import 'package:cami_lab/widgets/app_bar/custom_app_bar.dart';
import 'package:cami_lab/widgets/custom_elevated_button.dart';
import 'package:cami_lab/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';

class CheckupOwnerTabContainerScreen extends StatefulWidget {
  const CheckupOwnerTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  CheckupOwnerTabContainerScreenState createState() =>
      CheckupOwnerTabContainerScreenState();
}

class CheckupOwnerTabContainerScreenState
    extends State<CheckupOwnerTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 7879.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            _buildFrameColumn(context),
                            SizedBox(height: 19.v),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 16.h),
                                child: Text(
                                  "lbl_dpai2".tr,
                                  style: CustomTextStyles.bodyMediumBlack900_1,
                                ),
                              ),
                            ),
                            SizedBox(height: 15.v),
                            CustomImageView(
                              imagePath: ImageConstant.imgImage170x359,
                              height: 171.v,
                              width: 361.h,
                            ),
                            SizedBox(height: 18.v),
                            CustomElevatedButton(
                              height: 23.v,
                              width: 39.h,
                              text: "lbl_dpai".tr,
                              margin: EdgeInsets.only(left: 16.h),
                              buttonStyle: CustomButtonStyles.fillGrayTL8,
                              buttonTextStyle: CustomTextStyles.bodySmall10,
                              alignment: Alignment.centerLeft,
                            ),
                            SizedBox(height: 11.v),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 16.h),
                                child: Text(
                                  "lbl169".tr,
                                  style:
                                      CustomTextStyles.bodyLargeNanumSquareNeo,
                                ),
                              ),
                            ),
                            SizedBox(height: 10.v),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 16.h),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 4.v),
                                      child: CustomRatingBar(
                                        initialRating: 5,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 8.h),
                                      child: Text(
                                        "lbl_42".tr,
                                        style: CustomTextStyles
                                            .bodyMediumBlack900_1,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 7.v),
                            _buildFrameColumn1(context),
                            SizedBox(height: 8.v),
                            _buildFrameRow(context),
                            SizedBox(height: 8.v),
                            CustomElevatedButton(
                              height: 40.v,
                              text: "lbl7".tr,
                              margin: EdgeInsets.symmetric(horizontal: 16.h),
                              buttonStyle: CustomButtonStyles.fillYellow,
                              buttonTextStyle:
                                  CustomTextStyles.bodyMediumOnErrorContainer,
                            ),
                            SizedBox(height: 48.v),
                            _buildTabview(context),
                            SizedBox(height: 24.v),
                            _buildTabBarView(context),
                          ],
                        ),
                      ),
                    ),
                    _buildAppBar(context),
                  ],
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgImage1235x361,
                height: 1235.v,
                width: 361.h,
                alignment: Alignment.bottomCenter,
              ),
            ],
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
      width: 361.h,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.symmetric(
        horizontal: 36.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "lbl5".tr,
                style: CustomTextStyles.bodyMediumGray500,
              ),
              Padding(
                padding: EdgeInsets.only(left: 42.h),
                child: Text(
                  "lbl_842".tr,
                  style: CustomTextStyles.bodyMediumGray800,
                ),
              ),
            ],
          ),
          SizedBox(height: 3.v),
          Row(
            children: [
              Text(
                "lbl6".tr,
                style: CustomTextStyles.bodyMediumGray500,
              ),
              Padding(
                padding: EdgeInsets.only(left: 17.h),
                child: Text(
                  "lbl_202".tr,
                  style: CustomTextStyles.bodyMediumGray800,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 20.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 85.h,
            decoration: AppDecoration.fillGray.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgFrameBlack900,
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 4.v,
                    bottom: 3.v,
                  ),
                  child: Text(
                    "lbl_1".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgFrameBlack90032x32,
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 4.v),
            child: Text(
              "lbl_9_900".tr,
              style: CustomTextStyles.bodyMediumBlack90015,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 40.v,
      width: 362.h,
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.gray500,
        labelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelColor: theme.colorScheme.onPrimaryContainer,
        unselectedLabelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        indicator: BoxDecoration(
          color: appTheme.gray50,
          borderRadius: BorderRadius.circular(
            8.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "lbl8".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl9".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabBarView(BuildContext context) {
    return Container(
      height: 206.v,
      child: TabBarView(
        controller: tabviewController,
        children: [
          CheckupCatPage(),
          CheckupDogPage(),
        ],
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 21.v,
      title: Padding(
        padding: EdgeInsets.only(left: 16.h),
        child: Row(
          children: [
            AppbarSubtitle(
              text: "lbl".tr,
            ),
            AppbarSubtitle(
              text: "lbl2".tr,
              margin: EdgeInsets.only(left: 12.h),
            ),
            AppbarSubtitle(
              text: "lbl3".tr,
              margin: EdgeInsets.only(left: 8.h),
            ),
            AppbarSubtitle(
              text: "lbl2".tr,
              margin: EdgeInsets.only(left: 12.h),
            ),
          ],
        ),
      ),
    );
  }
}
