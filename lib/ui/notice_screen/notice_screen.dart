// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/core/utils/media_query.dart';
import '/gen/assets.gen.dart';
import '/routes/go_extensions.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/ui/shared/cami_app_bar.dart';
import '/ui/shared/cami_app_footer.dart';
import '/widgets/custom_image_view.dart';
import 'widgets/notice_content.dart';

class NoticeScreen extends StatelessWidget {
  const NoticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        appBar: const CamiAppBar(),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            primary: true,
            child: Column(children: [
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Row(children: [
                  CustomImageView(
                    imagePath: Assets.svg.imgArrowLeft.path,
                    height: 28.h,
                    width: 20.w,
                    onTap: () {
                      context.safePop();
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 127.w),
                    child: Text(
                      '공지사항'.tr(),
                      style: textTheme.bodyLarge!.fSize(18),
                    ),
                  ),
                ]),
              ),
              SizedBox(height: 16.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: NoticeContent(
                  userName: '2',
                  userMessage: '(2021-03-04) 이용약관 변경 사항 안내'.tr(),
                  userDate: '2021-03-04',
                ),
              ),
              Divider(
                color: const Color(0xFFE5E7EB),
                indent: 16.w,
                endIndent: 16.w,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: NoticeContent(
                  userName: '1',
                  userMessage: '홈페이지 회원 및 반려견 프로필 사진 오류 안내'.tr(),
                  userDate: '2020-03-17',
                ),
              ),
              Divider(
                color: const Color(0xFFE5E7EB),
                indent: 16.w,
                endIndent: 16.w,
              ),
              SizedBox(height: 127.h),
              const CamiAppFooter(),
            ]),
          ),
        ),
      ),
    );
  }
}
