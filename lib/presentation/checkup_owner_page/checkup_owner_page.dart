import 'package:cami_lab/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CheckupOwnerPage extends StatefulWidget {
  const CheckupOwnerPage({Key? key})
      : super(
          key: key,
        );

  @override
  CheckupOwnerPageState createState() => CheckupOwnerPageState();
}

class CheckupOwnerPageState extends State<CheckupOwnerPage>
    with AutomaticKeepAliveClientMixin<CheckupOwnerPage> {
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
                SizedBox(height: 24.v),
                Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImage472x361,
                      height: 472.v,
                      width: 361.h,
                    ),
                    SizedBox(height: 24.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage683x361,
                      height: 683.v,
                      width: 361.h,
                    ),
                    SizedBox(height: 72.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage681x361,
                      height: 681.v,
                      width: 361.h,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage1235x361,
                      height: 1235.v,
                      width: 361.h,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage1056x361,
                      height: 1056.v,
                      width: 361.h,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage719x361,
                      height: 719.v,
                      width: 361.h,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage552x361,
                      height: 552.v,
                      width: 361.h,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage1037x361,
                      height: 1037.v,
                      width: 361.h,
                    ),
                    SizedBox(height: 177.v),
                    _buildTicketSection(context),
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
  Widget _buildTicketSection(BuildContext context) {
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
                padding: EdgeInsets.only(left: 20.h),
                child: Text(
                  "lbl11".tr,
                  style: theme.textTheme.bodySmall,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 22.h),
                child: Text(
                  "lbl12".tr,
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ],
          ),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.only(right: 10.h),
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
          SizedBox(height: 38.v),
          Padding(
            padding: EdgeInsets.only(right: 64.h),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 1.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_address".tr,
                        style: theme.textTheme.bodySmall,
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
                ),
                Padding(
                  padding: EdgeInsets.only(left: 28.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_contact".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                      SizedBox(height: 10.v),
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
          SizedBox(height: 39.v),
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
