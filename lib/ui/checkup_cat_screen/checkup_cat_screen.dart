// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/core/utils/media_query.dart';
import '/gen/assets.gen.dart';
import '/theme/app_decoration.dart';
import '/theme/custom_button_style.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/ui/shared/cami_app_bar.dart';
import '/ui/shared/cami_app_footer.dart';
import '/ui/shared/stars.dart';
import '/widgets/app_bar/bread_crumb.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_image_view.dart';

class CheckupCatScreen extends StatelessWidget {
  const CheckupCatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: const CamiAppBar(),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            primary: true,
            child: Column(
              children: [
                _buildBreadcrumbs(context),
                SizedBox(height: 19.h),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 16.w),
                  child: Text('반려묘 성격유형검사(CCSI)'.tr(),
                      style: textTheme.bodyMedium),
                ),
                SizedBox(height: 15.h),
                CustomImageView(
                  imagePath: Assets.images.tests.test14791.path,
                  height: 171.h,
                  width: 361.w,
                ),
                SizedBox(height: 18.h),
                _buildCcsiButton(context),
                SizedBox(height: 11.h),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 16.w),
                  child: Text('반려묘 성격유형검사'.tr(),
                      style: textTheme.bodyLarge!.nanum),
                ),
                SizedBox(height: 10.h),
                _buildInfo(context),
                SizedBox(height: 7.h),
                _buildTestSummary(context),
                SizedBox(height: 8.h),
                _buildPriceInfo(context),
                SizedBox(height: 8.h),
                _buildPurchaseButton(context),
                SizedBox(height: 48.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildIntroductionButton(context),
                      _buildReviewsButton(context),
                    ],
                  ),
                ),
                SizedBox(height: 48.h),
                CustomImageView(
                  imagePath: Assets.images.imgImage472x361.path,
                  height: 472.h,
                  width: 361.w,
                ),
                CustomImageView(
                  imagePath: Assets.images.imgImage683x361.path,
                  height: 683.h,
                  width: 361.w,
                ),
                CustomImageView(
                  imagePath: Assets.images.imgImage725x361.path,
                  height: 725.h,
                  width: 361.w,
                ),
                CustomImageView(
                  imagePath: Assets.images.imgImage652x361.path,
                  height: 652.h,
                  width: 361.w,
                ),
                CustomImageView(
                  imagePath: Assets.images.imgImage1065x361.path,
                  height: 1065.h,
                  width: 361.w,
                ),
                CustomImageView(
                  imagePath: Assets.images.imgImage1352x361.path,
                  height: 1352.h,
                  width: 361.w,
                ),
                SizedBox(height: 1.h),
                CustomImageView(
                  imagePath: Assets.images.imgImage1057x361.path,
                  height: 1057.h,
                  width: 361.w,
                ),
                CustomImageView(
                  imagePath: Assets.images.imgImage1106x361.path,
                  height: 1106.h,
                  width: 361.w,
                ),
                CustomImageView(
                  imagePath: Assets.images.imgImage705x361.path,
                  height: 705.h,
                  width: 361.w,
                ),
                CustomImageView(
                  imagePath: Assets.images.imgImage543x361.path,
                  height: 543.h,
                  width: 361.w,
                ),
                SizedBox(height: 1.h),
                CustomImageView(
                  imagePath: Assets.images.imgImage1007x361.path,
                  height: 1007.h,
                  width: 361.w,
                ),
                SizedBox(height: 272.h),
                const CamiAppFooter(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBreadcrumbs(BuildContext context) {
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
              text: '반려묘'.tr(),
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
  Widget _buildCcsiButton(BuildContext context) {
    return CustomElevatedButton(
      onPressed: (context) {
        // TODO: implement onPressed
      },
      height: 23.h,
      width: 42.w,
      text: 'CCSI',
      margin: EdgeInsets.only(left: 16.w),
      buttonTextStyle: textTheme.bodySmall!.fSize(10),
      alignment: Alignment.centerLeft,
    );
  }

  /// Section Widget
  Widget _buildInfo(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(left: 16.w),
      child: Row(
        children: [
          const Stars(score: 4.9),
          Padding(
            padding: EdgeInsets.only(left: 8.w),
            child: Text('(84)'.tr(), style: textTheme.bodyMedium),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTestSummary(BuildContext context) {
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
                padding: EdgeInsets.only(left: 41.w),
                child: Text(
                  '128문항'.tr(),
                  style: textTheme.bodyMedium!.colored(const Color(0xFF404040)),
                ),
              ),
            ],
          ),
          SizedBox(height: 3.h),
          Row(
            children: [
              Text('소요시간'.tr(), style: textTheme.bodyMedium),
              Padding(
                padding: EdgeInsets.only(left: 16.w),
                child: Text(
                  '약 20분'.tr(),
                  style: textTheme.bodyMedium!.colored(const Color(0xFF404040)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPriceInfo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
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
            padding: EdgeInsets.only(
              top: 4.h,
              bottom: 3.h,
            ),
            child: Text('12,000원'.tr(), style: textTheme.bodyLarge),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPurchaseButton(BuildContext context) {
    return CustomElevatedButton(
      onPressed: (context) {
        // TODO: implement onPressed
      },
      text: '구매하기'.tr(),
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      buttonStyle: CustomButtonStyles.fillPrimary,
      buttonTextStyle: textTheme.bodyMedium!.colored(const Color(0xFF171717)),
    );
  }

  /// Section Widget
  Widget _buildIntroductionButton(BuildContext context) {
    return CustomElevatedButton(
      onPressed: (context) {
        // TODO: implement onPressed
      },
      width: 181.w,
      text: '검사소개'.tr(),
      buttonStyle: CustomButtonStyles.fillOnSecondaryContainer,
    );
  }

  /// Section Widget
  Widget _buildReviewsButton(BuildContext context) {
    return CustomElevatedButton(
      onPressed: (context) {
        // TODO: implement onPressed
      },
      width: 181.w,
      text: '구매후기'.tr(),
      buttonStyle: CustomButtonStyles.fillGrayTL81,
      buttonTextStyle: textTheme.bodyMedium!.colored(const Color(0xFFA3A3A3)),
    );
  }
}
