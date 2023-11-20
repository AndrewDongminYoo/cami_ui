import 'package:cami_lab/core/app_export.dart';
import 'package:cami_lab/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CatPage extends StatefulWidget {
  const CatPage({Key? key})
      : super(
          key: key,
        );

  @override
  CatPageState createState() => CatPageState();
}

class CatPageState extends State<CatPage>
    with AutomaticKeepAliveClientMixin<CatPage> {
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
                            margin: EdgeInsets.only(left: 6.h),
                          ),
                          SizedBox(height: 39.v),
                          Row(
                            children: [
                              Text(
                                "lbl10".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 17.h),
                                child: Text(
                                  "lbl11".tr,
                                  style: theme.textTheme.bodySmall,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 17.h),
                                child: Text(
                                  "lbl12".tr,
                                  style: theme.textTheme.bodySmall,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 12.v),
                          Row(
                            children: [
                              Text(
                                "lbl13".tr,
                                style: CustomTextStyles.bodySmallGray500_1,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 17.h),
                                child: Text(
                                  "lbl14".tr,
                                  style: CustomTextStyles.bodySmallGray500_1,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 17.h),
                                child: Text(
                                  "lbl15".tr,
                                  style: CustomTextStyles.bodySmallGray500_1,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 16.v),
                          Text(
                            "lbl16".tr,
                            style: CustomTextStyles.bodySmallGray500_1,
                          ),
                          SizedBox(height: 40.v),
                          Padding(
                            padding: EdgeInsets.only(right: 48.h),
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
                                  padding: EdgeInsets.only(left: 17.h),
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
                            width: 359.h,
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
      margin: EdgeInsets.symmetric(horizontal: 17.h),
      decoration: AppDecoration.outlinePrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 1.h),
            decoration: AppDecoration.fillSecondaryContainer,
            child: CustomImageView(
              imagePath: ImageConstant.imgImage164x346,
              height: 164.v,
              width: 357.h,
            ),
          ),
          SizedBox(height: 14.v),
          CustomElevatedButton(
            height: 24.v,
            width: 43.h,
            text: "lbl_ccsi".tr,
            margin: EdgeInsets.only(left: 15.h),
            buttonStyle: CustomButtonStyles.fillGrayTL8,
            buttonTextStyle: CustomTextStyles.bodySmall10,
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(left: 15.h),
            child: Text(
              "lbl_mbti2".tr,
              style: CustomTextStyles.bodyMediumGray90002,
            ),
          ),
          SizedBox(height: 7.v),
          Padding(
            padding: EdgeInsets.only(left: 15.h),
            child: Text(
              "msg50".tr,
              style: CustomTextStyles.bodySmallPrimaryContainer,
            ),
          ),
          SizedBox(height: 39.v),
          Padding(
            padding: EdgeInsets.only(left: 15.h),
            child: Row(
              children: [
                Text(
                  "lbl51".tr,
                  style: CustomTextStyles.bodySmallGray700,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowdownGray700,
                  height: 10.v,
                  width: 6.h,
                  margin: EdgeInsets.only(
                    left: 10.h,
                    top: 6.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.v),
        ],
      ),
    );
  }
}
