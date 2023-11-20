import '../coupon_expired_page/widgets/couponexpired_item_widget.dart';
import 'package:cami_lab/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CouponExpiredPage extends StatefulWidget {
  const CouponExpiredPage({Key? key})
      : super(
          key: key,
        );

  @override
  CouponExpiredPageState createState() => CouponExpiredPageState();
}

class CouponExpiredPageState extends State<CouponExpiredPage>
    with AutomaticKeepAliveClientMixin<CouponExpiredPage> {
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
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 48.h,
                          right: 41.h,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _buildCouponExpired(context),
                                Text(
                                  "msg83".tr,
                                  style: CustomTextStyles.bodyMediumBlack900_1,
                                ),
                                SizedBox(height: 7.v),
                                Row(
                                  children: [
                                    Text(
                                      "lbl_2023_11_06".tr,
                                      style:
                                          CustomTextStyles.bodyMediumGray50013,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 10.h),
                                      child: Text(
                                        "lbl_2023_11_11".tr,
                                        style:
                                            CustomTextStyles.bodyMediumGray500,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 126.v),
                                Text(
                                  "msg83".tr,
                                  style: CustomTextStyles.bodyMediumBlack900_1,
                                ),
                                SizedBox(height: 7.v),
                                Row(
                                  children: [
                                    Text(
                                      "lbl_2023_10_16".tr,
                                      style:
                                          CustomTextStyles.bodyMediumGray50013,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 10.h),
                                      child: Text(
                                        "lbl_2023_10_30".tr,
                                        style:
                                            CustomTextStyles.bodyMediumGray500,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 126.v),
                                Text(
                                  "lbl_23".tr,
                                  style: CustomTextStyles.bodyMediumBlack900_1,
                                ),
                                SizedBox(height: 7.v),
                                Text(
                                  "lbl_2023_06_19".tr,
                                  style: CustomTextStyles.bodyMediumGray500,
                                ),
                                SizedBox(height: 127.v),
                                Text(
                                  "lbl_test".tr,
                                  style: CustomTextStyles.bodyMediumBlack900_1,
                                ),
                                SizedBox(height: 6.v),
                                Text(
                                  "lbl_2023_06_19".tr,
                                  style: CustomTextStyles.bodyMediumGray500,
                                ),
                                SizedBox(height: 127.v),
                                Text(
                                  "lbl205".tr,
                                  style: CustomTextStyles.bodyMediumBlack900_1,
                                ),
                                SizedBox(height: 8.v),
                                Text(
                                  "lbl_2023_03_14".tr,
                                  style: CustomTextStyles.bodyMediumGray500,
                                ),
                                SizedBox(height: 128.v),
                                Text(
                                  "lbl206".tr,
                                  style: CustomTextStyles.bodyMediumBlack900_1,
                                ),
                                SizedBox(height: 8.v),
                                Row(
                                  children: [
                                    Text(
                                      "lbl_2023_03_08".tr,
                                      style:
                                          CustomTextStyles.bodyMediumGray50013,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 4.h),
                                      child: Text(
                                        "lbl_2023_05_07".tr,
                                        style:
                                            CustomTextStyles.bodyMediumGray500,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 128.v),
                                Text(
                                  "lbl207".tr,
                                  style: CustomTextStyles.bodyMediumBlack900_1,
                                ),
                                SizedBox(height: 8.v),
                                Text(
                                  "lbl_2022_12_28".tr,
                                  style: CustomTextStyles.bodyMediumGray500,
                                ),
                                SizedBox(height: 74.v),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 2.v),
                                      child: Text(
                                        "lbl_302".tr,
                                        style: theme.textTheme.displaySmall,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 6.v),
                                      child: Text(
                                        "lbl202".tr,
                                        style: theme.textTheme.headlineLarge,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 12.v),
                                Text(
                                  "msg84".tr,
                                  style: CustomTextStyles.bodyMediumBlack900_1,
                                ),
                                SizedBox(height: 8.v),
                                Row(
                                  children: [
                                    Text(
                                      "lbl_2022_11_03".tr,
                                      style:
                                          CustomTextStyles.bodyMediumGray50013,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 4.h),
                                      child: Text(
                                        "lbl_2022_12_31".tr,
                                        style:
                                            CustomTextStyles.bodyMediumGray500,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 74.v),
                                _buildOneHundred(
                                  context,
                                  userName: "lbl_1002".tr,
                                  userImage: "lbl202".tr,
                                ),
                                SizedBox(height: 12.v),
                                Text(
                                  "lbl207".tr,
                                  style: CustomTextStyles.bodyMediumBlack900_1,
                                ),
                                SizedBox(height: 8.v),
                                Text(
                                  "lbl_2022_10_18".tr,
                                  style: CustomTextStyles.bodyMediumGray500,
                                ),
                                SizedBox(height: 74.v),
                                _buildOneHundred(
                                  context,
                                  userName: "lbl_1002".tr,
                                  userImage: "lbl202".tr,
                                ),
                                SizedBox(height: 12.v),
                                Text(
                                  "lbl208".tr,
                                  style: CustomTextStyles.bodyMediumBlack900_1,
                                ),
                                SizedBox(height: 8.v),
                                Text(
                                  "lbl_2022_10_11".tr,
                                  style: CustomTextStyles.bodyMediumGray500,
                                ),
                              ],
                            ),
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 133.v,
                                bottom: 119.v,
                              ),
                              child: Column(
                                children: [
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
                                  SizedBox(height: 144.v),
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
                                  SizedBox(height: 144.v),
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
                                  SizedBox(height: 144.v),
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
                                  SizedBox(height: 144.v),
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
                                  SizedBox(height: 144.v),
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
                                  SizedBox(height: 144.v),
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
                                  SizedBox(height: 144.v),
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
                                  SizedBox(height: 144.v),
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
                            Padding(
                              padding: EdgeInsets.only(
                                left: 18.h,
                                top: 31.v,
                                bottom: 40.v,
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: 20.h,
                                    child: Text(
                                      "lbl209".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles.bodySmallGray50010
                                          .copyWith(
                                        height: 2.00,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 136.v),
                                  SizedBox(
                                    width: 20.h,
                                    child: Text(
                                      "lbl210".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles.bodySmallGray50010
                                          .copyWith(
                                        height: 2.00,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 136.v),
                                  SizedBox(
                                    width: 20.h,
                                    child: Text(
                                      "lbl210".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles.bodySmallGray50010
                                          .copyWith(
                                        height: 2.00,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 136.v),
                                  SizedBox(
                                    width: 20.h,
                                    child: Text(
                                      "lbl210".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles.bodySmallGray50010
                                          .copyWith(
                                        height: 2.00,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 133.v),
                                  SizedBox(
                                    width: 20.h,
                                    child: Text(
                                      "lbl210".tr,
                                      maxLines: null,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles.bodySmallGray50010
                                          .copyWith(
                                        height: 2.00,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 136.v),
                                  SizedBox(
                                    width: 20.h,
                                    child: Text(
                                      "lbl209".tr,
                                      maxLines: null,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles.bodySmallGray50010
                                          .copyWith(
                                        height: 2.00,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 136.v),
                                  SizedBox(
                                    width: 20.h,
                                    child: Text(
                                      "lbl210".tr,
                                      maxLines: null,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles.bodySmallGray50010
                                          .copyWith(
                                        height: 2.00,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 136.v),
                                  SizedBox(
                                    width: 20.h,
                                    child: Text(
                                      "lbl209".tr,
                                      maxLines: null,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles.bodySmallGray50010
                                          .copyWith(
                                        height: 2.00,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 136.v),
                                  SizedBox(
                                    width: 20.h,
                                    child: Text(
                                      "lbl210".tr,
                                      maxLines: null,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles.bodySmallGray50010
                                          .copyWith(
                                        height: 2.00,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 136.v),
                                  SizedBox(
                                    width: 20.h,
                                    child: Text(
                                      "lbl210".tr,
                                      maxLines: null,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles.bodySmallGray50010
                                          .copyWith(
                                        height: 2.00,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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
                                padding: EdgeInsets.only(left: 15.h),
                                child: Text(
                                  "lbl12".tr,
                                  style: theme.textTheme.bodySmall,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 12.v),
                          _buildWidget(context),
                          SizedBox(height: 40.v),
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
  Widget _buildCouponExpired(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 40.h),
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 122.v,
          );
        },
        itemCount: 7,
        itemBuilder: (context, index) {
          return CouponexpiredItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 16.h),
      child: Row(
        children: [
          Text(
            "lbl13".tr,
            style: CustomTextStyles.bodySmallGray500_1,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Text(
              "lbl14".tr,
              style: CustomTextStyles.bodySmallGray500_1,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.h),
            child: Text(
              "lbl15".tr,
              style: CustomTextStyles.bodySmallGray500_1,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Text(
              "lbl16".tr,
              style: CustomTextStyles.bodySmallGray500_1,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildOneHundred(
    BuildContext context, {
    required String userName,
    required String userImage,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 2.v),
          child: Text(
            userName,
            style: theme.textTheme.displaySmall!.copyWith(
              color: appTheme.indigo400,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 6.v),
          child: Text(
            userImage,
            style: theme.textTheme.headlineLarge!.copyWith(
              color: appTheme.indigo400,
            ),
          ),
        ),
      ],
    );
  }
}
