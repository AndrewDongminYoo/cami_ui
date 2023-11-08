import 'package:cami_lab/core/app_export.dart';
import 'package:flutter/material.dart';

class CheckUpDetailsTwoScreen extends StatelessWidget {
  const CheckUpDetailsTwoScreen({Key? key})
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
                _buildAppNavBar(context),
                _buildCheckUpDetails(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavBar(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: IntrinsicWidth(
        child: Container(
          height: 50.v,
          width: double.maxFinite,
          margin: EdgeInsets.only(right: 2717.h),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 50.v,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: appTheme.whiteA700,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 16.h),
                  padding: EdgeInsets.symmetric(vertical: 13.v),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 2.v,
                          bottom: 1.v,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgVectorGray9004x4,
                              height: 4.adaptSize,
                              width: 4.adaptSize,
                            ),
                            SizedBox(height: 1.v),
                            Padding(
                              padding: EdgeInsets.only(left: 2701.h),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgVector,
                                    height: 14.v,
                                    width: 13.h,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgVectorGray900,
                                    height: 14.adaptSize,
                                    width: 14.adaptSize,
                                    margin: EdgeInsets.only(left: 1.h),
                                  ),
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgVectorGray90014x23,
                                    height: 14.v,
                                    width: 23.h,
                                    margin: EdgeInsets.only(left: 3.h),
                                  ),
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgVectorGray9004x4,
                                    height: 14.v,
                                    width: 3.h,
                                    margin: EdgeInsets.only(left: 3.h),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              ImageConstant.imgMenu,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCheckUpDetails(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: IntrinsicWidth(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.only(bottom: 13.v),
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: Column(
                  children: [
                    _buildUsages(
                      context,
                      userName: "lbl".tr,
                      userAge: "lbl2".tr,
                      userLocation: "lbl3".tr,
                      userOccupation: "lbl2".tr,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "lbl_dopi".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                    SizedBox(height: 15.v),
                    Container(
                      height: 171.v,
                      width: 361.h,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            ImageConstant.imgImage171x361,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 18.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        height: 23.v,
                        width: 40.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: 23.v,
                                width: 40.h,
                                decoration: BoxDecoration(
                                  color: appTheme.gray90004,
                                  borderRadius: BorderRadius.circular(
                                    8.h,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "lbl_dopi2".tr,
                                style: CustomTextStyles.bodySmall10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 11.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "lbl4".tr,
                        style: CustomTextStyles.bodyLargeNanumSquareNeo_1,
                      ),
                    ),
                    SizedBox(height: 10.v),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: 12.adaptSize,
                          width: 12.adaptSize,
                          margin: EdgeInsets.symmetric(vertical: 4.v),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                ImageConstant.imgImage12x12,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          height: 12.adaptSize,
                          width: 12.adaptSize,
                          margin: EdgeInsets.only(
                            left: 2.h,
                            top: 4.v,
                            bottom: 4.v,
                          ),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                ImageConstant.imgImage12x12,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          height: 12.adaptSize,
                          width: 12.adaptSize,
                          margin: EdgeInsets.only(
                            left: 2.h,
                            top: 4.v,
                            bottom: 4.v,
                          ),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                ImageConstant.imgImage12x12,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          height: 12.adaptSize,
                          width: 12.adaptSize,
                          margin: EdgeInsets.only(
                            left: 2.h,
                            top: 4.v,
                            bottom: 4.v,
                          ),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                ImageConstant.imgImage12x12,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          height: 12.adaptSize,
                          width: 12.adaptSize,
                          margin: EdgeInsets.only(
                            left: 2.h,
                            top: 4.v,
                            bottom: 4.v,
                          ),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                ImageConstant.imgImage1,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Text(
                            "lbl_94".tr,
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 76.v,
                          width: 361.h,
                          decoration: BoxDecoration(
                            color: appTheme.gray10001,
                            borderRadius: BorderRadius.circular(
                              12.h,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 2340.h,
                              top: 16.v,
                              bottom: 16.v,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 2685.h),
                                  child: _buildTime(
                                    context,
                                    userName: "lbl5".tr,
                                    userAge: "lbl_154".tr,
                                  ),
                                ),
                                SizedBox(height: 4.v),
                                Padding(
                                  padding: EdgeInsets.only(right: 2685.h),
                                  child: _buildTime(
                                    context,
                                    userName: "lbl6".tr,
                                    userAge: "lbl_15".tr,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.v),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 3.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 32.v,
                            width: 85.h,
                            decoration: BoxDecoration(
                              color: appTheme.gray10001,
                              borderRadius: BorderRadius.circular(
                                16.h,
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgVectorBlack9001x10,
                            height: 1.v,
                            width: 10.h,
                            margin: EdgeInsets.only(
                              left: 7.h,
                              top: 16.v,
                              bottom: 16.v,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 4.v,
                              bottom: 3.v,
                            ),
                            child: Text(
                              "lbl_1".tr,
                              style: theme.textTheme.bodyLarge,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgVectorBlack900,
                            height: 10.adaptSize,
                            width: 10.adaptSize,
                            margin: EdgeInsets.only(
                              left: 19.h,
                              top: 11.v,
                              bottom: 11.v,
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 4.v),
                            child: Text(
                              "lbl_9_900".tr,
                              style: CustomTextStyles.bodyMedium15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8.v),
                    SizedBox(
                      height: 40.v,
                      width: 361.h,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 40.v,
                              width: 361.h,
                              decoration: BoxDecoration(
                                color: appTheme.yellow400,
                                borderRadius: BorderRadius.circular(
                                  8.h,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "lbl7".tr,
                              style: CustomTextStyles.bodyMediumGray90001,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 48.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 40.v,
                          width: 181.h,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: 40.v,
                                  width: 181.h,
                                  decoration: BoxDecoration(
                                    color: appTheme.gray90003,
                                    borderRadius: BorderRadius.circular(
                                      8.h,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "lbl8".tr,
                                  style: CustomTextStyles.bodyMediumWhiteA700,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 40.v,
                          width: 181.h,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: 40.v,
                                  width: 181.h,
                                  decoration: BoxDecoration(
                                    color: appTheme.gray50,
                                    borderRadius: BorderRadius.circular(
                                      8.h,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "lbl9".tr,
                                  style: CustomTextStyles.bodyMediumGray500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 24.v),
                    Container(
                      height: 472.v,
                      width: 361.h,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            ImageConstant.imgImage472x361,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      height: 683.v,
                      width: 361.h,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            ImageConstant.imgImage683x361,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 72.v),
                    Container(
                      height: 711.v,
                      width: 361.h,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            ImageConstant.imgImage711x361,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      height: 668.v,
                      width: 361.h,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            ImageConstant.imgImage668x361,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      height: 655.v,
                      width: 361.h,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            ImageConstant.imgImage655x361,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      height: 1091.v,
                      width: 361.h,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            ImageConstant.imgImage1091x361,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      height: 897.v,
                      width: 361.h,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            ImageConstant.imgImage897x361,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      height: 1136.v,
                      width: 361.h,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            ImageConstant.imgImage1136x361,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      height: 1004.v,
                      width: 361.h,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            ImageConstant.imgImage1004x361,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 510.v,
              width: double.maxFinite,
              margin: EdgeInsets.only(
                left: 2324.h,
                top: 8141.v,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 510.v,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: appTheme.gray90001,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 269.h),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 13.v),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgVectorYellow400,
                                          height: 6.adaptSize,
                                          width: 6.adaptSize,
                                        ),
                                        SizedBox(height: 2.v),
                                        Padding(
                                          padding:
                                              EdgeInsets.only(left: 2701.h),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgVectorWhiteA700,
                                                height: 21.v,
                                                width: 19.h,
                                              ),
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgVectorWhiteA70021x21,
                                                height: 21.adaptSize,
                                                width: 21.adaptSize,
                                                margin:
                                                    EdgeInsets.only(left: 2.h),
                                              ),
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgVectorWhiteA70020x33,
                                                height: 20.v,
                                                width: 33.h,
                                                margin:
                                                    EdgeInsets.only(left: 5.h),
                                              ),
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgVectorWhiteA70020x5,
                                                height: 20.v,
                                                width: 5.h,
                                                margin:
                                                    EdgeInsets.only(left: 4.h),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgVectorBlack90030x92,
                                  height: 30.v,
                                  width: 92.h,
                                  margin: EdgeInsets.only(bottom: 13.v),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 40.v),
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
                          SizedBox(height: 12.v),
                          _buildUsages(
                            context,
                            userName: "lbl13".tr,
                            userAge: "lbl14".tr,
                            userLocation: "lbl15".tr,
                            userOccupation: "lbl16".tr,
                          ),
                          SizedBox(height: 40.v),
                          Padding(
                            padding: EdgeInsets.only(right: 60.h),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 16.h),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                              Container(
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      ImageConstant.imgImage24x24,
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                margin: EdgeInsets.only(left: 16.h),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      ImageConstant.imgImage2,
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                margin: EdgeInsets.only(left: 16.h),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      ImageConstant.imgImage3,
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildTime(
    BuildContext context, {
    required String userName,
    required String userAge,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        children: [
          Text(
            userName,
            style: CustomTextStyles.bodyMediumGray500.copyWith(
              color: appTheme.gray500,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Text(
              userAge,
              style: CustomTextStyles.bodyMediumGray80001.copyWith(
                color: appTheme.gray80001,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildUsages(
    BuildContext context, {
    required String userName,
    required String userAge,
    required String userLocation,
    required String userOccupation,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          userName,
          style: CustomTextStyles.bodySmallGray500.copyWith(
            color: appTheme.gray500,
          ),
        ),
        Text(
          userAge,
          style: CustomTextStyles.bodySmallGray500.copyWith(
            color: appTheme.gray500,
          ),
        ),
        Text(
          userLocation,
          style: CustomTextStyles.bodySmallGray500.copyWith(
            color: appTheme.gray500,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 9.h),
          child: Text(
            userOccupation,
            style: CustomTextStyles.bodySmallGray500.copyWith(
              color: appTheme.gray500,
            ),
          ),
        ),
      ],
    );
  }
}
