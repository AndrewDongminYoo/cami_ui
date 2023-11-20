import 'package:cami_lab/core/app_export.dart';
import 'package:cami_lab/widgets/app_bar/appbar_leading_image.dart';
import 'package:cami_lab/widgets/app_bar/appbar_trailing_image.dart';
import 'package:cami_lab/widgets/app_bar/custom_app_bar.dart';
import 'package:cami_lab/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class CadesExamScreen extends StatelessWidget {
  const CadesExamScreen({Key? key})
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
            padding: EdgeInsets.only(top: 2.v),
            child: Column(
              children: [
                Text(
                  "lbl194".tr,
                  style: CustomTextStyles.bodyMediumNanumSquareNeoBlack900,
                ),
                SizedBox(height: 36.v),
                _buildWidgetRow(context),
                SizedBox(height: 32.v),
                _buildSearchRow(context),
                SizedBox(height: 63.v),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: _buildB(
                    context,
                    userMessage: "lbl_1".tr,
                    userLabel: "msg170".tr,
                  ),
                ),
                SizedBox(height: 16.v),
                _buildButton1(context),
                SizedBox(height: 8.v),
                _buildButton2(context),
                SizedBox(height: 8.v),
                _buildButton3(context),
                SizedBox(height: 8.v),
                _buildButton4(context),
                SizedBox(height: 8.v),
                _buildButton5(context),
                SizedBox(height: 79.v),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: _buildWidget1(
                    context,
                    userText: "lbl_22".tr,
                    userMessage: "msg171".tr,
                  ),
                ),
                SizedBox(height: 16.v),
                _buildButton6(context),
                SizedBox(height: 8.v),
                _buildButton7(context),
                SizedBox(height: 8.v),
                _buildButton8(context),
                SizedBox(height: 8.v),
                _buildButton9(context),
                SizedBox(height: 8.v),
                _buildButton10(context),
                SizedBox(height: 80.v),
                _buildWidgetRow2(context),
                SizedBox(height: 16.v),
                _buildButton11(context),
                SizedBox(height: 8.v),
                _buildButton12(context),
                SizedBox(height: 8.v),
                _buildButton13(context),
                SizedBox(height: 8.v),
                _buildButton14(context),
                SizedBox(height: 8.v),
                _buildButton15(context),
                SizedBox(height: 80.v),
                _buildWidgetRow3(context),
                SizedBox(height: 16.v),
                _buildButton16(context),
                SizedBox(height: 8.v),
                _buildButton17(context),
                SizedBox(height: 8.v),
                _buildButton18(context),
                SizedBox(height: 8.v),
                _buildButton19(context),
                SizedBox(height: 8.v),
                _buildButton20(context),
                SizedBox(height: 80.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Row(
                      children: [
                        Container(
                          width: 24.adaptSize,
                          padding: EdgeInsets.symmetric(
                            horizontal: 8.h,
                            vertical: 3.v,
                          ),
                          decoration: AppDecoration.fillErrorContainer.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder12,
                          ),
                          child: Text(
                            "lbl_53".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 8.h,
                            bottom: 4.v,
                          ),
                          child: Text(
                            "msg174".tr,
                            style: CustomTextStyles.bodyMediumBlack900_1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16.v),
                _buildButton21(context),
                SizedBox(height: 8.v),
                _buildButton22(context),
                SizedBox(height: 8.v),
                _buildButton23(context),
                SizedBox(height: 8.v),
                _buildButton24(context),
                SizedBox(height: 8.v),
                _buildButton25(context),
                SizedBox(height: 80.v),
                _buildWidgetRow4(context),
                SizedBox(height: 16.v),
                _buildButton26(context),
                SizedBox(height: 8.v),
                _buildButton27(context),
                SizedBox(height: 8.v),
                _buildButton28(context),
                SizedBox(height: 8.v),
                _buildButton29(context),
                SizedBox(height: 8.v),
                _buildButton30(context),
                SizedBox(height: 80.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 16.h,
                      right: 92.h,
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 24.adaptSize,
                          padding: EdgeInsets.symmetric(
                            horizontal: 8.h,
                            vertical: 3.v,
                          ),
                          decoration: AppDecoration.fillErrorContainer.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder12,
                          ),
                          child: Text(
                            "lbl_72".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 8.h,
                            bottom: 4.v,
                          ),
                          child: Text(
                            "msg176".tr,
                            style: CustomTextStyles.bodyMediumBlack900_1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16.v),
                _buildButton31(context),
                SizedBox(height: 8.v),
                _buildButton32(context),
                SizedBox(height: 8.v),
                _buildButton33(context),
                SizedBox(height: 8.v),
                _buildButton34(context),
                SizedBox(height: 8.v),
                _buildButton35(context),
                SizedBox(height: 80.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    right: 27.h,
                  ),
                  child: _buildWidget(
                    context,
                    userName: "lbl_82".tr,
                    userMessage: "msg177".tr,
                  ),
                ),
                SizedBox(height: 16.v),
                _buildButton36(context),
                SizedBox(height: 8.v),
                _buildButton37(context),
                SizedBox(height: 8.v),
                _buildButton38(context),
                SizedBox(height: 8.v),
                _buildButton39(context),
                SizedBox(height: 8.v),
                _buildButton40(context),
                SizedBox(height: 80.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Row(
                      children: [
                        Container(
                          width: 24.adaptSize,
                          padding: EdgeInsets.symmetric(
                            horizontal: 8.h,
                            vertical: 3.v,
                          ),
                          decoration: AppDecoration.fillErrorContainer.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder12,
                          ),
                          child: Text(
                            "lbl_92".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 8.h,
                            bottom: 4.v,
                          ),
                          child: Text(
                            "lbl303".tr,
                            style: CustomTextStyles.bodyMediumBlack900_1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16.v),
                _buildButton41(context),
                SizedBox(height: 8.v),
                _buildButton42(context),
                SizedBox(height: 8.v),
                _buildButton43(context),
                SizedBox(height: 8.v),
                _buildButton44(context),
                SizedBox(height: 8.v),
                _buildButton45(context),
                SizedBox(height: 80.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Row(
                      children: [
                        Container(
                          width: 27.h,
                          padding: EdgeInsets.symmetric(
                            horizontal: 8.h,
                            vertical: 3.v,
                          ),
                          decoration: AppDecoration.fillErrorContainer.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder12,
                          ),
                          child: Text(
                            "lbl_102".tr,
                            style: CustomTextStyles.bodySmall11,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 8.h,
                            bottom: 4.v,
                          ),
                          child: Text(
                            "lbl304".tr,
                            style: CustomTextStyles.bodyMediumBlack900_1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16.v),
                _buildButton46(context),
                SizedBox(height: 8.v),
                _buildButton47(context),
                SizedBox(height: 8.v),
                _buildButton48(context),
                SizedBox(height: 8.v),
                _buildButton49(context),
                SizedBox(height: 8.v),
                _buildButton50(context),
                SizedBox(height: 80.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    right: 27.h,
                  ),
                  child: _buildWidget(
                    context,
                    userName: "lbl_112".tr,
                    userMessage: "msg178".tr,
                  ),
                ),
                SizedBox(height: 16.v),
                _buildButton51(context),
                SizedBox(height: 8.v),
                _buildButton52(context),
                SizedBox(height: 8.v),
                _buildButton53(context),
                SizedBox(height: 8.v),
                _buildButton54(context),
                SizedBox(height: 8.v),
                _buildButton55(context),
                SizedBox(height: 80.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 16.h,
                      right: 95.h,
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 27.h,
                          padding: EdgeInsets.symmetric(
                            horizontal: 8.h,
                            vertical: 3.v,
                          ),
                          decoration: AppDecoration.fillErrorContainer.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder12,
                          ),
                          child: Text(
                            "lbl_122".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 8.h,
                            bottom: 4.v,
                          ),
                          child: Text(
                            "msg179".tr,
                            style: CustomTextStyles.bodyMediumBlack900_1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16.v),
                _buildButton56(context),
                SizedBox(height: 8.v),
                _buildButton57(context),
                SizedBox(height: 8.v),
                _buildButton58(context),
                SizedBox(height: 8.v),
                _buildButton59(context),
                SizedBox(height: 8.v),
                _buildButton60(context),
                SizedBox(height: 80.v),
                _buildWidgetRow6(context),
                SizedBox(height: 16.v),
                _buildButton61(context),
                SizedBox(height: 8.v),
                _buildButton62(context),
                SizedBox(height: 8.v),
                _buildButton63(context),
                SizedBox(height: 8.v),
                _buildButton64(context),
                SizedBox(height: 8.v),
                _buildButton65(context),
                SizedBox(height: 80.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Row(
                      children: [
                        Container(
                          width: 27.h,
                          padding: EdgeInsets.symmetric(
                            horizontal: 8.h,
                            vertical: 3.v,
                          ),
                          decoration: AppDecoration.fillErrorContainer.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder12,
                          ),
                          child: Text(
                            "lbl_142".tr,
                            style: CustomTextStyles.bodySmall11,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 8.h,
                            bottom: 4.v,
                          ),
                          child: Text(
                            "msg181".tr,
                            style: CustomTextStyles.bodyMediumBlack900_1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16.v),
                _buildButton66(context),
                SizedBox(height: 8.v),
                _buildButton67(context),
                SizedBox(height: 8.v),
                _buildButton68(context),
                SizedBox(height: 8.v),
                _buildButton69(context),
                SizedBox(height: 8.v),
                _buildButton70(context),
                SizedBox(height: 80.v),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: _buildWidget1(
                    context,
                    userText: "lbl_152".tr,
                    userMessage: "msg182".tr,
                  ),
                ),
                SizedBox(height: 16.v),
                _buildButton71(context),
                SizedBox(height: 8.v),
                _buildButton72(context),
                SizedBox(height: 8.v),
                _buildButton73(context),
                SizedBox(height: 8.v),
                _buildButton74(context),
                SizedBox(height: 8.v),
                _buildButton75(context),
                SizedBox(height: 80.v),
                _buildWidgetRow8(context),
                SizedBox(height: 16.v),
                _buildButton76(context),
                SizedBox(height: 8.v),
                _buildButton77(context),
                SizedBox(height: 8.v),
                _buildButton78(context),
                SizedBox(height: 8.v),
                _buildButton79(context),
                SizedBox(height: 8.v),
                _buildButton80(context),
                SizedBox(height: 80.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 16.h,
                      right: 99.h,
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 26.h,
                          padding: EdgeInsets.symmetric(
                            horizontal: 8.h,
                            vertical: 3.v,
                          ),
                          decoration: AppDecoration.fillErrorContainer.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder12,
                          ),
                          child: Text(
                            "lbl_172".tr,
                            style: CustomTextStyles.bodySmall11,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 8.h,
                            bottom: 4.v,
                          ),
                          child: Text(
                            "msg184".tr,
                            style: CustomTextStyles.bodyMediumBlack900_1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16.v),
                _buildButton81(context),
                SizedBox(height: 8.v),
                _buildButton82(context),
                SizedBox(height: 8.v),
                _buildButton83(context),
                SizedBox(height: 8.v),
                _buildButton84(context),
                SizedBox(height: 8.v),
                _buildButton85(context),
                SizedBox(height: 48.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 252.h,
                      right: 16.h,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 48.h,
                      vertical: 8.v,
                    ),
                    decoration: AppDecoration.outlineGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: SizedBox(
                      width: 27.h,
                      child: Text(
                        "lbl299".tr,
                        maxLines: null,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.bodyMediumGray800.copyWith(
                          height: 1.71,
                        ),
                      ),
                    ),
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
                      _buildWidgetRow9(context),
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
                        child: _buildB(
                          context,
                          userMessage: "msg_2_b101".tr,
                          userLabel: "lbl_02_861_6828".tr,
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
      leadingWidth: 80.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgGroup,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 15.v,
          bottom: 14.v,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgImage7,
          margin: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 13.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildWidgetRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "lbl182".tr,
                style: CustomTextStyles.bodySmallBlack900,
              ),
              Padding(
                padding: EdgeInsets.only(left: 3.h),
                child: Text(
                  "lbl_04".tr,
                  style: CustomTextStyles.bodySmallErrorContainer,
                ),
              ),
              Spacer(),
              Text(
                "lbl_0".tr,
                style: CustomTextStyles.bodySmallErrorContainer,
              ),
              Padding(
                padding: EdgeInsets.only(left: 7.h),
                child: Text(
                  "lbl2".tr,
                  style: CustomTextStyles.bodySmallGray500_1,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 7.h),
                child: Text(
                  "lbl_172".tr,
                  style: CustomTextStyles.bodySmallGray500,
                ),
              ),
            ],
          ),
          SizedBox(height: 8.v),
          Container(
            decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder2,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 8.v,
                  width: 1.h,
                  decoration: BoxDecoration(
                    color: appTheme.blue50,
                  ),
                ),
                Container(
                  height: 8.v,
                  width: 1.h,
                  decoration: BoxDecoration(
                    color: appTheme.blue50,
                  ),
                ),
                Container(
                  height: 8.v,
                  width: 1.h,
                  decoration: BoxDecoration(
                    color: appTheme.blue50,
                  ),
                ),
                Container(
                  height: 8.v,
                  width: 1.h,
                  decoration: BoxDecoration(
                    color: appTheme.blue50,
                  ),
                ),
                Container(
                  height: 8.v,
                  width: 1.h,
                  decoration: BoxDecoration(
                    color: appTheme.blue50,
                  ),
                ),
                Container(
                  height: 8.v,
                  width: 1.h,
                  decoration: BoxDecoration(
                    color: appTheme.blue50,
                  ),
                ),
                Container(
                  height: 8.v,
                  width: 1.h,
                  decoration: BoxDecoration(
                    color: appTheme.blue50,
                  ),
                ),
                Container(
                  height: 8.v,
                  width: 1.h,
                  decoration: BoxDecoration(
                    color: appTheme.blue50,
                  ),
                ),
                Container(
                  height: 8.v,
                  width: 1.h,
                  decoration: BoxDecoration(
                    color: appTheme.blue50,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 2.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgSearch,
            height: 16.adaptSize,
            width: 16.adaptSize,
            margin: EdgeInsets.only(bottom: 74.v),
          ),
          Expanded(
            child: Container(
              width: 296.h,
              margin: EdgeInsets.symmetric(horizontal: 8.h),
              child: Text(
                "msg169".tr,
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodySmallErrorContainer.copyWith(
                  height: 1.50,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildButton1(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl300".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton2(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_63".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton3(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl301".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton4(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_2_42".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton5(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl302".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton6(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl300".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton7(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_63".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton8(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl301".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton9(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_2_42".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton10(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl302".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildWidgetRow2(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 16.h,
          right: 28.h,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 24.adaptSize,
              margin: EdgeInsets.only(bottom: 16.v),
              padding: EdgeInsets.symmetric(
                horizontal: 8.h,
                vertical: 3.v,
              ),
              decoration: AppDecoration.fillErrorContainer.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder12,
              ),
              child: Text(
                "lbl_33".tr,
                style: theme.textTheme.bodySmall,
              ),
            ),
            Expanded(
              child: Container(
                width: 317.h,
                margin: EdgeInsets.only(left: 8.h),
                child: Text(
                  "msg172".tr,
                  maxLines: null,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyMediumBlack900_1.copyWith(
                    height: 1.43,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildButton11(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl300".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton12(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_63".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton13(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl301".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton14(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_2_42".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton15(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl302".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildWidgetRow3(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 16.h,
          right: 54.h,
        ),
        child: Row(
          children: [
            Container(
              width: 24.adaptSize,
              padding: EdgeInsets.symmetric(
                horizontal: 8.h,
                vertical: 3.v,
              ),
              decoration: AppDecoration.fillErrorContainer.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder12,
              ),
              child: Text(
                "lbl_44".tr,
                style: theme.textTheme.bodySmall,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 8.h,
                bottom: 4.v,
              ),
              child: Text(
                "msg173".tr,
                style: CustomTextStyles.bodyMediumBlack900_1,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildButton16(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl300".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton17(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_63".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton18(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl301".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton19(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_2_42".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton20(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl302".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton21(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl300".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton22(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_63".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton23(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl301".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton24(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_2_42".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton25(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl302".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildWidgetRow4(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 23.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 24.adaptSize,
            margin: EdgeInsets.only(bottom: 16.v),
            padding: EdgeInsets.symmetric(
              horizontal: 8.h,
              vertical: 3.v,
            ),
            decoration: AppDecoration.fillErrorContainer.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder12,
            ),
            child: Text(
              "lbl_62".tr,
              style: theme.textTheme.bodySmall,
            ),
          ),
          Expanded(
            child: Container(
              width: 322.h,
              margin: EdgeInsets.only(left: 8.h),
              child: Text(
                "msg175".tr,
                maxLines: null,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodyMediumBlack900_1.copyWith(
                  height: 1.43,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildButton26(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl300".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton27(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_63".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton28(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl301".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton29(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_2_42".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton30(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl302".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton31(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl300".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton32(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_63".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton33(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl301".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton34(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_2_42".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton35(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl302".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton36(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl300".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton37(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_63".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton38(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl301".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton39(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_2_42".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton40(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl302".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton41(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl300".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton42(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_63".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton43(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl301".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton44(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_2_42".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton45(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl302".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton46(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl300".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton47(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_63".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton48(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl301".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton49(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_2_42".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton50(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl302".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton51(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl300".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton52(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_63".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton53(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl301".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton54(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_2_42".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton55(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl302".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton56(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl300".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton57(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_63".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton58(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl301".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton59(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_2_42".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton60(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl302".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildWidgetRow6(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 27.h,
            margin: EdgeInsets.only(bottom: 16.v),
            padding: EdgeInsets.symmetric(
              horizontal: 8.h,
              vertical: 3.v,
            ),
            decoration: AppDecoration.fillErrorContainer.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder12,
            ),
            child: Text(
              "lbl_132".tr,
              style: theme.textTheme.bodySmall,
            ),
          ),
          Expanded(
            child: Container(
              width: 326.h,
              margin: EdgeInsets.only(left: 8.h),
              child: Text(
                "msg180".tr,
                maxLines: null,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodyMediumBlack900_1.copyWith(
                  height: 1.43,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildButton61(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl300".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton62(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_63".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton63(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl301".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton64(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_2_42".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton65(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl302".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton66(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl300".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton67(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_63".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton68(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl301".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton69(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_2_42".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton70(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl302".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton71(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl300".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton72(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_63".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton73(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl301".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton74(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_2_42".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton75(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl302".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildWidgetRow8(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 16.h,
          right: 38.h,
        ),
        child: Row(
          children: [
            Container(
              width: 27.h,
              padding: EdgeInsets.symmetric(
                horizontal: 8.h,
                vertical: 3.v,
              ),
              decoration: AppDecoration.fillErrorContainer.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder12,
              ),
              child: Text(
                "lbl_162".tr,
                style: CustomTextStyles.bodySmall11,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 8.h,
                bottom: 4.v,
              ),
              child: Text(
                "msg183".tr,
                style: CustomTextStyles.bodyMediumBlack900_1,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildButton76(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl300".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton77(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_63".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton78(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl301".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton79(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_2_42".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton80(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl302".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton81(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl300".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton82(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_63".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton83(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl301".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton84(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_2_42".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildButton85(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl302".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildWidgetRow9(BuildContext context) {
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
  Widget _buildWidget(
    BuildContext context, {
    required String userName,
    required String userMessage,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 24.adaptSize,
          margin: EdgeInsets.only(bottom: 16.v),
          padding: EdgeInsets.symmetric(
            horizontal: 8.h,
            vertical: 3.v,
          ),
          decoration: AppDecoration.fillErrorContainer.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder12,
          ),
          child: Text(
            userName,
            style: theme.textTheme.bodySmall!.copyWith(
              color: theme.colorScheme.onPrimaryContainer,
            ),
          ),
        ),
        Expanded(
          child: Container(
            width: 318.h,
            margin: EdgeInsets.only(left: 8.h),
            child: Text(
              userMessage,
              maxLines: null,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyMediumBlack900_1.copyWith(
                color: appTheme.black900,
                height: 1.43,
              ),
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildWidget1(
    BuildContext context, {
    required String userText,
    required String userMessage,
  }) {
    return Row(
      children: [
        Container(
          width: 27.h,
          padding: EdgeInsets.symmetric(
            horizontal: 8.h,
            vertical: 3.v,
          ),
          decoration: AppDecoration.fillErrorContainer.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder12,
          ),
          child: Text(
            userText,
            style: CustomTextStyles.bodySmall11.copyWith(
              color: theme.colorScheme.onPrimaryContainer,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 8.h,
            bottom: 4.v,
          ),
          child: Text(
            userMessage,
            style: CustomTextStyles.bodyMediumBlack900_1.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildB(
    BuildContext context, {
    required String userMessage,
    required String userLabel,
  }) {
    return Row(
      children: [
        Text(
          userMessage,
          style: theme.textTheme.bodySmall!.copyWith(
            color: theme.colorScheme.onPrimaryContainer,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 34.h),
          child: Text(
            userLabel,
            style: CustomTextStyles.bodySmall11.copyWith(
              color: theme.colorScheme.onPrimaryContainer,
            ),
          ),
        ),
      ],
    );
  }
}
