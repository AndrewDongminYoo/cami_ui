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
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 24.v),
              child: Column(
                children: [
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
                      SizedBox(height: 1235.v),
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
                            _buildRecentOrders(context),
                            SizedBox(height: 40.v),
                            Padding(
                              padding: EdgeInsets.only(right: 60.h),
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
      ),
    );
  }

  /// Section Widget
  Widget _buildRecentOrders(BuildContext context) {
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
}
