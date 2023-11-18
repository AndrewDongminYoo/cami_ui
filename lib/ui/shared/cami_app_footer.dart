// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

// 🌎 Project imports:
import '/gen/assets.gen.dart';
import '/routes/app_routes.dart';
import '/theme/app_decoration.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/widgets/custom_image_view.dart';
import 'social_link_icons.dart';

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
                context.pushNamed(AppRoutes.noticeScreen);
              },
              child: Text('공지사항'.tr(),
                  style: textTheme.bodySmall!.colored(Colors.white)),
            ),
            GestureDetector(
              onTap: () {
                context.pushNamed(AppRoutes.faqScreen);
              },
              child: Padding(
                padding: EdgeInsets.only(left: 17.w),
                child: Text('자주 묻는 질문'.tr(),
                    style: textTheme.bodySmall!.colored(Colors.white)),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(left: 17.w),
                child: Text('이벤트'.tr(),
                    style: textTheme.bodySmall!.colored(Colors.white)))
          ]),
          SizedBox(height: 9.h),
          Padding(
            padding: EdgeInsets.only(right: 19.w),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    context.pushNamed(AppRoutes.contactUsRegisterScreen);
                  },
                  child: Text(
                    '고객센터'.tr(),
                    style:
                        textTheme.bodySmall!.colored(const Color(0xFFA3A3A3)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.w),
                  child: Text(
                    '이용약관'.tr(),
                    style:
                        textTheme.bodySmall!.colored(const Color(0xFFA3A3A3)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.w),
                  child: Text(
                    '개인정보취급방침'.tr(),
                    style:
                        textTheme.bodySmall!.colored(const Color(0xFFA3A3A3)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.w),
                  child: Text(
                    '기관 제휴 및 구매 문의'.tr(),
                    style:
                        textTheme.bodySmall!.colored(const Color(0xFFA3A3A3)),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 38.h),
          Row(children: [
            Text('Address', style: textTheme.bodySmall!.colored(Colors.white)),
            Padding(
                padding: EdgeInsets.only(left: 131.w),
                child: Text('Contact',
                    style: textTheme.bodySmall!.colored(Colors.white)))
          ]),
          SizedBox(height: 9.h),
          Padding(
            padding: EdgeInsets.only(right: 72.w),
            child: Row(
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text('서울시 구로구 디지털로34길 55'.tr(),
                      style: textTheme.bodySmall!.colored(Colors.white)),
                  Text('코오롱싸이언스밸리2차 B101'.tr(),
                      style: textTheme.bodySmall!.colored(Colors.white))
                ]),
                Padding(
                  padding: EdgeInsets.only(left: 17.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('business@cami.kr',
                          style: textTheme.bodySmall!.colored(Colors.white)),
                      Text('02-861-6828', style: textTheme.bodySmall!.fSize(11))
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 45.h),
          Text('주식회사 카미랩'.tr(),
              style: textTheme.bodySmall!.colored(Colors.white)),
          Text('대표: 조윤수 | 사업자등록번호 : 539-81-02640'.tr(),
              style: textTheme.bodySmall!.colored(Colors.white)),
          SizedBox(height: 15.h),
          Text('Copyright ⓒ 2023 CAMI Labs. All rights reserved.',
              style: textTheme.bodySmall!.colored(Colors.white)),
          SizedBox(height: 39.h),
          const SocialLinkIcons()
        ],
      ),
    );
  }
}
