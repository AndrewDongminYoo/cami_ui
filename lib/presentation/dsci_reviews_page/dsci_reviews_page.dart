import 'package:cami_lab/core/app_export.dart';
import 'package:cami_lab/widgets/custom_icon_button.dart';
import 'package:cami_lab/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class DsciReviewsPage extends StatefulWidget {
  const DsciReviewsPage({Key? key})
      : super(
          key: key,
        );

  @override
  DsciReviewsPageState createState() => DsciReviewsPageState();
}

class DsciReviewsPageState extends State<DsciReviewsPage>
    with AutomaticKeepAliveClientMixin<DsciReviewsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: _buildSection6(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildSection6(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 24.v),
          Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 24.h,
                  vertical: 10.v,
                ),
                decoration: AppDecoration.fillGray50.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder12,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 22.h,
                        bottom: 30.v,
                      ),
                      child: Column(
                        children: [
                          Text(
                            "lbl_4_92".tr,
                            style: CustomTextStyles.displaySmallBlack900,
                          ),
                          SizedBox(height: 15.v),
                          CustomRatingBar(
                            initialRating: 0,
                            itemSize: 16,
                          ),
                          SizedBox(height: 5.v),
                          Text(
                            "lbl_916".tr,
                            style: CustomTextStyles.bodySmallGray500_1,
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    SizedBox(
                      height: 138.v,
                      child: VerticalDivider(
                        width: 1.h,
                        thickness: 1.v,
                        color: theme.colorScheme.onError,
                        indent: 13.h,
                        endIndent: 13.h,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 23.h,
                        top: 10.v,
                        bottom: 13.v,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "lbl_52".tr,
                                style: CustomTextStyles.bodySmallGray500_1,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 9.h,
                                  top: 6.v,
                                  bottom: 3.v,
                                ),
                                child: Container(
                                  height: 8.v,
                                  width: 106.h,
                                  decoration: BoxDecoration(
                                    color: theme.colorScheme.onPrimaryContainer,
                                    borderRadius: BorderRadius.circular(
                                      4.h,
                                    ),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                      4.h,
                                    ),
                                    child: LinearProgressIndicator(
                                      value: 0.94,
                                      backgroundColor:
                                          theme.colorScheme.onPrimaryContainer,
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        appTheme.yellowA700,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 6.v),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "lbl_43".tr,
                                style: CustomTextStyles.bodySmallGray500_1,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 9.h,
                                  top: 6.v,
                                  bottom: 3.v,
                                ),
                                child: Container(
                                  height: 8.v,
                                  width: 106.h,
                                  decoration: BoxDecoration(
                                    color: theme.colorScheme.onPrimaryContainer,
                                    borderRadius: BorderRadius.circular(
                                      4.h,
                                    ),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                      4.h,
                                    ),
                                    child: LinearProgressIndicator(
                                      value: 0.04,
                                      backgroundColor:
                                          theme.colorScheme.onPrimaryContainer,
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        appTheme.yellowA700,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 6.v),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "lbl_32".tr,
                                style: CustomTextStyles.bodySmallGray500,
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  left: 11.h,
                                  top: 5.v,
                                  bottom: 3.v,
                                ),
                                decoration: AppDecoration.fillOnPrimaryContainer
                                    .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder2,
                                ),
                                child: Container(
                                  height: 8.v,
                                  width: 1.h,
                                  decoration: BoxDecoration(
                                    color: appTheme.yellowA700,
                                    borderRadius: BorderRadius.circular(
                                      1.h,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 6.v),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "lbl_24".tr,
                                style: CustomTextStyles.bodySmallGray500_1,
                              ),
                              Container(
                                height: 8.v,
                                width: 106.h,
                                margin: EdgeInsets.only(
                                  left: 9.h,
                                  top: 6.v,
                                  bottom: 3.v,
                                ),
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.onPrimaryContainer,
                                  borderRadius: BorderRadius.circular(
                                    4.h,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 6.v),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "lbl_14".tr,
                                style: CustomTextStyles.bodySmallGray500_1,
                              ),
                              Container(
                                height: 8.v,
                                width: 109.h,
                                margin: EdgeInsets.only(
                                  left: 9.h,
                                  top: 6.v,
                                  bottom: 3.v,
                                ),
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.onPrimaryContainer,
                                  borderRadius: BorderRadius.circular(
                                    4.h,
                                  ),
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
              SizedBox(height: 31.v),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 16.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 1.v),
                        child: Text(
                          "lbl216".tr,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.bodySmallOnErrorContainer,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 9.h),
                        child: SizedBox(
                          height: 16.v,
                          child: VerticalDivider(
                            width: 1.h,
                            thickness: 1.v,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 7.h,
                          bottom: 1.v,
                        ),
                        child: Text(
                          "lbl217".tr,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.bodySmallGray500_1,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: SizedBox(
                          height: 16.v,
                          child: VerticalDivider(
                            width: 1.h,
                            thickness: 1.v,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 7.h,
                          bottom: 1.v,
                        ),
                        child: Text(
                          "lbl218".tr,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.bodySmallGray500_1,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 9.v),
              Divider(
                color: theme.colorScheme.onError,
                indent: 16.h,
                endIndent: 16.h,
              ),
              SizedBox(height: 23.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: _buildWidget(
                  context,
                  widget: "lbl219".tr,
                  iMAGE: ImageConstant.imgImage27,
                  date: "lbl_2023_11_14".tr,
                  widget1: "msg86".tr,
                  cAMI: "lbl_cami".tr,
                  widget2: "msg87".tr,
                  widget3: "msg_52".tr,
                  widget4: "lbl220".tr,
                ),
              ),
              SizedBox(height: 25.v),
              Divider(
                indent: 16.h,
                endIndent: 16.h,
              ),
              SizedBox(height: 23.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 166.v),
                      child: _buildWidget1(context),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 14.h),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 2.h),
                            child: _buildBs(
                              context,
                              userName: "lbl221".tr,
                              userImage5: ImageConstant.imgImage12x12,
                            ),
                          ),
                          SizedBox(height: 4.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: Text(
                                "lbl_2023_11_12".tr,
                                style: CustomTextStyles
                                    .bodySmallNanumSquareNeoGray500_1,
                              ),
                            ),
                          ),
                          SizedBox(height: 15.v),
                          Container(
                            width: 298.h,
                            margin: EdgeInsets.only(
                              left: 2.h,
                              right: 3.h,
                            ),
                            child: Text(
                              "msg_92".tr,
                              maxLines: null,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles
                                  .bodySmallNanumSquareNeoBlack900_1
                                  .copyWith(
                                height: 1.67,
                              ),
                            ),
                          ),
                          SizedBox(height: 29.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "lbl_cami".tr,
                              style: CustomTextStyles
                                  .bodySmallNanumSquareNeoBlack900_1,
                            ),
                          ),
                          SizedBox(height: 8.v),
                          Container(
                            padding: EdgeInsets.all(8.h),
                            decoration: AppDecoration.fillGray50.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder12,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "msg88".tr,
                                  style: CustomTextStyles
                                      .bodySmallNanumSquareNeoBlack900_1,
                                ),
                                SizedBox(height: 16.v),
                                Text(
                                  "msg89".tr,
                                  style: CustomTextStyles
                                      .bodySmallNanumSquareNeoBlack900,
                                ),
                                Text(
                                  "msg90".tr,
                                  style: CustomTextStyles
                                      .bodySmallNanumSquareNeoBlack900_1,
                                ),
                                SizedBox(height: 1.v),
                                Container(
                                  width: 276.h,
                                  margin: EdgeInsets.only(right: 11.h),
                                  child: Text(
                                    "msg91".tr,
                                    maxLines: null,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles
                                        .bodySmallNanumSquareNeoBlack900_1
                                        .copyWith(
                                      height: 1.33,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 16.v),
                                SizedBox(
                                  width: 285.h,
                                  child: Text(
                                    "msg92".tr,
                                    maxLines: null,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles
                                        .bodySmallNanumSquareNeoBlack900_1
                                        .copyWith(
                                      height: 1.33,
                                    ),
                                  ),
                                ),
                                Text(
                                  "lbl222".tr,
                                  style: CustomTextStyles
                                      .bodySmallNanumSquareNeoBlack900,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25.v),
              Divider(
                indent: 16.h,
                endIndent: 16.h,
              ),
              SizedBox(height: 23.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: _buildWidget(
                  context,
                  widget: "lbl223".tr,
                  iMAGE: ImageConstant.imgImage12x12,
                  date: "lbl_2023_11_09".tr,
                  widget1: "msg93".tr,
                  cAMI: "lbl_cami".tr,
                  widget2: "msg94".tr,
                  widget3: "msg95".tr,
                  widget4: "lbl224".tr,
                ),
              ),
              SizedBox(height: 25.v),
              Divider(
                indent: 16.h,
                endIndent: 16.h,
              ),
              SizedBox(height: 23.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 86.v),
                      child: _buildWidget1(context),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 14.h),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 2.h),
                            child: _buildBs(
                              context,
                              userName: "lbl_bs5525".tr,
                              userImage5: ImageConstant.imgImage12x12,
                            ),
                          ),
                          SizedBox(height: 4.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: Text(
                                "lbl_2023_11_08".tr,
                                style: CustomTextStyles
                                    .bodySmallNanumSquareNeoGray500,
                              ),
                            ),
                          ),
                          SizedBox(height: 15.v),
                          Container(
                            width: 296.h,
                            margin: EdgeInsets.only(
                              left: 2.h,
                              right: 5.h,
                            ),
                            child: Text(
                              "msg96".tr,
                              maxLines: null,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles
                                  .bodySmallNanumSquareNeoBlack900_1
                                  .copyWith(
                                height: 1.67,
                              ),
                            ),
                          ),
                          Container(
                            width: 299.h,
                            margin: EdgeInsets.only(left: 2.h),
                            child: Text(
                              "msg97".tr,
                              maxLines: null,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles
                                  .bodySmallNanumSquareNeoBlack9008
                                  .copyWith(
                                height: 2.50,
                              ),
                            ),
                          ),
                          SizedBox(height: 29.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "lbl_cami".tr,
                              style: CustomTextStyles
                                  .bodySmallNanumSquareNeoBlack900_1,
                            ),
                          ),
                          SizedBox(height: 8.v),
                          _buildWidget4(
                            context,
                            userMessage1: "msg98".tr,
                            userMessage2: "msg99".tr,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25.v),
              Divider(
                indent: 16.h,
                endIndent: 16.h,
              ),
              SizedBox(height: 23.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 134.v),
                      child: _buildWidget1(context),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 14.h),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 2.h),
                            child: _buildBs(
                              context,
                              userName: "lbl225".tr,
                              userImage5: ImageConstant.imgImage12x12,
                            ),
                          ),
                          SizedBox(height: 4.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: Text(
                                "lbl_2023_11_07".tr,
                                style: CustomTextStyles
                                    .bodySmallNanumSquareNeoGray500,
                              ),
                            ),
                          ),
                          SizedBox(height: 15.v),
                          Container(
                            width: 293.h,
                            margin: EdgeInsets.only(
                              left: 2.h,
                              right: 8.h,
                            ),
                            child: Text(
                              "msg100".tr,
                              maxLines: null,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles
                                  .bodySmallNanumSquareNeoBlack9008
                                  .copyWith(
                                height: 2.50,
                              ),
                            ),
                          ),
                          SizedBox(height: 29.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "lbl_cami".tr,
                              style: CustomTextStyles
                                  .bodySmallNanumSquareNeoBlack900_1,
                            ),
                          ),
                          SizedBox(height: 8.v),
                          Container(
                            width: 303.h,
                            padding: EdgeInsets.all(8.h),
                            decoration: AppDecoration.fillGray50.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder12,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "lbl226".tr,
                                  style: CustomTextStyles
                                      .bodySmallNanumSquareNeoBlack900,
                                ),
                                SizedBox(height: 1.v),
                                Container(
                                  width: 277.h,
                                  margin: EdgeInsets.only(right: 10.h),
                                  child: Text(
                                    "msg101".tr,
                                    maxLines: null,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles
                                        .bodySmallNanumSquareNeoBlack900_1
                                        .copyWith(
                                      height: 1.33,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 15.v),
                                Text(
                                  "msg102".tr,
                                  style: CustomTextStyles
                                      .bodySmallNanumSquareNeoBlack900_1,
                                ),
                                Text(
                                  "msg103".tr,
                                  style: CustomTextStyles
                                      .bodySmallNanumSquareNeoBlack900,
                                ),
                                SizedBox(height: 16.v),
                                Text(
                                  "lbl224".tr,
                                  style: CustomTextStyles
                                      .bodySmallNanumSquareNeoBlack900_1,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25.v),
              Divider(
                indent: 16.h,
                endIndent: 16.h,
              ),
              SizedBox(height: 23.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 38.v),
                      child: _buildWidget2(context),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Column(
                        children: [
                          _buildWidget3(
                            context,
                            userName: "lbl227".tr,
                          ),
                          SizedBox(height: 4.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "lbl_2023_11_07".tr,
                              style: CustomTextStyles
                                  .bodySmallNanumSquareNeoGray500,
                            ),
                          ),
                          SizedBox(height: 12.v),
                          Text(
                            "msg104".tr,
                            style: CustomTextStyles
                                .bodySmallNanumSquareNeoBlack900_1,
                          ),
                          SizedBox(height: 32.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "lbl_cami".tr,
                              style: CustomTextStyles
                                  .bodySmallNanumSquareNeoBlack900_1,
                            ),
                          ),
                          SizedBox(height: 8.v),
                          _buildWidget4(
                            context,
                            userMessage1: "msg105".tr,
                            userMessage2: "msg106".tr,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25.v),
              Divider(
                indent: 16.h,
                endIndent: 16.h,
              ),
              SizedBox(height: 23.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 54.v),
                      child: _buildWidget2(context),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildWidget3(
                            context,
                            userName: "lbl228".tr,
                          ),
                          SizedBox(height: 4.v),
                          Text(
                            "lbl_2023_11_03".tr,
                            style: CustomTextStyles
                                .bodySmallNanumSquareNeoGray500_1,
                          ),
                          SizedBox(height: 12.v),
                          SizedBox(
                            width: 182.h,
                            child: Text(
                              "msg107".tr,
                              maxLines: null,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles
                                  .bodySmallNanumSquareNeoBlack900
                                  .copyWith(
                                height: 1.82,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 131.h,
                            child: Text(
                              "lbl229".tr,
                              maxLines: null,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles
                                  .bodySmallNanumSquareNeoBlack900
                                  .copyWith(
                                height: 1.82,
                              ),
                            ),
                          ),
                          Text(
                            "msg108".tr,
                            style: CustomTextStyles
                                .bodySmallNanumSquareNeoBlack900_1,
                          ),
                          SizedBox(
                            width: 168.h,
                            child: Text(
                              "msg109".tr,
                              maxLines: null,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles
                                  .bodySmallNanumSquareNeoBlack900
                                  .copyWith(
                                height: 1.82,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 104.h,
                            child: Text(
                              "lbl230".tr,
                              maxLines: null,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles
                                  .bodySmallNanumSquareNeoBlack900
                                  .copyWith(
                                height: 1.82,
                              ),
                            ),
                          ),
                          Container(
                            width: 296.h,
                            margin: EdgeInsets.only(right: 7.h),
                            child: Text(
                              "msg110".tr,
                              maxLines: null,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles
                                  .bodySmallNanumSquareNeoBlack900
                                  .copyWith(
                                height: 1.82,
                              ),
                            ),
                          ),
                          SizedBox(height: 32.v),
                          Text(
                            "lbl_cami".tr,
                            style: CustomTextStyles
                                .bodySmallNanumSquareNeoBlack900_1,
                          ),
                          SizedBox(height: 8.v),
                          _buildWidget5(
                            context,
                            userMsg1: "msg111".tr,
                            userLbl: "lbl231".tr,
                            userMsg2: "msg112".tr,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25.v),
              Divider(
                indent: 16.h,
                endIndent: 16.h,
              ),
              SizedBox(height: 23.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 86.v),
                      child: _buildWidget2(context),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Column(
                        children: [
                          _buildWidget3(
                            context,
                            userName: "lbl232".tr,
                          ),
                          SizedBox(height: 4.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "lbl_2023_11_02".tr,
                              style: CustomTextStyles
                                  .bodySmallNanumSquareNeoGray500_1,
                            ),
                          ),
                          SizedBox(height: 15.v),
                          Container(
                            width: 298.h,
                            margin: EdgeInsets.only(right: 5.h),
                            child: Text(
                              "msg_bti".tr,
                              maxLines: null,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles
                                  .bodySmallNanumSquareNeoBlack9009
                                  .copyWith(
                                height: 2.22,
                              ),
                            ),
                          ),
                          SizedBox(height: 49.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "lbl_cami".tr,
                              style: CustomTextStyles
                                  .bodySmallNanumSquareNeoBlack900_1,
                            ),
                          ),
                          SizedBox(height: 8.v),
                          _buildWidget6(
                            context,
                            msg122: "msg113".tr,
                            msg123: "msg114".tr,
                            msg124: "msg115".tr,
                            msg125: "lbl233".tr,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25.v),
              Divider(
                indent: 16.h,
                endIndent: 16.h,
              ),
              SizedBox(height: 23.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 102.v),
                      child: _buildWidget1(context),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 14.h),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 2.h),
                            child: _buildBs(
                              context,
                              userName: "lbl_j".tr,
                              userImage5: ImageConstant.imgImage12x12,
                            ),
                          ),
                          SizedBox(height: 4.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: Text(
                                "lbl_2023_10_04".tr,
                                style: CustomTextStyles
                                    .bodySmallNanumSquareNeoGray500,
                              ),
                            ),
                          ),
                          SizedBox(height: 15.v),
                          Container(
                            width: 296.h,
                            margin: EdgeInsets.only(
                              left: 2.h,
                              right: 5.h,
                            ),
                            child: Text(
                              "msg116".tr,
                              maxLines: null,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles
                                  .bodySmallNanumSquareNeoBlack900_1
                                  .copyWith(
                                height: 1.67,
                              ),
                            ),
                          ),
                          SizedBox(height: 29.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "lbl_cami".tr,
                              style: CustomTextStyles
                                  .bodySmallNanumSquareNeoBlack900_1,
                            ),
                          ),
                          SizedBox(height: 8.v),
                          _buildWidget5(
                            context,
                            userMsg1: "msg_cami2".tr,
                            userLbl: "msg117".tr,
                            userMsg2: "lbl224".tr,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25.v),
              Divider(
                indent: 16.h,
                endIndent: 16.h,
              ),
              SizedBox(height: 23.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 118.v),
                      child: _buildWidget1(context),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 14.h),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 2.h),
                            child: _buildBs(
                              context,
                              userName: "lbl234".tr,
                              userImage5: ImageConstant.imgImage27,
                            ),
                          ),
                          SizedBox(height: 4.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: Text(
                                "lbl_2023_10_02".tr,
                                style: CustomTextStyles
                                    .bodySmallNanumSquareNeoGray500_1,
                              ),
                            ),
                          ),
                          SizedBox(height: 15.v),
                          Container(
                            width: 301.h,
                            margin: EdgeInsets.only(left: 2.h),
                            child: Text(
                              "msg118".tr,
                              maxLines: null,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles
                                  .bodySmallNanumSquareNeoBlack900_1
                                  .copyWith(
                                height: 1.67,
                              ),
                            ),
                          ),
                          Container(
                            width: 299.h,
                            margin: EdgeInsets.only(left: 2.h),
                            child: Text(
                              "msg119".tr,
                              maxLines: null,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles
                                  .bodySmallNanumSquareNeoBlack900_1
                                  .copyWith(
                                height: 1.67,
                              ),
                            ),
                          ),
                          SizedBox(height: 20.v),
                          Container(
                            width: 296.h,
                            margin: EdgeInsets.only(
                              left: 2.h,
                              right: 5.h,
                            ),
                            child: Text(
                              "msg120".tr,
                              maxLines: null,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles
                                  .bodySmallNanumSquareNeoBlack900_1
                                  .copyWith(
                                height: 1.67,
                              ),
                            ),
                          ),
                          SizedBox(height: 20.v),
                          Container(
                            width: 299.h,
                            margin: EdgeInsets.only(left: 2.h),
                            child: Text(
                              "msg121".tr,
                              maxLines: null,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles
                                  .bodySmallNanumSquareNeoBlack900_1
                                  .copyWith(
                                height: 1.67,
                              ),
                            ),
                          ),
                          SizedBox(height: 29.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "lbl_cami".tr,
                              style: CustomTextStyles
                                  .bodySmallNanumSquareNeoBlack900_1,
                            ),
                          ),
                          SizedBox(height: 8.v),
                          _buildWidget6(
                            context,
                            msg122: "msg122".tr,
                            msg123: "msg123".tr,
                            msg124: "msg124".tr,
                            msg125: "msg125".tr,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25.v),
              Divider(
                indent: 16.h,
                endIndent: 16.h,
              ),
              SizedBox(height: 23.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: _buildWidget7(
                  context,
                  userName: "lbl235".tr,
                  userDate: "lbl_2023_09_18".tr,
                  userMessage: "msg126".tr,
                ),
              ),
              SizedBox(height: 22.v),
              Divider(
                indent: 16.h,
                endIndent: 16.h,
              ),
              SizedBox(height: 23.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: _buildWidget7(
                  context,
                  userName: "lbl236".tr,
                  userDate: "lbl_2023_09_16".tr,
                  userMessage: "msg127".tr,
                ),
              ),
              SizedBox(height: 22.v),
              Divider(
                indent: 16.h,
                endIndent: 16.h,
              ),
              SizedBox(height: 23.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 86.v),
                      child: _buildWidget1(context),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 14.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 2.h),
                            child: _buildBs(
                              context,
                              userName: "lbl_4_12".tr,
                              userImage5: ImageConstant.imgImage12x12,
                            ),
                          ),
                          SizedBox(height: 4.v),
                          Padding(
                            padding: EdgeInsets.only(left: 2.h),
                            child: Text(
                              "lbl_2023_09_16".tr,
                              style: CustomTextStyles
                                  .bodySmallNanumSquareNeoGray500_1,
                            ),
                          ),
                          SizedBox(height: 12.v),
                          Padding(
                            padding: EdgeInsets.only(left: 2.h),
                            child: Text(
                              "lbl237".tr,
                              style: CustomTextStyles
                                  .bodySmallNanumSquareNeoBlack900_1,
                            ),
                          ),
                          SizedBox(height: 3.v),
                          Container(
                            width: 296.h,
                            margin: EdgeInsets.only(
                              left: 2.h,
                              right: 5.h,
                            ),
                            child: Text(
                              "msg128".tr,
                              maxLines: null,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles
                                  .bodySmallNanumSquareNeoBlack9008
                                  .copyWith(
                                height: 2.50,
                              ),
                            ),
                          ),
                          SizedBox(height: 29.v),
                          Text(
                            "lbl_cami".tr,
                            style: CustomTextStyles
                                .bodySmallNanumSquareNeoBlack900_1,
                          ),
                          SizedBox(height: 8.v),
                          _buildWidget6(
                            context,
                            msg122: "msg129".tr,
                            msg123: "msg130".tr,
                            msg124: "msg131".tr,
                            msg125: "msg132".tr,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25.v),
              Divider(
                indent: 16.h,
                endIndent: 16.h,
              ),
              SizedBox(height: 23.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: _buildWidget7(
                  context,
                  userName: "lbl238".tr,
                  userDate: "lbl_2023_09_14".tr,
                  userMessage: "msg133".tr,
                ),
              ),
              SizedBox(height: 22.v),
              Divider(
                indent: 16.h,
                endIndent: 16.h,
              ),
              SizedBox(height: 23.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: _buildWidget8(
                  context,
                  userName: "lbl_kkam".tr,
                  date: "lbl_2023_09_14".tr,
                  message: "msg_mbti".tr,
                ),
              ),
              SizedBox(height: 22.v),
              Divider(
                indent: 16.h,
                endIndent: 16.h,
              ),
              SizedBox(height: 23.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: _buildWidget7(
                  context,
                  userName: "lbl239".tr,
                  userDate: "lbl_2023_09_13".tr,
                  userMessage: "msg134".tr,
                ),
              ),
              SizedBox(height: 25.v),
              Divider(
                indent: 16.h,
                endIndent: 16.h,
              ),
              SizedBox(height: 23.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImage37,
                      height: 44.adaptSize,
                      width: 44.adaptSize,
                      radius: BorderRadius.circular(
                        22.h,
                      ),
                      margin: EdgeInsets.only(bottom: 147.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Column(
                        children: [
                          _buildBs(
                            context,
                            userName: "lbl240".tr,
                            userImage5: ImageConstant.imgImage12x12,
                          ),
                          SizedBox(height: 4.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "lbl_2023_09_05".tr,
                              style: CustomTextStyles
                                  .bodySmallNanumSquareNeoGray500_1,
                            ),
                          ),
                          SizedBox(height: 15.v),
                          Container(
                            width: 296.h,
                            margin: EdgeInsets.only(right: 5.h),
                            child: Text(
                              "msg135".tr,
                              maxLines: null,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles
                                  .bodySmallNanumSquareNeoBlack9008
                                  .copyWith(
                                height: 2.50,
                              ),
                            ),
                          ),
                          Container(
                            width: 296.h,
                            margin: EdgeInsets.only(right: 5.h),
                            child: Text(
                              "msg136".tr,
                              maxLines: null,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles
                                  .bodySmallNanumSquareNeoBlack90010
                                  .copyWith(
                                height: 2.00,
                              ),
                            ),
                          ),
                          SizedBox(height: 20.v),
                          Container(
                            width: 293.h,
                            margin: EdgeInsets.only(right: 8.h),
                            child: Text(
                              "msg137".tr,
                              maxLines: null,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles
                                  .bodySmallNanumSquareNeoBlack9008
                                  .copyWith(
                                height: 2.50,
                              ),
                            ),
                          ),
                          SizedBox(height: 20.v),
                          Container(
                            width: 296.h,
                            margin: EdgeInsets.only(right: 5.h),
                            child: Text(
                              "msg138".tr,
                              maxLines: null,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles
                                  .bodySmallNanumSquareNeoBlack9008
                                  .copyWith(
                                height: 2.50,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 42.v),
              Divider(
                indent: 16.h,
                endIndent: 16.h,
              ),
              SizedBox(height: 23.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImage38,
                      height: 44.adaptSize,
                      width: 44.adaptSize,
                      radius: BorderRadius.circular(
                        22.h,
                      ),
                      margin: EdgeInsets.only(bottom: 104.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildBs(
                            context,
                            userName: "lbl241".tr,
                            userImage5: ImageConstant.imgImage12x12,
                          ),
                          SizedBox(height: 4.v),
                          Text(
                            "lbl_2023_08_31".tr,
                            style: CustomTextStyles
                                .bodySmallNanumSquareNeoGray500_1,
                          ),
                          SizedBox(height: 15.v),
                          Container(
                            width: 288.h,
                            margin: EdgeInsets.only(right: 13.h),
                            child: Text(
                              "msg139".tr,
                              maxLines: null,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles
                                  .bodySmallNanumSquareNeoBlack9009
                                  .copyWith(
                                height: 2.22,
                              ),
                            ),
                          ),
                          SizedBox(height: 20.v),
                          SizedBox(
                            width: 299.h,
                            child: Text(
                              "msg140".tr,
                              maxLines: null,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles
                                  .bodySmallNanumSquareNeoBlack9008
                                  .copyWith(
                                height: 2.50,
                              ),
                            ),
                          ),
                          SizedBox(height: 17.v),
                          SizedBox(
                            width: 122.h,
                            child: Text(
                              "lbl242".tr,
                              maxLines: null,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles
                                  .bodySmallNanumSquareNeoBlack900
                                  .copyWith(
                                height: 1.82,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 45.v),
              Divider(
                indent: 16.h,
                endIndent: 16.h,
              ),
              SizedBox(height: 23.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: _buildWidget8(
                  context,
                  userName: "lbl243".tr,
                  date: "lbl_2023_08_25".tr,
                  message: "msg141".tr,
                ),
              ),
              SizedBox(height: 25.v),
              Divider(
                indent: 16.h,
                endIndent: 16.h,
              ),
              SizedBox(height: 23.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: _buildWidget7(
                  context,
                  userName: "lbl244".tr,
                  userDate: "lbl_2023_08_18".tr,
                  userMessage: "msg142".tr,
                ),
              ),
              SizedBox(height: 22.v),
              Divider(
                indent: 16.h,
                endIndent: 16.h,
              ),
              SizedBox(height: 23.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 28.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.h,
                        vertical: 7.v,
                      ),
                      decoration: AppDecoration.fillYellow.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder8,
                      ),
                      child: Text(
                        "lbl_1".tr,
                        style: CustomTextStyles.bodySmallBlack900,
                      ),
                    ),
                    Container(
                      width: 31.h,
                      margin: EdgeInsets.only(left: 8.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.h,
                        vertical: 7.v,
                      ),
                      decoration: AppDecoration.fillGray.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder8,
                      ),
                      child: Text(
                        "lbl_22".tr,
                        style: CustomTextStyles.bodySmallBlack900,
                      ),
                    ),
                    Container(
                      width: 31.h,
                      margin: EdgeInsets.only(left: 7.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.h,
                        vertical: 7.v,
                      ),
                      decoration: AppDecoration.fillGray.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder8,
                      ),
                      child: Text(
                        "lbl_33".tr,
                        style: CustomTextStyles.bodySmallBlack900,
                      ),
                    ),
                    Container(
                      width: 32.adaptSize,
                      margin: EdgeInsets.only(left: 9.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.h,
                        vertical: 7.v,
                      ),
                      decoration: AppDecoration.fillGray.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder8,
                      ),
                      child: Text(
                        "lbl_44".tr,
                        style: CustomTextStyles.bodySmallBlack900,
                      ),
                    ),
                    Container(
                      width: 32.adaptSize,
                      margin: EdgeInsets.only(left: 7.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.h,
                        vertical: 7.v,
                      ),
                      decoration: AppDecoration.fillGray.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder8,
                      ),
                      child: Text(
                        "lbl_53".tr,
                        style: CustomTextStyles.bodySmallBlack900,
                      ),
                    ),
                    Container(
                      width: 32.adaptSize,
                      margin: EdgeInsets.only(left: 8.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.h,
                        vertical: 7.v,
                      ),
                      decoration: AppDecoration.fillGray.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder8,
                      ),
                      child: Text(
                        "lbl_62".tr,
                        style: CustomTextStyles.bodySmallBlack900,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 23.h,
                        top: 7.v,
                        bottom: 9.v,
                      ),
                      child: Text(
                        "lbl245".tr,
                        style: CustomTextStyles.bodySmallBlack900,
                      ),
                    ),
                    Container(
                      width: 39.h,
                      margin: EdgeInsets.only(left: 24.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.h,
                        vertical: 7.v,
                      ),
                      decoration: AppDecoration.fillGray.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder8,
                      ),
                      child: Text(
                        "lbl_462".tr,
                        style: CustomTextStyles.bodySmallBlack90011,
                      ),
                    ),
                    Container(
                      width: 37.h,
                      margin: EdgeInsets.only(left: 8.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.h,
                        vertical: 7.v,
                      ),
                      decoration: AppDecoration.fillGray.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder8,
                      ),
                      child: Text(
                        "lbl246".tr,
                        style: CustomTextStyles.bodySmallBlack900,
                      ),
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
                    Padding(
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
                    ),
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
    );
  }

  /// Common widget
  Widget _buildWidget(
    BuildContext context, {
    required String widget,
    required String iMAGE,
    required String date,
    required String widget1,
    required String cAMI,
    required String widget2,
    required String widget3,
    required String widget4,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 86.v),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage42x42,
                height: 42.adaptSize,
                width: 42.adaptSize,
                radius: BorderRadius.circular(
                  21.h,
                ),
              ),
              SizedBox(height: 50.v),
              CustomIconButton(
                height: 42.adaptSize,
                width: 42.adaptSize,
                padding: EdgeInsets.all(5.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgFrameGray90042x42,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    widget,
                    style: CustomTextStyles.bodySmallNanumSquareNeoBlack900
                        .copyWith(
                      color: appTheme.black900,
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage12x12,
                    height: 12.adaptSize,
                    width: 12.adaptSize,
                    margin: EdgeInsets.only(bottom: 4.v),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage12x12,
                    height: 12.adaptSize,
                    width: 12.adaptSize,
                    margin: EdgeInsets.only(
                      left: 2.h,
                      bottom: 4.v,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage12x12,
                    height: 12.adaptSize,
                    width: 12.adaptSize,
                    margin: EdgeInsets.only(
                      left: 2.h,
                      bottom: 4.v,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage12x12,
                    height: 12.adaptSize,
                    width: 12.adaptSize,
                    margin: EdgeInsets.only(
                      left: 2.h,
                      bottom: 4.v,
                    ),
                  ),
                  CustomImageView(
                    imagePath: iMAGE,
                    height: 12.adaptSize,
                    width: 12.adaptSize,
                    margin: EdgeInsets.only(
                      left: 2.h,
                      bottom: 4.v,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4.v),
              Text(
                date,
                style:
                    CustomTextStyles.bodySmallNanumSquareNeoGray500_1.copyWith(
                  color: appTheme.gray500,
                ),
              ),
              SizedBox(height: 12.v),
              Container(
                width: 279.h,
                margin: EdgeInsets.only(right: 24.h),
                child: Text(
                  widget1,
                  maxLines: null,
                  overflow: TextOverflow.ellipsis,
                  style:
                      CustomTextStyles.bodySmallNanumSquareNeoBlack900.copyWith(
                    color: appTheme.black900,
                    height: 1.82,
                  ),
                ),
              ),
              SizedBox(height: 32.v),
              Text(
                cAMI,
                style:
                    CustomTextStyles.bodySmallNanumSquareNeoBlack900_1.copyWith(
                  color: appTheme.black900,
                ),
              ),
              SizedBox(height: 8.v),
              Container(
                padding: EdgeInsets.all(8.h),
                decoration: AppDecoration.fillGray50.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder12,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget2,
                      style: CustomTextStyles.bodySmallNanumSquareNeoBlack900
                          .copyWith(
                        color: appTheme.black900,
                      ),
                    ),
                    SizedBox(height: 1.v),
                    Container(
                      width: 285.h,
                      margin: EdgeInsets.only(right: 2.h),
                      child: Text(
                        widget3,
                        maxLines: null,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles
                            .bodySmallNanumSquareNeoBlack900_1
                            .copyWith(
                          color: appTheme.black900,
                          height: 1.33,
                        ),
                      ),
                    ),
                    SizedBox(height: 15.v),
                    Text(
                      widget4,
                      style: CustomTextStyles.bodySmallNanumSquareNeoBlack900_1
                          .copyWith(
                        color: appTheme.black900,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildWidget1(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgImage28,
          height: 44.adaptSize,
          width: 44.adaptSize,
          radius: BorderRadius.circular(
            22.h,
          ),
          alignment: Alignment.center,
        ),
        SizedBox(height: 128.v),
        CustomIconButton(
          height: 42.adaptSize,
          width: 42.adaptSize,
          padding: EdgeInsets.all(5.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgFrameGray90042x42,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildBs(
    BuildContext context, {
    required String userName,
    required String userImage5,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          userName,
          style: CustomTextStyles.bodySmallNanumSquareNeoBlack900_1.copyWith(
            color: appTheme.black900,
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgImage12x12,
          height: 12.adaptSize,
          width: 12.adaptSize,
          margin: EdgeInsets.only(bottom: 4.v),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgImage12x12,
          height: 12.adaptSize,
          width: 12.adaptSize,
          margin: EdgeInsets.only(
            left: 2.h,
            bottom: 4.v,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgImage12x12,
          height: 12.adaptSize,
          width: 12.adaptSize,
          margin: EdgeInsets.only(
            left: 2.h,
            bottom: 4.v,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgImage12x12,
          height: 12.adaptSize,
          width: 12.adaptSize,
          margin: EdgeInsets.only(
            left: 2.h,
            bottom: 4.v,
          ),
        ),
        CustomImageView(
          imagePath: userImage5,
          height: 12.adaptSize,
          width: 12.adaptSize,
          margin: EdgeInsets.only(
            left: 2.h,
            bottom: 4.v,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildWidget2(BuildContext context) {
    return Column(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgImage42x42,
          height: 42.adaptSize,
          width: 42.adaptSize,
          radius: BorderRadius.circular(
            21.h,
          ),
        ),
        SizedBox(height: 50.v),
        CustomIconButton(
          height: 42.adaptSize,
          width: 42.adaptSize,
          padding: EdgeInsets.all(5.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgFrameGray90042x42,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildWidget3(
    BuildContext context, {
    required String userName,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          userName,
          style: CustomTextStyles.bodySmallNanumSquareNeoBlack900_1.copyWith(
            color: appTheme.black900,
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgImage12x12,
          height: 12.adaptSize,
          width: 12.adaptSize,
          margin: EdgeInsets.only(bottom: 4.v),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgImage12x12,
          height: 12.adaptSize,
          width: 12.adaptSize,
          margin: EdgeInsets.only(
            left: 2.h,
            bottom: 4.v,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgImage12x12,
          height: 12.adaptSize,
          width: 12.adaptSize,
          margin: EdgeInsets.only(
            left: 2.h,
            bottom: 4.v,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgImage12x12,
          height: 12.adaptSize,
          width: 12.adaptSize,
          margin: EdgeInsets.only(
            left: 2.h,
            bottom: 4.v,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgImage12x12,
          height: 12.adaptSize,
          width: 12.adaptSize,
          margin: EdgeInsets.only(
            left: 2.h,
            bottom: 4.v,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildWidget4(
    BuildContext context, {
    required String userMessage1,
    required String userMessage2,
  }) {
    return Container(
      width: 303.h,
      padding: EdgeInsets.all(8.h),
      decoration: AppDecoration.fillGray50.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            userMessage1,
            style: CustomTextStyles.bodySmallNanumSquareNeoBlack900.copyWith(
              color: appTheme.black900,
            ),
          ),
          Text(
            userMessage2,
            style: CustomTextStyles.bodySmallNanumSquareNeoBlack900.copyWith(
              color: appTheme.black900,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildWidget5(
    BuildContext context, {
    required String userMsg1,
    required String userLbl,
    required String userMsg2,
  }) {
    return Container(
      width: 303.h,
      padding: EdgeInsets.all(8.h),
      decoration: AppDecoration.fillGray50.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            userMsg1,
            style: CustomTextStyles.bodySmallNanumSquareNeoBlack900.copyWith(
              color: appTheme.black900,
            ),
          ),
          Text(
            userLbl,
            style: CustomTextStyles.bodySmallNanumSquareNeoBlack900_1.copyWith(
              color: appTheme.black900,
            ),
          ),
          Text(
            userMsg2,
            style: CustomTextStyles.bodySmallNanumSquareNeoBlack900.copyWith(
              color: appTheme.black900,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildWidget6(
    BuildContext context, {
    required String msg122,
    required String msg123,
    required String msg124,
    required String msg125,
  }) {
    return Container(
      width: 303.h,
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.fillGray50.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 1.v),
          Text(
            msg122,
            style: CustomTextStyles.bodySmallNanumSquareNeoBlack900_1.copyWith(
              color: appTheme.black900,
            ),
          ),
          Text(
            msg123,
            style: CustomTextStyles.bodySmallNanumSquareNeoBlack900_1.copyWith(
              color: appTheme.black900,
            ),
          ),
          SizedBox(height: 1.v),
          Container(
            width: 279.h,
            margin: EdgeInsets.only(right: 8.h),
            child: Text(
              msg124,
              maxLines: null,
              overflow: TextOverflow.ellipsis,
              style:
                  CustomTextStyles.bodySmallNanumSquareNeoBlack900_1.copyWith(
                color: appTheme.black900,
                height: 1.33,
              ),
            ),
          ),
          SizedBox(height: 16.v),
          Container(
            width: 277.h,
            margin: EdgeInsets.only(right: 10.h),
            child: Text(
              msg125,
              maxLines: null,
              overflow: TextOverflow.ellipsis,
              style:
                  CustomTextStyles.bodySmallNanumSquareNeoBlack900_1.copyWith(
                color: appTheme.black900,
                height: 1.33,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildWidget7(
    BuildContext context, {
    required String userName,
    required String userDate,
    required String userMessage,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgImage33,
          height: 44.adaptSize,
          width: 44.adaptSize,
          radius: BorderRadius.circular(
            22.h,
          ),
          margin: EdgeInsets.only(bottom: 67.v),
        ),
        Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    userName,
                    style: CustomTextStyles.bodySmallNanumSquareNeoBlack900
                        .copyWith(
                      color: appTheme.black900,
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage12x12,
                    height: 12.adaptSize,
                    width: 12.adaptSize,
                    margin: EdgeInsets.only(bottom: 4.v),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage12x12,
                    height: 12.adaptSize,
                    width: 12.adaptSize,
                    margin: EdgeInsets.only(
                      left: 2.h,
                      bottom: 4.v,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage12x12,
                    height: 12.adaptSize,
                    width: 12.adaptSize,
                    margin: EdgeInsets.only(
                      left: 2.h,
                      bottom: 4.v,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage12x12,
                    height: 12.adaptSize,
                    width: 12.adaptSize,
                    margin: EdgeInsets.only(
                      left: 2.h,
                      bottom: 4.v,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage12x12,
                    height: 12.adaptSize,
                    width: 12.adaptSize,
                    margin: EdgeInsets.only(
                      left: 2.h,
                      bottom: 4.v,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  userDate,
                  style: CustomTextStyles.bodySmallNanumSquareNeoGray500_1
                      .copyWith(
                    color: appTheme.gray500,
                  ),
                ),
              ),
              SizedBox(height: 15.v),
              SizedBox(
                width: 299.h,
                child: Text(
                  userMessage,
                  maxLines: null,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodySmallNanumSquareNeoBlack900_1
                      .copyWith(
                    color: appTheme.black900,
                    height: 1.67,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildWidget8(
    BuildContext context, {
    required String userName,
    required String date,
    required String message,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgImage42x42,
          height: 42.adaptSize,
          width: 42.adaptSize,
          radius: BorderRadius.circular(
            21.h,
          ),
          margin: EdgeInsets.only(bottom: 26.v),
        ),
        Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    userName,
                    style: CustomTextStyles.bodySmallNanumSquareNeoBlack900
                        .copyWith(
                      color: appTheme.black900,
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage12x12,
                    height: 12.adaptSize,
                    width: 12.adaptSize,
                    margin: EdgeInsets.only(bottom: 4.v),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage12x12,
                    height: 12.adaptSize,
                    width: 12.adaptSize,
                    margin: EdgeInsets.only(
                      left: 2.h,
                      bottom: 4.v,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage12x12,
                    height: 12.adaptSize,
                    width: 12.adaptSize,
                    margin: EdgeInsets.only(
                      left: 2.h,
                      bottom: 4.v,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage12x12,
                    height: 12.adaptSize,
                    width: 12.adaptSize,
                    margin: EdgeInsets.only(
                      left: 2.h,
                      bottom: 4.v,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage12x12,
                    height: 12.adaptSize,
                    width: 12.adaptSize,
                    margin: EdgeInsets.only(
                      left: 2.h,
                      bottom: 4.v,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4.v),
              Text(
                date,
                style: CustomTextStyles.bodySmallNanumSquareNeoGray500.copyWith(
                  color: appTheme.gray500,
                ),
              ),
              SizedBox(height: 12.v),
              SizedBox(
                width: 188.h,
                child: Text(
                  message,
                  maxLines: null,
                  overflow: TextOverflow.ellipsis,
                  style:
                      CustomTextStyles.bodySmallNanumSquareNeoBlack900.copyWith(
                    color: appTheme.black900,
                    height: 1.82,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
