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
import '/ui/shared/cami_app_bar.dart';
import '/ui/shared/cami_app_footer.dart';
import '/widgets/app_bar/appbar_title.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_image_view.dart';
import '/widgets/custom_text_form_field.dart';

class CheckupCatScreen extends StatelessWidget {
  CheckupCatScreen({super.key});

  final infoEditTextController = TextEditingController();

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
            child: Column(
              children: [
                _breadcrumbs(context),
                SizedBox(height: 19.h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.w),
                    child: Text(
                      '반려묘 성격유형검사(CCSI)'.tr,
                      style: CustomTextStyles.bodyMediumBlack900,
                    ),
                  ),
                ),
                SizedBox(height: 15.h),
                CustomImageView(
                  imagePath: Assets.images.imgImage164x346.path,
                  height: 171.h,
                  width: 361.w,
                ),
                SizedBox(height: 18.h),
                _buildCcsiButton(context),
                SizedBox(height: 11.h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.w),
                    child: Text(
                      '반려묘 성격유형검사'.tr,
                      style: CustomTextStyles.bodyLargeNanumSquareNeo,
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                _buildInfoEditText(context),
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
  Widget _breadcrumbs(BuildContext context) {
    return CustomAppBar(
      title: Padding(
        padding: EdgeInsets.only(left: 16.w),
        child: Row(
          children: [
            AppbarTitle(text: '심리검사'.tr),
            AppbarTitle(
              text: '/',
              margin: EdgeInsets.only(left: 12.w),
            ),
            AppbarTitle(
              text: '반려묘'.tr,
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
  Widget _buildCcsiButton(BuildContext context) {
    return CustomElevatedButton(
      height: 23.h,
      width: 42.w,
      text: 'CCSI',
      margin: EdgeInsets.only(left: 16.w),
      buttonTextStyle: CustomTextStyles.bodySmall10,
      alignment: Alignment.centerLeft,
    );
  }

  /// Section Widget
  Widget _buildInfoEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.w),
      child: CustomTextFormField(
        width: 105.w,
        controller: infoEditTextController,
        hintText: '(84)'.tr,
        textInputAction: TextInputAction.done,
        alignment: Alignment.centerLeft,
        suffix: Container(
          margin: EdgeInsets.fromLTRB(-105.w, 4.h, 30.w, 4.h),
          child: CustomImageView(
            imagePath: Assets.images.imgInfo.path,
            height: 12.h,
            width: 68.w,
          ),
        ),
        suffixConstraints: BoxConstraints(maxHeight: 21.h),
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
              Text(
                '문항'.tr,
                style: theme.textTheme.bodyMedium,
              ),
              Padding(
                padding: EdgeInsets.only(left: 41.w),
                child: Text(
                  '128문항'.tr,
                  style: CustomTextStyles.bodyMediumGray800,
                ),
              ),
            ],
          ),
          SizedBox(height: 3.h),
          Row(
            children: [
              Text(
                '소요시간'.tr,
                style: theme.textTheme.bodyMedium,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.w),
                child: Text(
                  '약 20분'.tr,
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
            padding: EdgeInsets.only(
              top: 4.h,
              bottom: 3.h,
            ),
            child: Text(
              '12,000원'.tr,
              style: theme.textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPurchaseButton(BuildContext context) {
    return CustomElevatedButton(
      text: '구매하기'.tr,
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      buttonStyle: CustomButtonStyles.fillPrimary,
      buttonTextStyle: CustomTextStyles.bodyMediumOnErrorContainer,
    );
  }

  /// Section Widget
  Widget _buildIntroductionButton(BuildContext context) {
    return CustomElevatedButton(
      width: 181.w,
      text: '검사소개'.tr,
      buttonStyle: CustomButtonStyles.fillOnSecondaryContainer,
    );
  }

  /// Section Widget
  Widget _buildReviewsButton(BuildContext context) {
    return CustomElevatedButton(
      width: 181.w,
      text: '구매후기'.tr,
      buttonStyle: CustomButtonStyles.fillGrayTL81,
      buttonTextStyle: theme.textTheme.bodyMedium,
    );
  }
}
