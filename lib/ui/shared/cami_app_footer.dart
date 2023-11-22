// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher_string.dart';

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
            imagePath: Assets.svg.imgTicket.path,
            height: 30.h,
            width: 92.w,
          ),
          SizedBox(height: 37.h),
          Row(
            children: [
              PressableText(
                '공지사항'.tr(),
                onTap: () {
                  context.pushNamed(AppRoutes.noticeScreen);
                },
              ),
              SizedBox(width: 17.w),
              PressableText(
                '자주 묻는 질문'.tr(),
                onTap: () {
                  context.pushNamed(AppRoutes.faqScreen);
                },
              ),
              SizedBox(width: 17.w),
              PressableText(
                '이벤트'.tr(),
              ),
            ],
          ),
          SizedBox(height: 9.h),
          Padding(
            padding: EdgeInsets.only(right: 19.w),
            child: Row(
              children: [
                PressableText(
                  '고객센터'.tr(),
                  onTap: () {
                    context.pushNamed(AppRoutes.contactUsRegisterScreen);
                  },
                  color: const Color(0xFFA3A3A3),
                ),
                SizedBox(width: 15.w),
                PressableText(
                  '이용약관'.tr(),
                  color: const Color(0xFFA3A3A3),
                ),
                SizedBox(width: 15.w),
                PressableText(
                  '개인정보취급방침'.tr(),
                  color: const Color(0xFFA3A3A3),
                ),
                SizedBox(width: 15.w),
                PressableText(
                  '기관 제휴 및 구매 문의'.tr(),
                  color: const Color(0xFFA3A3A3),
                ),
              ],
            ),
          ),
          SizedBox(height: 38.h),
          const Row(
            children: [
              Expanded(
                child: PressableText(
                  'Address',
                ),
              ),
              Expanded(
                child: PressableText(
                  'Contact',
                ),
              ),
            ],
          ),
          SizedBox(height: 9.h),
          Row(
            children: [
              Expanded(
                child: Text(
                  '서울시 구로구 디지털로 34길 55 코오롱 싸이언스밸리 2차 B101'.tr(),
                  style: textTheme.bodySmall!.colored(Colors.white),
                  softWrap: true,
                  maxLines: 3,
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PressableText(
                      'business@cami.kr',
                      onTap: () {
                        launchUrlString('mailto:business@cami.kr');
                      },
                    ),
                    PressableText(
                      '02-861-6828',
                      onTap: () {
                        launchUrlString('tel:+8228616828');
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 45.h),
          PressableText(
            '주식회사 카미랩'.tr(),
          ),
          PressableText(
            '대표: 조윤수 | 사업자등록번호 : 539-81-02640'.tr(),
          ),
          SizedBox(height: 15.h),
          const PressableText(
            'Copyright ⓒ 2023 CAMI Labs. All rights reserved.',
          ),
          SizedBox(height: 39.h),
          const SocialLinkIcons(),
        ],
      ),
    );
  }
}

class PressableText extends StatelessWidget {
  const PressableText(
    this.text, {
    super.key,
    this.onTap,
    this.color = Colors.white,
  });

  final VoidCallback? onTap;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: textTheme.bodySmall!.colored(color),
      ),
    );
  }
}
