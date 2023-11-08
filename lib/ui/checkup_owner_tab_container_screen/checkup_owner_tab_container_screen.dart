// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/localization/app_localization.dart';
import '/theme/app_decoration.dart';
import '/theme/custom_button_style.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/ui/checkup_owner_page/checkup_owner_page.dart';
import '/ui/shared/cami_app_bar.dart';
import '/widgets/app_bar/appbar_title.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_image_view.dart';

class CheckupOwnerTabContainerScreen extends StatefulWidget {
  const CheckupOwnerTabContainerScreen({super.key});

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
        appBar: const CamiAppBar(),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _breadcrumbs(context),
                SizedBox(height: 19.h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.w),
                    child: Text(
                      'lbl_dpai2'.tr,
                      style: CustomTextStyles.bodyMediumBlack900,
                    ),
                  ),
                ),
                SizedBox(height: 15.h),
                CustomImageView(
                  imagePath: Assets.images.imgImage170x359.path,
                  height: 171.h,
                  width: 361.w,
                ),
                SizedBox(height: 18.h),
                CustomElevatedButton(
                  height: 23.h,
                  width: 39.w,
                  text: 'lbl_dpai'.tr,
                  margin: EdgeInsets.only(left: 16.w),
                  buttonTextStyle: CustomTextStyles.bodySmall10,
                  alignment: Alignment.centerLeft,
                ),
                SizedBox(height: 11.h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.w),
                    child: Text(
                      'lbl169'.tr,
                      style: CustomTextStyles.bodyLargeNanumSquareNeo,
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.w),
                    child: Row(
                      children: [
                        CustomImageView(
                          imagePath: Assets.images.imgInfo.path,
                          height: 12.h,
                          width: 68.w,
                          margin: EdgeInsets.symmetric(vertical: 4.h),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8.w),
                          child: Text(
                            'lbl_42'.tr,
                            style: CustomTextStyles.bodyMediumBlack900,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 7.h),
                _buildFrame1(context),
                SizedBox(height: 8.h),
                _buildFrame2(context),
                SizedBox(height: 8.h),
                CustomElevatedButton(
                  text: 'lbl7'.tr,
                  margin: EdgeInsets.symmetric(horizontal: 16.w),
                  buttonStyle: CustomButtonStyles.fillPrimary,
                  buttonTextStyle: CustomTextStyles.bodyMediumOnErrorContainer,
                ),
                SizedBox(height: 48.h),
                _buildTabview(context),
                SizedBox(
                  height: 7241.h,
                  child: TabBarView(
                    controller: tabviewController,
                    children: const [
                      CheckupOwnerPage(),
                      CheckupOwnerPage(),
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
  Widget _breadcrumbs(BuildContext context) {
    return CustomAppBar(
      title: Padding(
        padding: EdgeInsets.only(left: 16.w),
        child: Row(
          children: [
            AppbarTitle(text: 'lbl'.tr),
            AppbarTitle(
              text: '/',
              margin: EdgeInsets.only(left: 12.w),
            ),
            AppbarTitle(
              text: 'lbl3'.tr,
              margin: EdgeInsets.only(left: 8.w),
            ),
            AppbarTitle(
              text: '/',
              margin: EdgeInsets.only(left: 12.w),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return Container(
      width: 361.w,
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      padding: EdgeInsets.symmetric(
        horizontal: 36.w,
        vertical: 15.h,
      ),
      decoration: AppDecoration.fillGray
          .copyWith(borderRadius: BorderRadiusStyle.circleBorder12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'lbl5'.tr,
                style: theme.textTheme.bodyMedium,
              ),
              Padding(
                padding: EdgeInsets.only(left: 42.w),
                child: Text(
                  'lbl_842'.tr,
                  style: CustomTextStyles.bodyMediumGray800,
                ),
              ),
            ],
          ),
          SizedBox(height: 3.h),
          Row(
            children: [
              Text(
                'lbl6'.tr,
                style: theme.textTheme.bodyMedium,
              ),
              Padding(
                padding: EdgeInsets.only(left: 17.w),
                child: Text(
                  'lbl_202'.tr,
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
  Widget _buildFrame2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.w,
        right: 20.w,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 85.w,
            decoration: AppDecoration.fillGray
                .copyWith(borderRadius: BorderRadiusStyle.circleBorder16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomImageView(
                  imagePath: Assets.svg.imgFrameBlack900.path,
                  height: 32.r,
                  width: 32.r,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 4.h,
                    bottom: 3.h,
                  ),
                  child: Text(
                    '1',
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                CustomImageView(
                  imagePath: Assets.svg.imgFrameBlack90032x32.path,
                  height: 32.r,
                  width: 32.r,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 4.h),
            child: Text(
              'lbl_9_900'.tr,
              style: CustomTextStyles.bodyMediumBlack90015,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return SizedBox(
      height: 40.h,
      width: 362.w,
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: theme.colorScheme.onPrimaryContainer,
        labelStyle: TextStyle(
          fontSize: 14.sp,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelColor: appTheme.gray500,
        unselectedLabelStyle: TextStyle(
          fontSize: 14.sp,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        indicator: BoxDecoration(
          color: theme.colorScheme.onSecondaryContainer,
          borderRadius: BorderRadius.circular(8.w),
        ),
        tabs: [
          Tab(
            child: Text('lbl8'.tr),
          ),
          Tab(
            child: Text('lbl9'.tr),
          ),
        ],
      ),
    );
  }
}
