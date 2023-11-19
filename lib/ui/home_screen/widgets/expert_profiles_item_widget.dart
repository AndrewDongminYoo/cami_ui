// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/gen/assets.gen.dart';
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
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.circleBorder8),
              child: Container(
                height: 180.h,
                width: 337.w,
                decoration: AppDecoration.outlineBlueGray
                    .copyWith(borderRadius: BorderRadiusStyle.circleBorder8),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.only(
                        left: 16.w,
                        top: 13.h,
                      ),
                      child: Text(
                        '고양이 행동 전문가'.tr(),
                        style: textTheme.bodySmall!
                            .colored(const Color(0xFF6FD574)),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 180.h,
                      width: 321.w,
                      child: Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          Container(
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.only(bottom: 16.h),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'N동물의료센터 노원점 원장'.tr(),
                                  style: textTheme.bodySmall!
                                      .colored(const Color(0xFF1F2020)),
                                ),
                                Text(
                                  '한국 고양이 수의사회 홍보 이사'.tr(),
                                  style: textTheme.bodySmall!
                                      .colored(const Color(0xFF1F2020)),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(bottom: 1.h),
                                        child: Text(
                                          'EBS ‘고양이를 부탁해’ 출연'.tr(),
                                          style: textTheme.bodySmall!
                                              .colored(const Color(0xFF1F2020)),
                                        ),
                                      ),
                                      Text(
                                        '제이클리커아카데미 대표'.tr(),
                                        style: textTheme.bodySmall!
                                            .colored(const Color(0xFF1F2020)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          CustomImageView(
                            imagePath: Assets.images.experts.kmc.path,
                            height: 180.h,
                            width: 168.w,
                            alignment: Alignment.centerRight,
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.only(top: 39.h),
                            child: Text(
                              '김명철 수의사'.tr(),
                              style: textTheme.bodyLarge!
                                  .colored(const Color(0xFF1F2020)),
                            ),
                          ),
                        ],
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
                          '강아지 행동 전문가'.tr(),
                          style: textTheme.bodySmall!
                              .colored(const Color(0xFF6FD574)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 255.w),
                          child: Text(
                            '동물행동학 전문가'.tr(),
                            style: textTheme.bodySmall!
                                .colored(const Color(0xFF6FD574)),
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
                          '설채현 수의사'.tr(),
                          style: textTheme.bodyLarge!
                              .colored(const Color(0xFF1F2020)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 971.w),
                          child: Text(
                            '서지형 훈련사'.tr(),
                            style: textTheme.bodyLarge!
                                .colored(const Color(0xFF1F2020)),
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
                decoration: AppDecoration.outlineBlueGray
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
                          Container(
                            alignment: Alignment.center,
                            height: 180.h,
                            width: 337.w,
                            decoration: AppDecoration.outlineBlueGray,
                          ),
                          CustomImageView(
                            imagePath: Assets.images.experts.sch.path,
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
                          Container(
                            alignment: Alignment.center,
                            height: 180.h,
                            width: 337.w,
                            decoration: AppDecoration.outlineBlueGray,
                          ),
                          Container(
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.only(
                              left: 16.w,
                              bottom: 15.h,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '신윤주 박사'.tr(),
                                  style: textTheme.bodyLarge!
                                      .colored(const Color(0xFF1F2020)),
                                ),
                                SizedBox(height: 63.h),
                                Text(
                                  '서울대학교 수의학박사'.tr(),
                                  style: textTheme.bodySmall!
                                      .colored(const Color(0xFF1F2020)),
                                ),
                                Text(
                                  '광주동물메디컬 센터 수의사'.tr(),
                                  style: textTheme.bodySmall!
                                      .colored(const Color(0xFF1F2020)),
                                ),
                              ],
                            ),
                          ),
                          CustomImageView(
                            imagePath: Assets.images.experts.syj.path,
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
                            imagePath: Assets.images.experts.kji.path,
                            height: 180.h,
                            width: 168.w,
                            alignment: Alignment.centerRight,
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.only(top: 15.h),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Text(
                                    '임상수의학 박사'.tr(),
                                    style: textTheme.bodySmall!
                                        .colored(const Color(0xFF6FD574)),
                                  ),
                                ),
                                SizedBox(height: 8.h),
                                Text(
                                  '강종일 박사'.tr(),
                                  style: textTheme.bodyLarge!
                                      .colored(const Color(0xFF1F2020)),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.only(bottom: 15.h),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '한국수의학교육학회 자문위원'.tr(),
                                  style: textTheme.bodySmall!
                                      .colored(const Color(0xFF1F2020)),
                                ),
                                Text(
                                  '충현동물종합병원 원장'.tr(),
                                  style: textTheme.bodySmall!
                                      .colored(const Color(0xFF1F2020)),
                                ),
                              ],
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
                          Container(
                            alignment: Alignment.center,
                            height: 180.h,
                            width: 337.w,
                            decoration: AppDecoration.outlineBlueGray,
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.only(
                              left: 16.w,
                              top: 15.h,
                            ),
                            child: Text(
                              '클리커 트레이너'.tr(),
                              style: textTheme.bodySmall!
                                  .colored(const Color(0xFF6FD574)),
                            ),
                          ),
                          CustomImageView(
                            imagePath: Assets.images.experts.sjh.path,
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
                          Container(
                            alignment: Alignment.center,
                            height: 180.h,
                            width: 337.w,
                            decoration: AppDecoration.outlineBlueGray,
                          ),
                          CustomImageView(
                            imagePath: Assets.images.experts.psh.path,
                            height: 180.h,
                            width: 168.w,
                            alignment: Alignment.centerRight,
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.only(left: 16.w),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '상담심리학 박사'.tr(),
                                  style: textTheme.bodySmall!
                                      .colored(const Color(0xFF6FD574)),
                                ),
                                SizedBox(height: 8.h),
                                Text(
                                  '박성희 박사'.tr(),
                                  style: textTheme.bodyLarge!
                                      .colored(const Color(0xFF1F2020)),
                                ),
                                SizedBox(height: 63.h),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 121.w,
                                      margin: EdgeInsets.only(bottom: 19.h),
                                      child: Text(
                                        'KPA-CTP / CCPDT-KA',
                                        overflow: TextOverflow.ellipsis,
                                        style: textTheme.bodySmall!
                                            .colored(const Color(0xFF1F2020))
                                            .fSize(11)
                                            .normal,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 236.w),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '한국상담학회 1급 상담사'.tr(),
                                            style: textTheme.bodySmall!.colored(
                                                const Color(0xFF1F2020)),
                                          ),
                                          Text(
                                            '스트레스 관리, 심리상담 출강'.tr(),
                                            style: textTheme.bodySmall!.colored(
                                                const Color(0xFF1F2020)),
                                          ),
                                        ],
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
