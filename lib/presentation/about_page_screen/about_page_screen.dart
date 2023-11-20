import '../about_page_screen/widgets/aboutpage_item_widget.dart';
import '../about_page_screen/widgets/doctorreviews_item_widget.dart';
import 'package:cami_lab/core/app_export.dart';
import 'package:cami_lab/widgets/app_bar/appbar_leading_image.dart';
import 'package:cami_lab/widgets/app_bar/appbar_trailing_image.dart';
import 'package:cami_lab/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class AboutPageScreen extends StatelessWidget {
  const AboutPageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "lbl252".tr,
                  style: CustomTextStyles.bodyMediumGray90002,
                ),
                SizedBox(height: 11.v),
                Text(
                  "lbl253".tr,
                  style: theme.textTheme.headlineSmall,
                ),
                Text(
                  "lbl254".tr,
                  style: theme.textTheme.headlineSmall,
                ),
                SizedBox(height: 19.v),
                Text(
                  "msg_cami_for_the_miracle".tr,
                  style: theme.textTheme.bodyLarge,
                ),
                SizedBox(height: 59.v),
                _buildCamiForTheMiracle(context),
                CustomImageView(
                  imagePath: ImageConstant.imgImage200x200,
                  height: 200.adaptSize,
                  width: 200.adaptSize,
                ),
                SizedBox(height: 8.v),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.h,
                    vertical: 32.v,
                  ),
                  decoration: AppDecoration.fillGray.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildAboutPage(context),
                      SizedBox(height: 32.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          margin: EdgeInsets.only(left: 115.h),
                          padding: EdgeInsets.symmetric(
                            horizontal: 61.h,
                            vertical: 12.v,
                          ),
                          decoration: AppDecoration.outlineBlueGrayB.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder8,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "lbl268".tr,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.bodySmallBlack90010,
                              ),
                              Text(
                                "lbl269".tr,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.bodySmallBlack90010,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 39.v),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 36.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 1.v),
                              child: Text(
                                "lbl270".tr,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.headlineSmallBlack900,
                              ),
                            ),
                            Container(
                              height: 32.v,
                              width: 253.h,
                              margin: EdgeInsets.only(left: 1.h),
                              child: Stack(
                                alignment: Alignment.centerRight,
                                children: [
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(bottom: 3.v),
                                      child: Text(
                                        "msg144".tr,
                                        textAlign: TextAlign.center,
                                        style: CustomTextStyles
                                            .bodyMediumBlack900_1,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      "lbl270".tr,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles
                                          .headlineSmallBlack900,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 40.v),
                      _buildRecentOrders(context),
                    ],
                  ),
                ),
                SizedBox(height: 80.v),
                CustomImageView(
                  imagePath: ImageConstant.imgClipPathGroup,
                  height: 32.v,
                  width: 100.h,
                ),
                SizedBox(height: 12.v),
                Text(
                  "lbl172".tr,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.titleLargePoppinsBlack900,
                ),
                SizedBox(height: 32.v),
                Container(
                  width: 302.h,
                  margin: EdgeInsets.only(
                    left: 46.h,
                    right: 45.h,
                  ),
                  child: Text(
                    "msg145".tr,
                    maxLines: null,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.bodyMediumBlack900_1.copyWith(
                      height: 1.71,
                    ),
                  ),
                ),
                SizedBox(
                  width: 140.h,
                  child: Text(
                    "lbl273".tr,
                    maxLines: null,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.bodyMediumBlack900_1.copyWith(
                      height: 1.71,
                    ),
                  ),
                ),
                SizedBox(
                  width: 261.h,
                  child: Text(
                    "msg146".tr,
                    maxLines: null,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.bodyMediumBlack900_1.copyWith(
                      height: 1.71,
                    ),
                  ),
                ),
                SizedBox(height: 16.v),
                SizedBox(
                  width: 232.h,
                  child: Text(
                    "msg147".tr,
                    maxLines: null,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.bodyMediumBlack900_1.copyWith(
                      height: 1.71,
                    ),
                  ),
                ),
                SizedBox(
                  width: 201.h,
                  child: Text(
                    "msg148".tr,
                    maxLines: null,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.bodyMediumBlack900_1.copyWith(
                      height: 1.71,
                    ),
                  ),
                ),
                Container(
                  width: 304.h,
                  margin: EdgeInsets.only(
                    left: 44.h,
                    right: 45.h,
                  ),
                  child: Text(
                    "msg149".tr,
                    maxLines: null,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.bodyMediumBlack900_1.copyWith(
                      height: 1.71,
                    ),
                  ),
                ),
                SizedBox(height: 80.v),
                Container(
                  height: 2.v,
                  width: 30.h,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: appTheme.black900,
                      width: 1.h,
                    ),
                  ),
                ),
                SizedBox(height: 80.v),
                Text(
                  "lbl274".tr,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyMediumGray90002,
                ),
                SizedBox(height: 15.v),
                Text(
                  "lbl275".tr,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headlineSmall,
                ),
                SizedBox(height: 20.v),
                Text(
                  "msg_how_to_create_the".tr,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyLarge,
                ),
                SizedBox(height: 60.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Text(
                      "lbl_01".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                ),
                SizedBox(height: 9.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Text(
                      "msg150".tr,
                      style: CustomTextStyles.bodyMediumBlack900_1,
                    ),
                  ),
                ),
                SizedBox(height: 32.v),
                _buildDoctorReviews(context),
                SizedBox(height: 63.v),
                _buildClientTestimonials(context),
                SizedBox(height: 64.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Text(
                      "lbl_03".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                ),
                SizedBox(height: 17.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Text(
                      "msg151".tr,
                      style: CustomTextStyles.bodyMediumBlack900_1,
                    ),
                  ),
                ),
                SizedBox(height: 16.v),
                _buildReviews(context),
                SizedBox(height: 79.v),
                Container(
                  height: 2.v,
                  width: 30.h,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: appTheme.black900,
                      width: 1.h,
                    ),
                  ),
                ),
                SizedBox(height: 80.v),
                Text(
                  "lbl277".tr,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyLargeGray90002,
                ),
                SizedBox(height: 6.v),
                Text(
                  "lbl_partners".tr,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyMediumBlack900,
                ),
                SizedBox(height: 62.v),
                _buildPlaylist(context),
                SizedBox(height: 12.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImage32x81,
                      height: 32.v,
                      width: 81.h,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage47,
                      height: 32.v,
                      width: 81.h,
                      margin: EdgeInsets.only(left: 12.h),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage48,
                      height: 32.v,
                      width: 81.h,
                      margin: EdgeInsets.only(left: 12.h),
                    ),
                  ],
                ),
                SizedBox(height: 101.v),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16.h),
                  decoration: AppDecoration.fillGray5001.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildUserProfile(context),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 32.h),
                          child: Text(
                            "msg154".tr,
                            style: CustomTextStyles.poppinsBlack900,
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgVectorBlack900,
                        height: 43.v,
                        width: 360.h,
                      ),
                      _buildUserProfile1(context),
                      CustomImageView(
                        imagePath: ImageConstant.imgImage209x361,
                        height: 209.v,
                        width: 361.h,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 128.v),
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
                      _buildUserProfile2(context),
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
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 48.v,
      leadingWidth: 80.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgGroup,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 14.v,
          bottom: 13.v,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgImage7,
          margin: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 12.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildCamiForTheMiracle(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 15.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 42.v,
                  width: 109.h,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "lbl255".tr,
                          style: CustomTextStyles.bodyLarge18,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(
                          height: 39.v,
                          width: 109.h,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 34.h),
                                  child: Text(
                                    "lbl_atti".tr,
                                    style: theme.textTheme.bodyLarge,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  "lbl256".tr,
                                  style: CustomTextStyles.bodySmallBlack900,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "lbl257".tr,
                  style: CustomTextStyles.bodySmallBlack900,
                ),
              ],
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 58.v,
                width: 123.h,
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 41.h),
                        child: Text(
                          "lbl258".tr,
                          style: CustomTextStyles.bodyLarge18,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: EdgeInsets.only(top: 3.v),
                        child: Text(
                          "lbl_cami2".tr,
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 15.v),
                        child: Text(
                          "lbl259".tr,
                          style: CustomTextStyles.bodySmallBlack900,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "lbl260".tr,
                        style: CustomTextStyles.bodySmallBlack900,
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "lbl261".tr,
                  style: CustomTextStyles.bodySmallBlack900,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAboutPage(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return SizedBox(
          height: 32.v,
        );
      },
      itemCount: 3,
      itemBuilder: (context, index) {
        return AboutpageItemWidget();
      },
    );
  }

  /// Section Widget
  Widget _buildRecentOrders(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 11.v,
          ),
          decoration: AppDecoration.outlineGray800.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 2.v),
                child: Text(
                  "lbl271".tr,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodySmallGray90001,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgArrowRightGray600,
                height: 12.v,
                width: 9.h,
                margin: EdgeInsets.only(
                  left: 2.h,
                  top: 3.v,
                  bottom: 2.v,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 11.v,
          ),
          decoration: AppDecoration.outlineGray800.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 2.v),
                child: Text(
                  "lbl272".tr,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodySmallGray90001,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgArrowRightGray600,
                height: 12.v,
                width: 9.h,
                margin: EdgeInsets.only(
                  left: 2.h,
                  top: 3.v,
                  bottom: 2.v,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildDoctorReviews(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 284.v,
          crossAxisCount: 2,
          mainAxisSpacing: 16.h,
          crossAxisSpacing: 16.h,
        ),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 6,
        itemBuilder: (context, index) {
          return DoctorreviewsItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildClientTestimonials(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
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
                  "lbl_022".tr,
                  style: theme.textTheme.bodyLarge,
                ),
                SizedBox(height: 16.v),
                SizedBox(
                  width: 143.h,
                  child: Text(
                    "msg_23".tr,
                    maxLines: null,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyMediumBlack900_1.copyWith(
                      height: 1.43,
                    ),
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage160x200,
            height: 160.v,
            width: 200.h,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildReviews(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage158x112,
            height: 158.v,
            width: 112.h,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage42,
            height: 158.v,
            width: 112.h,
            margin: EdgeInsets.only(left: 13.h),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage43,
            height: 158.v,
            width: 112.h,
            margin: EdgeInsets.only(left: 12.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPlaylist(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage33x81,
            height: 33.v,
            width: 81.h,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage44,
            height: 33.v,
            width: 81.h,
            margin: EdgeInsets.only(left: 12.h),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage45,
            height: 33.v,
            width: 81.h,
            margin: EdgeInsets.only(left: 13.h),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage46,
            height: 33.v,
            width: 81.h,
            margin: EdgeInsets.only(left: 12.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return SizedBox(
      height: 212.v,
      width: 361.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 49.v),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "lbl278".tr,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.bodyLargeGray90002,
                  ),
                  SizedBox(height: 7.v),
                  Text(
                    "lbl_history".tr,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.bodyMediumBlack900_1,
                  ),
                  SizedBox(height: 3.v),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.img,
            height: 24.v,
            width: 20.h,
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(
              left: 32.h,
              bottom: 37.v,
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 32.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_2019".tr,
                    style: CustomTextStyles.bodySmallBlack900,
                  ),
                  SizedBox(height: 1.v),
                  SizedBox(
                    width: 98.h,
                    child: Text(
                      "msg_62".tr,
                      maxLines: null,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.poppinsBlack900.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(
                right: 19.h,
                bottom: 5.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.img,
                        height: 20.v,
                        width: 18.h,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.img,
                        height: 20.v,
                        width: 18.h,
                        margin: EdgeInsets.only(left: 97.h),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "lbl_2021".tr,
                        style: CustomTextStyles.bodySmallBlack90010,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 94.h),
                        child: Text(
                          "lbl_2023".tr,
                          style: CustomTextStyles.bodySmallBlack90010,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "msg152".tr,
                        style: CustomTextStyles.poppinsBlack900,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 23.h),
                        child: Text(
                          "lbl_kb".tr,
                          style: CustomTextStyles.poppinsBlack900,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "msg153".tr,
                        style: CustomTextStyles.poppinsBlack900,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 23.h),
                        child: Text(
                          "lbl_seed".tr,
                          style: CustomTextStyles.poppinsBlack900,
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
    );
  }

  /// Section Widget
  Widget _buildUserProfile1(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 12.h,
          right: 25.h,
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 39.v,
                  width: 26.h,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.img,
                        height: 24.v,
                        width: 20.h,
                        alignment: Alignment.topLeft,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "lbl_2018".tr,
                          style: CustomTextStyles.bodySmallBlack900,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 1.v),
                Text(
                  "msg155".tr,
                  style: CustomTextStyles.poppinsBlack900,
                ),
                Text(
                  "msg156".tr,
                  style: CustomTextStyles.poppinsBlack900,
                ),
                Text(
                  "msg157".tr,
                  style: CustomTextStyles.poppinsBlack900,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 23.h,
                bottom: 5.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 139.h,
                    margin: EdgeInsets.only(right: 63.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.img,
                          height: 20.v,
                          width: 18.h,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.img,
                          height: 20.v,
                          width: 18.h,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 145.h,
                    margin: EdgeInsets.only(right: 57.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "lbl_2020".tr,
                          style: CustomTextStyles.bodySmallBlack9009,
                        ),
                        Text(
                          "lbl_2022".tr,
                          style: CustomTextStyles.bodySmallBlack90010,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 171.h,
                    margin: EdgeInsets.only(right: 31.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "lbl279".tr,
                          style: CustomTextStyles.poppinsBlack900,
                        ),
                        Text(
                          "lbl280".tr,
                          style: CustomTextStyles.poppinsBlack900,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 198.h,
                    margin: EdgeInsets.only(right: 4.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "lbl281".tr,
                          style: CustomTextStyles.poppinsBlack900,
                        ),
                        Text(
                          "lbl282".tr,
                          style: CustomTextStyles.poppinsBlack900,
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "lbl_25".tr,
                      style: CustomTextStyles.poppinsBlack900,
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

  /// Section Widget
  Widget _buildUserProfile2(BuildContext context) {
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
}
