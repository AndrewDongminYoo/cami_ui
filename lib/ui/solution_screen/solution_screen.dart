// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/localization/app_localization.dart';
import '/theme/app_decoration.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/ui/shared/cami_app_bar.dart';
import '/widgets/custom_image_view.dart';
import 'widgets/solution_list_item_widget.dart';

class SolutionScreen extends StatelessWidget {
  const SolutionScreen({super.key});

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
                _buildFrameColumn(context),
                Text(
                  'lbl90'.tr,
                  style: CustomTextStyles.bodyMediumGray90002,
                ),
                SizedBox(height: 17.h),
                Text(
                  'lbl115'.tr,
                  style: CustomTextStyles.headlineSmallNanumSquareNeoBlack900,
                ),
                SizedBox(height: 18.h),
                Text(
                  'lbl136'.tr,
                  style: theme.textTheme.bodyLarge,
                ),
                Text(
                  'lbl137'.tr,
                  style: theme.textTheme.bodyLarge,
                ),
                SizedBox(height: 32.h),
                _buildFrameRow(context),
                SizedBox(height: 32.h),
                _buildFrameRow1(context),
                SizedBox(height: 130.h),
                Text(
                  'lbl142'.tr,
                  style: CustomTextStyles.titleLargeBlack90020,
                ),
                SizedBox(height: 34.h),
                _buildSolutionList(context),
                SizedBox(height: 128.h),
                _buildFrameColumn1(context),
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
      child: const CamiAppBar(),
    );
  }

  /// Section Widget
  Widget _buildFrameRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 29.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 44.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'lbl138'.tr,
                  style: theme.textTheme.bodyLarge,
                ),
                SizedBox(height: 14.h),
                Text(
                  'msg54'.tr,
                  style: CustomTextStyles.bodySmallBlack9009,
                ),
                Text(
                  'msg55'.tr,
                  style: CustomTextStyles.bodySmallBlack9009,
                ),
                Text(
                  'lbl139'.tr,
                  style: CustomTextStyles.bodySmallBlack9009,
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: Assets.images.imgImage167x130.path,
            height: 167.h,
            width: 130.w,
            margin: EdgeInsets.only(left: 15.w),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameRow1(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      padding: EdgeInsets.symmetric(horizontal: 21.w),
      decoration: AppDecoration.fillGray50
          .copyWith(borderRadius: BorderRadiusStyle.circleBorder8),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: Assets.images.imgImage128x142.path,
            height: 128.h,
            width: 142.w,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(12.w, 24.h, 8.w, 24.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'lbl140'.tr,
                  style: theme.textTheme.bodyLarge,
                ),
                SizedBox(height: 15.h),
                Text(
                  'msg56'.tr,
                  style: CustomTextStyles.bodySmallBlack9009,
                ),
                Text(
                  'msg57'.tr,
                  style: CustomTextStyles.bodySmallBlack9009,
                ),
                Text(
                  'lbl141'.tr,
                  style: CustomTextStyles.bodySmallBlack9009,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSolutionList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(height: 24.h);
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return const SolutionListItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameColumn1(BuildContext context) {
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
          SizedBox(height: 39.h),
          Padding(
            padding: EdgeInsets.only(right: 63.w),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'lbl_address'.tr,
                      style: CustomTextStyles.bodySmall11,
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
                        style: CustomTextStyles.bodySmall11,
                      ),
                      SizedBox(height: 9.h),
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
