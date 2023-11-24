// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

// 🌎 Project imports:
import '/core/utils/media_query.dart';
import '/gen/assets.gen.dart';
import '/routes/app_routes.dart';
import '/routes/go_extensions.dart';
import '/theme/custom_button_style.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/ui/shared/cami_app_bar.dart';
import '/ui/shared/cami_app_footer.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_image_view.dart';
import 'widgets/notice_detail_body.dart';

class NoticeDetailScreen extends StatelessWidget {
  const NoticeDetailScreen({super.key});

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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
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
                SizedBox(height: 15.h),
                Center(
                  child: Divider(
                    color: Colors.black,
                    indent: 16.w,
                    endIndent: 16.w,
                  ),
                ),
                SizedBox(height: 12.h),
                Padding(
                  padding: EdgeInsets.only(left: 24.w),
                  child: Text(
                    '홈페이지 회원 및 반려견 프로필 사진 오류 안내'.tr(),
                    style: textTheme.bodyMedium,
                  ),
                ),
                SizedBox(height: 21.h),
                Padding(
                  padding: EdgeInsets.only(left: 24.w),
                  child: Text(
                    '2020-03-17',
                    style:
                        textTheme.bodySmall!.colored(const Color(0xFFA3A3A3)),
                  ),
                ),
                SizedBox(height: 12.h),
                const NoticeDetailBody(),
                SizedBox(height: 28.h),
                CustomElevatedButton(
                  height: 32.h,
                  width: 104.w,
                  text: '목록으로'.tr(),
                  margin: EdgeInsets.only(right: 16.w),
                  buttonStyle: CustomButtonStyles.fillBlue,
                  buttonTextStyle: textTheme.bodySmall,
                  alignment: Alignment.centerRight,
                  onPressed: (BuildContext context) {
                    context.pushNamed(AppRoutes.noticeScreen);
                  },
                ),
                SizedBox(height: 128.h),
                const CamiAppFooter(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
