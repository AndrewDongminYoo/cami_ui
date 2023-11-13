// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/core/utils/media_query.dart';
import '/gen/assets.gen.dart';
import '/gen/fonts.gen.dart';
import '/theme/app_decoration.dart';
import '/theme/custom_button_style.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/ui/shared/cami_app_bar.dart';
import '/widgets/app_bar/bread_crumb.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_image_view.dart';
import 'widgets/checkup_owner_tab.dart';

class CheckupOwnerScreen extends StatefulWidget {
  const CheckupOwnerScreen({super.key});

  @override
  CheckupOwnerScreenState createState() => CheckupOwnerScreenState();
}

class CheckupOwnerScreenState extends State<CheckupOwnerScreen>
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
            primary: true,
            child: Column(
              children: [
                _breadcrumbs(context),
                SizedBox(height: 19.h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.w),
                    child: Text('입양준비검사(DPAI)'.tr(),
                        style: CustomTextStyles.bodyMediumBlack900),
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
                  text: 'DPAI',
                  margin: EdgeInsets.only(left: 16.w),
                  buttonTextStyle: CustomTextStyles.bodySmall10,
                  alignment: Alignment.centerLeft,
                ),
                SizedBox(height: 11.h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.w),
                    child: Text('입양준비검사'.tr(),
                        style: CustomTextStyles.bodyLargeNanumSquareNeo),
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
                          child: Text('(4)'.tr(),
                              style: CustomTextStyles.bodyMediumBlack900),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 7.h),
                _buildQuickCheckupInfo(context),
                SizedBox(height: 8.h),
                _buildQuickCheckupPrice(context),
                SizedBox(height: 8.h),
                CustomElevatedButton(
                  text: '구매하기'.tr(),
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
                      CheckupOwnerTab(),
                      CheckupOwnerTab(),
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
            BreadCrumb(text: '심리검사'.tr()),
            BreadCrumb(
              text: '/',
              margin: EdgeInsets.only(left: 12.w),
            ),
            BreadCrumb(
              text: '반려인'.tr(),
              margin: EdgeInsets.only(left: 8.w),
            ),
            BreadCrumb(
              text: '/',
              margin: EdgeInsets.only(left: 12.w),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildQuickCheckupInfo(BuildContext context) {
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
              Text('문항'.tr(), style: textTheme.bodyMedium),
              Padding(
                padding: EdgeInsets.only(left: 42.w),
                child: Text('84문항'.tr(),
                    style: CustomTextStyles.bodyMediumGray800),
              ),
            ],
          ),
          SizedBox(height: 3.h),
          Row(
            children: [
              Text('소요시간'.tr(), style: textTheme.bodyMedium),
              Padding(
                padding: EdgeInsets.only(left: 17.w),
                child: Text('약 20분'.tr(),
                    style: CustomTextStyles.bodyMediumGray800),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildQuickCheckupPrice(BuildContext context) {
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
                  child: Text('1', style: textTheme.bodyLarge),
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
            child: Text('9,900원'.tr(),
                style: CustomTextStyles.bodyMediumBlack90015),
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
        labelColor: lightTheme.onPrimaryContainer,
        labelStyle: const TextStyle(
          fontSize: 14,
          fontFamily: FontFamily.poppins,
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelColor: appTheme.gray500,
        unselectedLabelStyle: const TextStyle(
          fontSize: 14,
          fontFamily: FontFamily.poppins,
          fontWeight: FontWeight.w400,
        ),
        indicator: BoxDecoration(
          color: lightTheme.onSecondaryContainer,
          borderRadius: BorderRadius.circular(8.w),
        ),
        tabs: [
          Tab(
            child: Text('검사소개'.tr()),
          ),
          Tab(
            child: Text('구매후기'.tr()),
          ),
        ],
      ),
    );
  }
}
