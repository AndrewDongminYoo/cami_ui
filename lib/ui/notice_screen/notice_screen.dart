// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/localization/app_localization.dart';
import '/theme/app_decoration.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/ui/shared/cami_app_bar.dart';
import '/widgets/custom_image_view.dart';

class NoticeScreen extends StatelessWidget {
  const NoticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        appBar: const CamiAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 16.w),
                        child: Row(children: [
                          CustomImageView(
                              imagePath: Assets.svg.imgArrowLeft.path,
                              height: 28.h,
                              width: 20.w,
                              onTap: () {
                                onTapImgArrowLeft(context);
                              }),
                          Padding(
                              padding: EdgeInsets.only(left: 127.w),
                              child: Text('lbl10'.tr,
                                  style: CustomTextStyles.bodyLarge18))
                        ]))),
                SizedBox(height: 16.h),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: _buildFrame(context,
                        userName: 'lbl_22'.tr,
                        userMessage: 'msg_2021_03_04'.tr,
                        userDate: 'lbl_2021_03_04'.tr)),
                Divider(color: appTheme.gray200, indent: 16.w, endIndent: 16.w),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: _buildFrame(context,
                        userName: '1',
                        userMessage: 'msg9'.tr,
                        userDate: 'lbl_2020_03_17'.tr)),
                Divider(color: appTheme.gray200, indent: 16.w, endIndent: 16.w),
                SizedBox(height: 127.h),
                Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 60.h),
                    decoration: AppDecoration.fillOnErrorContainer,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                              imagePath: Assets.svg.imgTicket.path,
                              height: 30.h,
                              width: 92.w),
                          SizedBox(height: 37.h),
                          Row(children: [
                            Text('lbl10'.tr, style: theme.textTheme.bodySmall),
                            Padding(
                                padding: EdgeInsets.only(left: 19.w),
                                child: Text('lbl11'.tr,
                                    style: theme.textTheme.bodySmall)),
                            Padding(
                                padding: EdgeInsets.only(left: 21.w),
                                child: Text('lbl12'.tr,
                                    style: theme.textTheme.bodySmall))
                          ]),
                          SizedBox(height: 9.h),
                          _buildFrameRow1(context),
                          SizedBox(height: 38.h),
                          Padding(
                              padding: EdgeInsets.only(right: 63.w),
                              child: Row(children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('lbl_address'.tr,
                                          style: theme.textTheme.bodySmall),
                                      SizedBox(height: 9.h),
                                      Text('msg_34'.tr,
                                          style: theme.textTheme.bodySmall),
                                      Text('msg_2_b101'.tr,
                                          style: theme.textTheme.bodySmall)
                                    ]),
                                Padding(
                                    padding: EdgeInsets.only(left: 27.w),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('lbl_contact'.tr,
                                              style: theme.textTheme.bodySmall),
                                          SizedBox(height: 10.h),
                                          Text('msg_business_cami_kr'.tr,
                                              style: theme.textTheme.bodySmall),
                                          Text('lbl_02_861_6828'.tr,
                                              style: theme.textTheme.bodySmall)
                                        ]))
                              ])),
                          SizedBox(height: 45.h),
                          Text('lbl17'.tr, style: theme.textTheme.bodySmall),
                          Text('msg'.tr, style: theme.textTheme.bodySmall),
                          SizedBox(height: 15.h),
                          Text('msg_copyright_2023'.tr,
                              style: theme.textTheme.bodySmall),
                          SizedBox(height: 38.h),
                          _buildFrameColumn(context)
                        ]))
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameRow1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 9.w),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text('lbl13'.tr, style: CustomTextStyles.bodySmallGray500),
          Text('lbl14'.tr, style: CustomTextStyles.bodySmallGray500),
          Text('lbl15'.tr, style: CustomTextStyles.bodySmallGray500),
          Text('lbl16'.tr, style: CustomTextStyles.bodySmallGray500)
        ]));
  }

  /// Section Widget
  Widget _buildFrameColumn(BuildContext context) {
    return Row(children: [
      CustomImageView(
          imagePath: Assets.images.imgImage.path, height: 24.r, width: 24.r),
      CustomImageView(
          imagePath: Assets.images.imgImage.path,
          height: 24.r,
          width: 24.r,
          margin: EdgeInsets.only(left: 16.w)),
      CustomImageView(
          imagePath: Assets.images.imgImage.path,
          height: 24.r,
          width: 24.r,
          margin: EdgeInsets.only(left: 16.w))
    ]);
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String userName,
    required String userMessage,
    required String userDate,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 1.w, vertical: 15.h),
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 9.w, bottom: 3.h),
                  child: Text(userName,
                      style: CustomTextStyles.bodySmallBlack900
                          .copyWith(color: appTheme.black900))),
              Padding(
                  padding: EdgeInsets.only(left: 17.w, bottom: 3.h),
                  child: Text(userMessage,
                      style: CustomTextStyles.bodySmallBlack900
                          .copyWith(color: appTheme.black900))),
              const Spacer(),
              Padding(
                  padding: EdgeInsets.only(top: 2.h, bottom: 3.h),
                  child: Text(userDate,
                      style: CustomTextStyles.bodySmallGray50011
                          .copyWith(color: appTheme.gray500)))
            ]));
  }

  /// Navigates back to the previous screen.
  void onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
