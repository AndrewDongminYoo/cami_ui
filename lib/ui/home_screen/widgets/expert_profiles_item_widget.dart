// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/localization/app_localization.dart';
import '/theme/app_decoration.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/widgets/custom_image_view.dart';

class ExpertProfilesItemWidget extends StatelessWidget {
  const ExpertProfilesItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: IntrinsicWidth(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.zero,
              color: theme.colorScheme.onPrimaryContainer,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.circleBorder8),
              child: Container(
                height: 180.h,
                width: 337.w,
                decoration: AppDecoration.outlineBlueGrayB
                    .copyWith(borderRadius: BorderRadiusStyle.circleBorder8),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 16.w,
                          top: 13.h,
                        ),
                        child: Text(
                          'lbl64'.tr,
                          style: CustomTextStyles.bodySmallGreen300,
                        ),
                      ),
                    ),
                    Align(
                      child: SizedBox(
                        height: 180.h,
                        width: 321.w,
                        child: Stack(
                          alignment: Alignment.centerRight,
                          children: [
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 16.h),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'lbl_n'.tr,
                                      style:
                                          CustomTextStyles.bodySmallGray90002_2,
                                    ),
                                    Text(
                                      'msg23'.tr,
                                      style:
                                          CustomTextStyles.bodySmallGray90002_2,
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 1.h),
                                            child: Text(
                                              'msg_ebs'.tr,
                                              style: CustomTextStyles
                                                  .bodySmallGray90002_2,
                                            ),
                                          ),
                                          Text(
                                            'lbl78'.tr,
                                            style: CustomTextStyles
                                                .bodySmallGray90002_2,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            CustomImageView(
                              imagePath: Assets.images.imgImage180x168.path,
                              height: 180.h,
                              width: 168.w,
                              alignment: Alignment.centerRight,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.only(top: 39.h),
                                child: Text(
                                  'lbl65'.tr,
                                  style: CustomTextStyles.bodyLargeGray90002,
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
            const Spacer(flex: 60),
            Container(
              margin: EdgeInsets.only(left: 20.w),
              padding: EdgeInsets.symmetric(vertical: 15.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 16.w),
                    child: Row(
                      children: [
                        Text(
                          'lbl66'.tr,
                          style: CustomTextStyles.bodySmallGreen300,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 255.w),
                          child: Text(
                            'lbl68'.tr,
                            style: CustomTextStyles.bodySmallGreen300,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Padding(
                    padding: EdgeInsets.only(left: 16.w),
                    child: Row(
                      children: [
                        Text(
                          'lbl67'.tr,
                          style: CustomTextStyles.bodyLargeGray90002,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 971.w),
                          child: Text(
                            'lbl77'.tr,
                            style: CustomTextStyles.bodyLargeGray90002,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8.h),
                ],
              ),
            ),
            SizedBox(
              height: 180.h,
              width: 337.w,
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 20.w),
                decoration: AppDecoration.outlineBlueGrayB
                    .copyWith(borderRadius: BorderRadiusStyle.circleBorder8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 180.h,
                      width: 337.w,
                      child: Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          Align(
                            child: Container(
                              height: 180.h,
                              width: 337.w,
                              decoration: BoxDecoration(
                                color: theme.colorScheme.onPrimaryContainer,
                                borderRadius: BorderRadius.circular(10.w),
                                boxShadow: [
                                  BoxShadow(
                                    color: appTheme.blueGray1006b,
                                    spreadRadius: 2.w,
                                    blurRadius: 2.w,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: Assets.images.imgImage20.path,
                            height: 180.h,
                            width: 168.w,
                            alignment: Alignment.centerRight,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 180.h,
                      width: 337.w,
                      margin: EdgeInsets.only(left: 20.w),
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Align(
                            child: Container(
                              height: 180.h,
                              width: 337.w,
                              decoration: BoxDecoration(
                                color: theme.colorScheme.onPrimaryContainer,
                                borderRadius: BorderRadius.circular(10.w),
                                boxShadow: [
                                  BoxShadow(
                                    color: appTheme.blueGray1006b,
                                    spreadRadius: 2.w,
                                    blurRadius: 2.w,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 16.w,
                                bottom: 15.h,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'lbl69'.tr,
                                    style: CustomTextStyles.bodyLargeGray90002,
                                  ),
                                  SizedBox(height: 63.h),
                                  Text(
                                    'lbl70'.tr,
                                    style:
                                        CustomTextStyles.bodySmallGray90002_2,
                                  ),
                                  Text(
                                    'lbl71'.tr,
                                    style:
                                        CustomTextStyles.bodySmallGray90002_2,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: Assets.images.imgImage21.path,
                            height: 180.h,
                            width: 168.w,
                            alignment: Alignment.centerRight,
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      height: 180.h,
                      width: 321.w,
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          CustomImageView(
                            imagePath: Assets.images.imgImage22.path,
                            height: 180.h,
                            width: 168.w,
                            alignment: Alignment.centerRight,
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.only(top: 15.h),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                    child: Text(
                                      'lbl72'.tr,
                                      style: CustomTextStyles.bodySmallGreen300,
                                    ),
                                  ),
                                  SizedBox(height: 8.h),
                                  Text(
                                    'lbl73'.tr,
                                    style: CustomTextStyles.bodyLargeGray90002,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 15.h),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'lbl74'.tr,
                                    style:
                                        CustomTextStyles.bodySmallGray90002_2,
                                  ),
                                  Text(
                                    'lbl75'.tr,
                                    style:
                                        CustomTextStyles.bodySmallGray90002_2,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 180.h,
                      width: 337.w,
                      margin: EdgeInsets.only(left: 20.w),
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          Align(
                            child: Container(
                              height: 180.h,
                              width: 337.w,
                              decoration: BoxDecoration(
                                color: theme.colorScheme.onPrimaryContainer,
                                borderRadius: BorderRadius.circular(10.w),
                                boxShadow: [
                                  BoxShadow(
                                    color: appTheme.blueGray1006b,
                                    spreadRadius: 2.w,
                                    blurRadius: 2.w,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 16.w,
                                top: 15.h,
                              ),
                              child: Text(
                                'lbl76'.tr,
                                style: CustomTextStyles.bodySmallGreen300,
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: Assets.images.imgImage23.path,
                            height: 180.h,
                            width: 168.w,
                            alignment: Alignment.centerRight,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 180.h,
                      width: 337.w,
                      margin: EdgeInsets.only(left: 20.w),
                      child: Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          Align(
                            child: Container(
                              height: 180.h,
                              width: 337.w,
                              decoration: BoxDecoration(
                                color: theme.colorScheme.onPrimaryContainer,
                                borderRadius: BorderRadius.circular(10.w),
                                boxShadow: [
                                  BoxShadow(
                                    color: appTheme.blueGray1006b,
                                    spreadRadius: 2.w,
                                    blurRadius: 2.w,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: Assets.images.imgImage24.path,
                            height: 180.h,
                            width: 168.w,
                            alignment: Alignment.centerRight,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 16.w),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'lbl79'.tr,
                                    style: CustomTextStyles.bodySmallGreen300,
                                  ),
                                  SizedBox(height: 8.h),
                                  Text(
                                    'lbl80'.tr,
                                    style: CustomTextStyles.bodyLargeGray90002,
                                  ),
                                  SizedBox(height: 63.h),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 121.w,
                                        margin: EdgeInsets.only(bottom: 19.h),
                                        child: Text(
                                          'msg_kpa_ctp_ccpdt_ka'.tr,
                                          overflow: TextOverflow.ellipsis,
                                          style: CustomTextStyles
                                              .bodySmallGray90002
                                              .copyWith(height: 1.77),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 236.w),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'lbl_12'.tr,
                                              style: CustomTextStyles
                                                  .bodySmallGray90002_2,
                                            ),
                                            Text(
                                              'msg24'.tr,
                                              style: CustomTextStyles
                                                  .bodySmallGray90002_2,
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(flex: 5),
            Container(
              height: 39.h,
              width: 131.w,
              margin: EdgeInsets.only(
                top: 126.h,
                bottom: 15.h,
              ),
            ),
            const Spacer(flex: 33),
            SizedBox(
              height: 180.h,
              width: 337.w,
            ),
          ],
        ),
      ),
    );
  }
}
