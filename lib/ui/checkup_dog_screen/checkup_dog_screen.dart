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
import '/widgets/app_bar/bread_crumb.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_image_view.dart';

class CheckupDogScreen extends StatelessWidget {
  CheckupDogScreen({super.key});

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
                _breadcrumbs(context),
                SizedBox(height: 19.h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.w),
                    child: Text('반려견 성격유형검사(DCSI-II)'.tr(),
                        style: CustomTextStyles.bodyMediumBlack900),
                  ),
                ),
                SizedBox(height: 15.h),
                CustomImageView(
                  imagePath: Assets.images.tests.test14789.path,
                  height: 171.h,
                  width: 361.w,
                ),
                SizedBox(height: 18.h),
                _buildDCSIButton(context),
                SizedBox(height: 11.h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.w),
                    child: Text('반려견 성격유형검사'.tr(),
                        style: CustomTextStyles.bodyLargeNanumSquareNeo),
                  ),
                ),
                SizedBox(height: 10.h),
                _buildInfo(context),
                SizedBox(height: 7.h),
                _buildCheckupDogInfo(context),
                SizedBox(height: 8.h),
                _buildCheckupDogPrice(context),
                SizedBox(height: 8.h),
                _buildButton1(context),
                SizedBox(height: 48.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildButton2(context),
                      _buildButton3(context),
                    ],
                  ),
                ),
                SizedBox(height: 24.h),
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
                SizedBox(height: 24.h),
                CustomImageView(
                  imagePath: Assets.images.imgImage731x361.path,
                  height: 731.h,
                  width: 361.w,
                ),
                CustomImageView(
                  imagePath: Assets.images.imgImage644x361.path,
                  height: 644.h,
                  width: 361.w,
                ),
                CustomImageView(
                  imagePath: Assets.images.imgImage1252x361.path,
                  height: 1252.h,
                  width: 361.w,
                ),
                CustomImageView(
                  imagePath: Assets.images.imgImage1368x361.path,
                  height: 1368.h,
                  width: 361.w,
                ),
                CustomImageView(
                  imagePath: Assets.images.imgImage1087x361.path,
                  height: 1087.h,
                  width: 361.w,
                ),
                CustomImageView(
                  imagePath: Assets.images.imgImage1009x361.path,
                  height: 1009.h,
                  width: 361.w,
                ),
                SizedBox(height: 1.h),
                CustomImageView(
                  imagePath: Assets.images.imgImage1094x361.path,
                  height: 1094.h,
                  width: 361.w,
                ),
                CustomImageView(
                  imagePath: Assets.images.imgImage544x361.path,
                  height: 544.h,
                  width: 361.w,
                ),
                SizedBox(height: 1.h),
                CustomImageView(
                  imagePath: Assets.images.imgImage997x361.path,
                  height: 997.h,
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
              text: '반려견'.tr(),
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
  Widget _buildDCSIButton(BuildContext context) {
    return CustomElevatedButton(
      onPressed: (context) {
        // TODO: implement onPressed
      },
      height: 23.h,
      width: 53.w,
      text: 'DCSI-II',
      margin: EdgeInsets.only(left: 16.w),
      buttonTextStyle: CustomTextStyles.bodySmall10,
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
          CustomImageView(
            imagePath: Assets.images.imgInfo.path,
            height: 12.h,
            width: 68.w,
            margin: EdgeInsets.symmetric(vertical: 4.h),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.w),
            child:
                Text('(916)'.tr(), style: CustomTextStyles.bodyMediumBlack900),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCheckupDogInfo(BuildContext context) {
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
              Text('•',
                  style:
                      textTheme.bodyMedium!.copyWith(color: appTheme.gray500)),
              Text('문항'.tr(), style: textTheme.bodyMedium),
              Padding(
                padding: EdgeInsets.only(left: 41.w),
                child: Text('107문항'.tr(),
                    style: CustomTextStyles.bodyMediumGray800),
              ),
            ],
          ),
          SizedBox(height: 3.h),
          Row(
            children: [
              Text('소요시간'.tr(), style: textTheme.bodyMedium),
              Padding(
                padding: EdgeInsets.only(left: 16.w),
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
  Widget _buildCheckupDogPrice(BuildContext context) {
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
  Widget _buildButton1(BuildContext context) {
    return CustomElevatedButton(
      onPressed: (context) {
        // TODO: implement onPressed
      },
      text: '구매하기'.tr(),
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      buttonStyle: CustomButtonStyles.fillPrimary,
      buttonTextStyle: CustomTextStyles.bodyMediumOnErrorContainer,
    );
  }

  /// Section Widget
  Widget _buildButton2(BuildContext context) {
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
  Widget _buildButton3(BuildContext context) {
    return CustomElevatedButton(
      onPressed: (context) {
        // TODO: implement onPressed
      },
      width: 181.w,
      text: '구매후기'.tr(),
      buttonStyle: CustomButtonStyles.fillGrayTL81,
      buttonTextStyle: textTheme.bodyMedium,
    );
  }
}
