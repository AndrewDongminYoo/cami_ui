import 'package:cami_lab/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CheckupDogPage extends StatefulWidget {
  const CheckupDogPage({Key? key})
      : super(
          key: key,
        );

  @override
  CheckupDogPageState createState() => CheckupDogPageState();
}

class CheckupDogPageState extends State<CheckupDogPage>
    with AutomaticKeepAliveClientMixin<CheckupDogPage> {
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
                      CustomImageView(
                        imagePath: ImageConstant.imgImage683x361,
                        height: 683.v,
                        width: 361.h,
                      ),
                      SizedBox(height: 755.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgImage644x361,
                        height: 644.v,
                        width: 361.h,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgImage1252x361,
                        height: 1252.v,
                        width: 361.h,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgImage1368x361,
                        height: 1368.v,
                        width: 361.h,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgImage1087x361,
                        height: 1087.v,
                        width: 361.h,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgImage1009x361,
                        height: 1009.v,
                        width: 361.h,
                      ),
                      SizedBox(height: 1.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgImage1094x361,
                        height: 1094.v,
                        width: 361.h,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgImage544x361,
                        height: 544.v,
                        width: 361.h,
                      ),
                      SizedBox(height: 1.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgImage997x361,
                        height: 997.v,
                        width: 361.h,
                      ),
                      SizedBox(height: 272.v),
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
