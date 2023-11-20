import 'package:cami_lab/core/app_export.dart';
import 'package:cami_lab/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class OwnerPage extends StatefulWidget {
  const OwnerPage({Key? key})
      : super(
          key: key,
        );

  @override
  OwnerPageState createState() => OwnerPageState();
}

class OwnerPageState extends State<OwnerPage>
    with AutomaticKeepAliveClientMixin<OwnerPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 60.v),
                Column(
                  children: [
                    _buildFrameColumn(context),
                    SizedBox(height: 16.v),
                    _buildFrameColumn2(context),
                    SizedBox(height: 16.v),
                    _buildFrameColumn3(context),
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
                          _buildFrameRow(context),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
      margin: EdgeInsets.symmetric(horizontal: 16.h),
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
              imagePath: ImageConstant.imgImage170x359,
              height: 170.v,
              width: 359.h,
            ),
          ),
          SizedBox(height: 14.v),
          CustomElevatedButton(
            height: 24.v,
            width: 39.h,
            text: "lbl_dpai".tr,
            margin: EdgeInsets.only(left: 14.h),
            buttonStyle: CustomButtonStyles.fillGrayTL8,
            buttonTextStyle: CustomTextStyles.bodySmall10,
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(left: 14.h),
            child: Text(
              "lbl50".tr,
              style: CustomTextStyles.bodyMediumGray90002,
            ),
          ),
          SizedBox(height: 5.v),
          Container(
            width: 315.h,
            margin: EdgeInsets.only(
              left: 14.h,
              right: 30.h,
            ),
            child: Text(
              "msg14".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodySmallPrimaryContainer.copyWith(
                height: 1.33,
              ),
            ),
          ),
          SizedBox(height: 23.v),
          Padding(
            padding: EdgeInsets.only(left: 14.h),
            child: _buildFrame(
              context,
              userText: "lbl51".tr,
            ),
          ),
          SizedBox(height: 16.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameColumn2(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
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
              imagePath: ImageConstant.imgImage13,
              height: 170.v,
              width: 359.h,
            ),
          ),
          SizedBox(height: 14.v),
          CustomElevatedButton(
            height: 24.v,
            width: 37.h,
            text: "lbl_dds".tr,
            margin: EdgeInsets.only(left: 14.h),
            buttonStyle: CustomButtonStyles.fillGrayTL8,
            buttonTextStyle: CustomTextStyles.bodySmall10,
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(left: 14.h),
            child: Text(
              "lbl52".tr,
              style: CustomTextStyles.bodyMediumGray90002,
            ),
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.only(left: 14.h),
            child: Text(
              "msg15".tr,
              style: CustomTextStyles.bodySmallPrimaryContainer,
            ),
          ),
          SizedBox(height: 42.v),
          Padding(
            padding: EdgeInsets.only(left: 14.h),
            child: _buildFrame(
              context,
              userText: "lbl51".tr,
            ),
          ),
          SizedBox(height: 17.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameColumn3(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
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
              imagePath: ImageConstant.imgImage14,
              height: 170.v,
              width: 359.h,
            ),
          ),
          SizedBox(height: 14.v),
          CustomElevatedButton(
            height: 24.v,
            width: 40.h,
            text: "lbl_dopi2".tr,
            margin: EdgeInsets.only(left: 14.h),
            buttonStyle: CustomButtonStyles.fillGrayTL8,
            buttonTextStyle: CustomTextStyles.bodySmall10,
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(left: 14.h),
            child: Text(
              "lbl53".tr,
              style: CustomTextStyles.bodyMediumGray90002,
            ),
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.only(left: 14.h),
            child: Text(
              "msg16".tr,
              style: CustomTextStyles.bodySmallPrimaryContainer,
            ),
          ),
          SizedBox(height: 42.v),
          Padding(
            padding: EdgeInsets.only(left: 14.h),
            child: _buildFrame(
              context,
              userText: "lbl51".tr,
            ),
          ),
          SizedBox(height: 17.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameRow(BuildContext context) {
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
    required String userText,
  }) {
    return Row(
      children: [
        Text(
          userText,
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
