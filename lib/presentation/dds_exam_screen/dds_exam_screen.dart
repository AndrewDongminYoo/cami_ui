import 'package:cami_lab/core/app_export.dart';
import 'package:cami_lab/widgets/app_bar/appbar_leading_image.dart';
import 'package:cami_lab/widgets/app_bar/appbar_trailing_image.dart';
import 'package:cami_lab/widgets/app_bar/custom_app_bar.dart';
import 'package:cami_lab/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class DdsExamScreen extends StatelessWidget {
  const DdsExamScreen({Key? key})
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
                  "lbl283".tr,
                  style: CustomTextStyles.bodyMediumNanumSquareNeoBlack900,
                ),
                SizedBox(height: 36.v),
                _buildWidget2(context),
                SizedBox(height: 32.v),
                _buildSearch(context),
                SizedBox(height: 63.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Row(
                      children: [
                        Container(
                          width: 24.adaptSize,
                          padding: EdgeInsets.symmetric(
                            horizontal: 10.h,
                            vertical: 1.v,
                          ),
                          decoration: AppDecoration.fillErrorContainer.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder12,
                          ),
                          child: Text(
                            "lbl_1".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 8.h,
                            bottom: 3.v,
                          ),
                          child: Text(
                            "lbl284".tr,
                            style: CustomTextStyles.bodyMediumBlack900_1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16.v),
                _buildTf(context),
                SizedBox(height: 8.v),
                _buildTf1(context),
                SizedBox(height: 8.v),
                _buildTf2(context),
                SizedBox(height: 8.v),
                _buildTf3(context),
                SizedBox(height: 8.v),
                _buildTf4(context),
                SizedBox(height: 79.v),
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
                            vertical: 1.v,
                          ),
                          decoration: AppDecoration.fillErrorContainer.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder12,
                          ),
                          child: Text(
                            "lbl_22".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 8.h,
                            bottom: 3.v,
                          ),
                          child: Text(
                            "lbl290".tr,
                            style: CustomTextStyles.bodyMediumBlack900_1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16.v),
                _buildTf5(context),
                SizedBox(height: 8.v),
                _buildTf6(context),
                SizedBox(height: 8.v),
                Container(
                  width: 361.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 30.h,
                    vertical: 2.v,
                  ),
                  decoration: AppDecoration.fillPrimary.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Text(
                    "lbl287".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                SizedBox(height: 8.v),
                _buildTf7(context),
                SizedBox(height: 8.v),
                _buildTf8(context),
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
                            "lbl_33".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 8.h,
                            bottom: 4.v,
                          ),
                          child: Text(
                            "lbl291".tr,
                            style: CustomTextStyles.bodyMediumBlack900_1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16.v),
                _buildTf9(context),
                SizedBox(height: 8.v),
                _buildTf10(context),
                SizedBox(height: 8.v),
                _buildTf11(context),
                SizedBox(height: 8.v),
                _buildTf12(context),
                SizedBox(height: 8.v),
                _buildTf13(context),
                SizedBox(height: 80.v),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: _buildWidget(
                    context,
                    userName: "lbl_44".tr,
                    userImage: "lbl292".tr,
                  ),
                ),
                SizedBox(height: 16.v),
                _buildTf14(context),
                SizedBox(height: 8.v),
                _buildTf15(context),
                SizedBox(height: 8.v),
                _buildTf16(context),
                SizedBox(height: 8.v),
                _buildTf17(context),
                SizedBox(height: 8.v),
                _buildTf18(context),
                SizedBox(height: 80.v),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: _buildWidget1(
                    context,
                    userLabel: "lbl_53".tr,
                    userMessage: "msg159".tr,
                  ),
                ),
                SizedBox(height: 16.v),
                _buildTf19(context),
                SizedBox(height: 8.v),
                _buildTf20(context),
                SizedBox(height: 8.v),
                _buildTf21(context),
                SizedBox(height: 8.v),
                _buildTf22(context),
                SizedBox(height: 8.v),
                _buildTf23(context),
                SizedBox(height: 80.v),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: _buildWidget(
                    context,
                    userName: "lbl_62".tr,
                    userImage: "lbl293".tr,
                  ),
                ),
                SizedBox(height: 16.v),
                _buildTf24(context),
                SizedBox(height: 8.v),
                _buildTf25(context),
                SizedBox(height: 8.v),
                _buildTf26(context),
                SizedBox(height: 8.v),
                _buildTf27(context),
                SizedBox(height: 8.v),
                _buildTf28(context),
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
                            "lbl294".tr,
                            style: CustomTextStyles.bodyMediumBlack900_1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16.v),
                _buildTf29(context),
                SizedBox(height: 8.v),
                _buildTf30(context),
                SizedBox(height: 8.v),
                _buildTf31(context),
                SizedBox(height: 8.v),
                _buildTf32(context),
                SizedBox(height: 8.v),
                _buildTf33(context),
                SizedBox(height: 80.v),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: _buildWidget1(
                    context,
                    userLabel: "lbl_82".tr,
                    userMessage: "msg160".tr,
                  ),
                ),
                SizedBox(height: 16.v),
                _buildTf34(context),
                SizedBox(height: 8.v),
                _buildTf35(context),
                SizedBox(height: 8.v),
                _buildTf36(context),
                SizedBox(height: 8.v),
                _buildTf37(context),
                SizedBox(height: 8.v),
                _buildTf38(context),
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
                            "msg161".tr,
                            style: CustomTextStyles.bodyMediumBlack900_1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16.v),
                _buildTf39(context),
                SizedBox(height: 8.v),
                _buildTf40(context),
                SizedBox(height: 8.v),
                _buildTf41(context),
                SizedBox(height: 8.v),
                _buildTf42(context),
                SizedBox(height: 8.v),
                _buildTf43(context),
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
                            "msg162".tr,
                            style: CustomTextStyles.bodyMediumBlack900_1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16.v),
                _buildTf44(context),
                SizedBox(height: 8.v),
                _buildTf45(context),
                SizedBox(height: 8.v),
                _buildTf46(context),
                SizedBox(height: 8.v),
                _buildTf47(context),
                SizedBox(height: 8.v),
                _buildTf48(context),
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
                            "lbl_112".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 8.h,
                            bottom: 4.v,
                          ),
                          child: Text(
                            "msg163".tr,
                            style: CustomTextStyles.bodyMediumBlack900_1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16.v),
                _buildTf49(context),
                SizedBox(height: 8.v),
                _buildTf50(context),
                SizedBox(height: 8.v),
                _buildTf51(context),
                SizedBox(height: 8.v),
                _buildTf52(context),
                SizedBox(height: 8.v),
                _buildTf53(context),
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
                            "lbl295".tr,
                            style: CustomTextStyles.bodyMediumBlack900_1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16.v),
                _buildTf54(context),
                SizedBox(height: 8.v),
                _buildTf55(context),
                SizedBox(height: 8.v),
                _buildTf56(context),
                SizedBox(height: 8.v),
                _buildTf57(context),
                SizedBox(height: 8.v),
                _buildTf58(context),
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
                            "lbl_132".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 8.h,
                            bottom: 4.v,
                          ),
                          child: Text(
                            "lbl296".tr,
                            style: CustomTextStyles.bodyMediumBlack900_1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16.v),
                _buildTf59(context),
                SizedBox(height: 8.v),
                _buildTf60(context),
                SizedBox(height: 8.v),
                _buildTf61(context),
                SizedBox(height: 8.v),
                _buildTf62(context),
                SizedBox(height: 8.v),
                _buildTf63(context),
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
                            "lbl297".tr,
                            style: CustomTextStyles.bodyMediumBlack900_1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16.v),
                _buildTf64(context),
                SizedBox(height: 8.v),
                _buildTf65(context),
                SizedBox(height: 8.v),
                _buildTf66(context),
                SizedBox(height: 8.v),
                _buildTf67(context),
                SizedBox(height: 8.v),
                _buildTf68(context),
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
                            "lbl_152".tr,
                            style: CustomTextStyles.bodySmall11,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 8.h,
                            bottom: 4.v,
                          ),
                          child: Text(
                            "msg164".tr,
                            style: CustomTextStyles.bodyMediumBlack900_1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16.v),
                _buildTf69(context),
                SizedBox(height: 8.v),
                _buildTf70(context),
                SizedBox(height: 8.v),
                _buildTf71(context),
                SizedBox(height: 8.v),
                _buildTf72(context),
                SizedBox(height: 8.v),
                _buildTf73(context),
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
                            "msg165".tr,
                            style: CustomTextStyles.bodyMediumBlack900_1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16.v),
                _buildTf74(context),
                SizedBox(height: 8.v),
                _buildTf75(context),
                SizedBox(height: 8.v),
                _buildTf76(context),
                SizedBox(height: 8.v),
                _buildTf77(context),
                SizedBox(height: 8.v),
                _buildTf78(context),
                SizedBox(height: 80.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.h),
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
                            "msg166".tr,
                            style: CustomTextStyles.bodyMediumBlack900_1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16.v),
                _buildTf79(context),
                SizedBox(height: 8.v),
                _buildTf80(context),
                SizedBox(height: 8.v),
                _buildTf81(context),
                SizedBox(height: 8.v),
                _buildTf82(context),
                SizedBox(height: 8.v),
                _buildTf83(context),
                SizedBox(height: 80.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 16.h,
                      right: 91.h,
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
                            "lbl_182".tr,
                            style: CustomTextStyles.bodySmall11,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 8.h,
                            bottom: 4.v,
                          ),
                          child: Text(
                            "msg167".tr,
                            style: CustomTextStyles.bodyMediumBlack900_1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16.v),
                _buildTf84(context),
                SizedBox(height: 8.v),
                _buildTf85(context),
                SizedBox(height: 8.v),
                _buildTf86(context),
                SizedBox(height: 8.v),
                _buildTf87(context),
                SizedBox(height: 8.v),
                _buildTf88(context),
                SizedBox(height: 80.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 16.h,
                      right: 82.h,
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
                            "lbl_192".tr,
                            style: CustomTextStyles.bodySmall11,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 8.h,
                            bottom: 4.v,
                          ),
                          child: Text(
                            "msg168".tr,
                            style: CustomTextStyles.bodyMediumBlack900_1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16.v),
                _buildTf89(context),
                SizedBox(height: 8.v),
                _buildTf90(context),
                SizedBox(height: 8.v),
                _buildTf91(context),
                SizedBox(height: 8.v),
                _buildTf92(context),
                SizedBox(height: 8.v),
                _buildTf93(context),
                SizedBox(height: 80.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Row(
                      children: [
                        Container(
                          width: 30.h,
                          padding: EdgeInsets.symmetric(
                            horizontal: 8.h,
                            vertical: 3.v,
                          ),
                          decoration: AppDecoration.fillErrorContainer.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder12,
                          ),
                          child: Text(
                            "lbl_204".tr,
                            style: CustomTextStyles.bodySmall11,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 8.h,
                            bottom: 4.v,
                          ),
                          child: Text(
                            "lbl298".tr,
                            style: CustomTextStyles.bodyMediumBlack900_1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16.v),
                _buildTf94(context),
                SizedBox(height: 8.v),
                _buildTf95(context),
                SizedBox(height: 8.v),
                _buildTf96(context),
                SizedBox(height: 8.v),
                _buildTf97(context),
                SizedBox(height: 8.v),
                _buildTf98(context),
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
                      _buildWidget7(context),
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
                          Container(
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            decoration: BoxDecoration(
                              color: theme.colorScheme.secondaryContainer,
                            ),
                          ),
                          Container(
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(left: 16.h),
                            decoration: BoxDecoration(
                              color: theme.colorScheme.secondaryContainer,
                            ),
                          ),
                          Container(
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(left: 16.h),
                            decoration: BoxDecoration(
                              color: theme.colorScheme.secondaryContainer,
                            ),
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
  Widget _buildWidget2(BuildContext context) {
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
                  "lbl_204".tr,
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
  Widget _buildSearch(BuildContext context) {
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
            margin: EdgeInsets.only(bottom: 56.v),
          ),
          Expanded(
            child: Container(
              width: 299.h,
              margin: EdgeInsets.only(
                left: 8.h,
                right: 5.h,
              ),
              child: Text(
                "msg158".tr,
                maxLines: 4,
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
  Widget _buildTf(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl285".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf1(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl286".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf2(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl287".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf3(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl288".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf4(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl289".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf5(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl285".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf6(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl286".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf7(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl288".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf8(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl289".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf9(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl285".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf10(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl286".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf11(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl287".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf12(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl288".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf13(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl289".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf14(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl285".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf15(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl286".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf16(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl287".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf17(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl288".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf18(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl289".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf19(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl285".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf20(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl286".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf21(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl287".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf22(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl288".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf23(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl289".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf24(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl285".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf25(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl286".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf26(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl287".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf27(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl288".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf28(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl289".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf29(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl285".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf30(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl286".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf31(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl287".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf32(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl288".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf33(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl289".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf34(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl285".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf35(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl286".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf36(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl287".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf37(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl288".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf38(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl289".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf39(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl285".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf40(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl286".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf41(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl287".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf42(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl288".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf43(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl289".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf44(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl285".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf45(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl286".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf46(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl287".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf47(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl288".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf48(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl289".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf49(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl285".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf50(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl286".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf51(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl287".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf52(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl288".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf53(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl289".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf54(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl285".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf55(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl286".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf56(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl287".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf57(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl288".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf58(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl289".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf59(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl285".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf60(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl286".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf61(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl287".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf62(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl288".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf63(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl289".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf64(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl285".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf65(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl286".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf66(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl287".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf67(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl288".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf68(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl289".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf69(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl285".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf70(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl286".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf71(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl287".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf72(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl288".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf73(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl289".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf74(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl285".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf75(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl286".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf76(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl287".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf77(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl288".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf78(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl289".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf79(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl285".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf80(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl286".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf81(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl287".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf82(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl288".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf83(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl289".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf84(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl285".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf85(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl286".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf86(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl287".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf87(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl288".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf88(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl289".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf89(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl285".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf90(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl286".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf91(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl287".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf92(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl288".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf93(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl289".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf94(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl285".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf95(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl286".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf96(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl287".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf97(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl288".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildTf98(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl289".tr,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
    );
  }

  /// Section Widget
  Widget _buildWidget7(BuildContext context) {
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
    required String userImage,
  }) {
    return Row(
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
            userName,
            style: theme.textTheme.bodySmall!.copyWith(
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
            userImage,
            style: CustomTextStyles.bodyMediumBlack900_1.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildWidget1(
    BuildContext context, {
    required String userLabel,
    required String userMessage,
  }) {
    return Row(
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
            userLabel,
            style: theme.textTheme.bodySmall!.copyWith(
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
}
