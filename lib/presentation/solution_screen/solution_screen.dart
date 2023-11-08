import '../solution_screen/widgets/solutionlist_item_widget.dart';
import 'package:cami_lab/core/app_export.dart';
import 'package:flutter/material.dart';

class SolutionScreen extends StatelessWidget {
  const SolutionScreen({Key? key})
      : super(
          key: key,
        );

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
                Text(
                  "lbl90".tr,
                  style: CustomTextStyles.bodyMediumGray90002,
                ),
                SizedBox(height: 17.v),
                Text(
                  "lbl115".tr,
                  style: CustomTextStyles.headlineSmallNanumSquareNeoBlack900,
                ),
                SizedBox(height: 18.v),
                Text(
                  "lbl136".tr,
                  style: theme.textTheme.bodyLarge,
                ),
                Text(
                  "lbl137".tr,
                  style: theme.textTheme.bodyLarge,
                ),
                SizedBox(height: 32.v),
                _buildFrameRow(context),
                SizedBox(height: 32.v),
                _buildFrameRow1(context),
                SizedBox(height: 130.v),
                Text(
                  "lbl142".tr,
                  style: CustomTextStyles.titleLargeBlack90020,
                ),
                SizedBox(height: 34.v),
                _buildSolutionList(context),
                SizedBox(height: 128.v),
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
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      decoration: AppDecoration.fillOnPrimaryContainer,
      child: CustomImageView(
        imagePath: ImageConstant.imgFrame,
        height: 50.v,
        width: 361.h,
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 29.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 44.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl138".tr,
                  style: theme.textTheme.bodyLarge,
                ),
                SizedBox(height: 14.v),
                Text(
                  "msg54".tr,
                  style: CustomTextStyles.bodySmallBlack9009,
                ),
                Text(
                  "msg55".tr,
                  style: CustomTextStyles.bodySmallBlack9009,
                ),
                Text(
                  "lbl139".tr,
                  style: CustomTextStyles.bodySmallBlack9009,
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage167x130,
            height: 167.v,
            width: 130.h,
            margin: EdgeInsets.only(left: 15.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameRow1(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.symmetric(horizontal: 21.h),
      decoration: AppDecoration.fillGray50.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage128x142,
            height: 128.v,
            width: 142.h,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(12.h, 24.v, 8.h, 24.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "lbl140".tr,
                  style: theme.textTheme.bodyLarge,
                ),
                SizedBox(height: 15.v),
                Text(
                  "msg56".tr,
                  style: CustomTextStyles.bodySmallBlack9009,
                ),
                Text(
                  "msg57".tr,
                  style: CustomTextStyles.bodySmallBlack9009,
                ),
                Text(
                  "lbl141".tr,
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
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 24.v,
          );
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return SolutionlistItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameColumn1(BuildContext context) {
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
          SizedBox(height: 39.v),
          Padding(
            padding: EdgeInsets.only(right: 63.h),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_address".tr,
                      style: CustomTextStyles.bodySmall11,
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
                        style: CustomTextStyles.bodySmall11,
                      ),
                      SizedBox(height: 9.v),
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
