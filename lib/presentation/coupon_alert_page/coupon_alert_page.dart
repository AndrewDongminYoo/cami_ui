import 'package:cami_lab/core/app_export.dart';
import 'package:cami_lab/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CouponAlertPage extends StatefulWidget {
  const CouponAlertPage({Key? key})
      : super(
          key: key,
        );

  @override
  CouponAlertPageState createState() => CouponAlertPageState();
}

class CouponAlertPageState extends State<CouponAlertPage>
    with AutomaticKeepAliveClientMixin<CouponAlertPage> {
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
                SizedBox(height: 16.v),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                      margin: EdgeInsets.only(right: 80.h),
                      decoration: BoxDecoration(
                        color: appTheme.gray10001,
                        borderRadius: BorderRadius.circular(
                          8.h,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.v),
                    _buildTf(context),
                    SizedBox(height: 4.v),
                    _buildTf1(context),
                    SizedBox(height: 7.v),
                    _buildTf2(context),
                    SizedBox(height: 24.v),
                    Container(
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                      margin: EdgeInsets.only(right: 80.h),
                      decoration: BoxDecoration(
                        color: appTheme.gray10001,
                        borderRadius: BorderRadius.circular(
                          8.h,
                        ),
                      ),
                    ),
                    Container(
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                      margin: EdgeInsets.only(right: 80.h),
                      decoration: BoxDecoration(
                        color: appTheme.gray10001,
                        borderRadius: BorderRadius.circular(
                          8.h,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.v),
                    _buildTf3(context),
                    SizedBox(height: 6.v),
                    _buildTf4(context),
                    SizedBox(height: 120.v),
                    Container(
                      width: double.maxFinite,
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
                                padding: EdgeInsets.only(left: 18.h),
                                child: Text(
                                  "lbl11".tr,
                                  style: theme.textTheme.bodySmall,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 18.h),
                                child: Text(
                                  "lbl12".tr,
                                  style: theme.textTheme.bodySmall,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.v),
                          _buildWidget(context),
                          SizedBox(height: 39.v),
                          Row(
                            children: [
                              Text(
                                "lbl_address".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 130.h),
                                child: Text(
                                  "lbl_contact".tr,
                                  style: theme.textTheme.bodySmall,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 12.v),
                          Padding(
                            padding: EdgeInsets.only(right: 72.h),
                            child: Row(
                              children: [
                                Text(
                                  "msg_34".tr,
                                  style: theme.textTheme.bodySmall,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text(
                                    "msg_business_cami_kr".tr,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 105.h),
                            child: Row(
                              children: [
                                Text(
                                  "msg_2_b101".tr,
                                  style: theme.textTheme.bodySmall,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 34.h),
                                  child: Text(
                                    "lbl_02_861_6828".tr,
                                    style: CustomTextStyles.bodySmall11,
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
                          Row(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgImage24x24,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgImage3,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                margin: EdgeInsets.only(left: 16.h),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgImage4,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                margin: EdgeInsets.only(left: 16.h),
                              ),
                            ],
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
  Widget _buildCouponCopy(BuildContext context) {
    return CustomElevatedButton(
      height: 23.v,
      width: 54.h,
      text: "lbl211".tr,
      margin: EdgeInsets.symmetric(vertical: 15.v),
      buttonStyle: CustomButtonStyles.fillYellowTL11,
      buttonTextStyle: CustomTextStyles.bodySmallBlack90010,
    );
  }

  /// Section Widget
  Widget _buildTf(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 48.h,
        right: 28.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "lbl_1002".tr,
            style: theme.textTheme.displaySmall,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 4.h,
              top: 8.v,
            ),
            child: Text(
              "lbl202".tr,
              style: theme.textTheme.headlineLarge,
            ),
          ),
          Spacer(),
          _buildCouponCopy(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildShareCancel(BuildContext context) {
    return CustomElevatedButton(
      height: 23.v,
      width: 54.h,
      text: "lbl212".tr,
      margin: EdgeInsets.only(
        left: 78.h,
        top: 3.v,
        bottom: 15.v,
      ),
      buttonStyle: CustomButtonStyles.fillYellowTL111,
      buttonTextStyle: CustomTextStyles.bodySmallBlack90010,
    );
  }

  /// Section Widget
  Widget _buildTf1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 48.h,
        right: 28.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 185.h,
            child: Text(
              "msg81".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyMediumBlack900_1.copyWith(
                height: 1.43,
              ),
            ),
          ),
          _buildShareCancel(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUseNow(BuildContext context) {
    return CustomElevatedButton(
      height: 23.v,
      width: 54.h,
      text: "lbl204".tr,
      buttonStyle: CustomButtonStyles.fillGrayTL11,
      buttonTextStyle: CustomTextStyles.bodySmallBlack90010,
    );
  }

  /// Section Widget
  Widget _buildTf2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 48.h,
        right: 28.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 2.v),
            child: Text(
              "lbl_2023_04_27".tr,
              style: CustomTextStyles.bodyMediumGray500,
            ),
          ),
          _buildUseNow(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildShare(BuildContext context) {
    return CustomElevatedButton(
      height: 23.v,
      width: 54.h,
      text: "lbl203".tr,
      margin: EdgeInsets.only(
        top: 27.v,
        bottom: 3.v,
      ),
      buttonStyle: CustomButtonStyles.fillGrayTL11,
      buttonTextStyle: CustomTextStyles.bodySmallBlack90010,
    );
  }

  /// Section Widget
  Widget _buildTf3(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 48.h,
        right: 28.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "lbl_1002".tr,
            style: theme.textTheme.displaySmall,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 4.h,
              top: 8.v,
            ),
            child: Text(
              "lbl202".tr,
              style: theme.textTheme.headlineLarge,
            ),
          ),
          Spacer(),
          _buildShare(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUseNow1(BuildContext context) {
    return CustomElevatedButton(
      height: 23.v,
      width: 54.h,
      text: "lbl204".tr,
      buttonStyle: CustomButtonStyles.fillGrayTL11,
      buttonTextStyle: CustomTextStyles.bodySmallBlack90010,
      alignment: Alignment.centerRight,
    );
  }

  /// Section Widget
  Widget _buildTf4(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 48.h,
        right: 28.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 40.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg82".tr,
                  style: CustomTextStyles.bodyMediumBlack900_1,
                ),
                SizedBox(height: 7.v),
                Text(
                  "lbl_2022_10_12".tr,
                  style: CustomTextStyles.bodyMediumGray50013,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 13.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildUseNow1(context),
                SizedBox(height: 36.v),
                Container(
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  decoration: BoxDecoration(
                    color: appTheme.gray10001,
                    borderRadius: BorderRadius.circular(
                      8.h,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20.h),
      child: Row(
        children: [
          Text(
            "lbl13".tr,
            style: CustomTextStyles.bodySmallGray500_1,
          ),
          Padding(
            padding: EdgeInsets.only(left: 19.h),
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
          Padding(
            padding: EdgeInsets.only(left: 20.h),
            child: Text(
              "lbl16".tr,
              style: CustomTextStyles.bodySmallGray500_1,
            ),
          ),
        ],
      ),
    );
  }
}
