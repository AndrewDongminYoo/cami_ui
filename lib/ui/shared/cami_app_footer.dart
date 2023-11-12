// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:go_router/go_router.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/localization/app_localization.dart';
import '/routes/app_routes.dart';
import '/theme/app_decoration.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/widgets/custom_image_view.dart';

class CamiAppFooter extends StatelessWidget {
  const CamiAppFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 60.h),
      decoration: AppDecoration.fillOnErrorContainer,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
              imagePath: Assets.svg.imgTicket.path, height: 30.h, width: 92.w),
          SizedBox(height: 37.h),
          Row(children: [
            GestureDetector(
              onTap: () {
                // TODO: implement Actions
              },
              child: Text('공지사항'.tr, style: textTheme.bodySmall),
            ),
            GestureDetector(
              onTap: () {
                context.go(AppRoutes.faqScreen);
              },
              child: Padding(
                padding: EdgeInsets.only(left: 17.w),
                child: Text('자주 묻는 질문'.tr, style: textTheme.bodySmall),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(left: 17.w),
                child: Text('이벤트'.tr, style: textTheme.bodySmall))
          ]),
          SizedBox(height: 9.h),
          Padding(
            padding: EdgeInsets.only(right: 19.w),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    context.go(AppRoutes.contactUsRegisterScreen);
                  },
                  child:
                      Text('고객센터'.tr, style: CustomTextStyles.bodySmallGray500),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.w),
                  child:
                      Text('이용약관'.tr, style: CustomTextStyles.bodySmallGray500),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.w),
                  child: Text('개인정보취급방침'.tr,
                      style: CustomTextStyles.bodySmallGray500),
                ),
                Padding(
                    padding: EdgeInsets.only(left: 15.w),
                    child: Text('기관 제휴 및 구매 문의'.tr,
                        style: CustomTextStyles.bodySmallGray500))
              ],
            ),
          ),
          SizedBox(height: 38.h),
          Row(children: [
            Text('Address', style: textTheme.bodySmall),
            Padding(
                padding: EdgeInsets.only(left: 131.w),
                child: Text('Contact', style: textTheme.bodySmall))
          ]),
          SizedBox(height: 9.h),
          Padding(
            padding: EdgeInsets.only(right: 72.w),
            child: Row(
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text('서울시 구로구 디지털로34길 55'.tr, style: textTheme.bodySmall),
                  Text('코오롱싸이언스밸리2차 B101'.tr, style: textTheme.bodySmall)
                ]),
                Padding(
                  padding: EdgeInsets.only(left: 17.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('business@cami.kr', style: textTheme.bodySmall),
                      Text('02-861-6828', style: CustomTextStyles.bodySmall11)
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 45.h),
          Text('주식회사 카미랩'.tr, style: textTheme.bodySmall),
          Text('대표: 조윤수 | 사업자등록번호 : 539-81-02640'.tr,
              style: textTheme.bodySmall),
          SizedBox(height: 15.h),
          Text('Copyright ⓒ 2023 CAMI Labs. All rights reserved.'.tr,
              style: textTheme.bodySmall),
          SizedBox(height: 39.h),
          Row(children: [
            CustomImageView(
                imagePath: Assets.images.icoFacebookDark.path,
                height: 24.r,
                width: 24.r),
            CustomImageView(
              imagePath: Assets.images.icoInstagramDark.path,
              height: 24.r,
              width: 24.r,
              margin: EdgeInsets.only(left: 16.w),
            ),
            CustomImageView(
              imagePath: Assets.images.icoNaverBlogDark.path,
              height: 24.r,
              width: 24.r,
              margin: EdgeInsets.only(left: 16.w),
            ),
          ])
        ],
      ),
    );
  }
}
