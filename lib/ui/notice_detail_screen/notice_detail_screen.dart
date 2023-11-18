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
import '/theme/app_decoration.dart';
import '/theme/custom_button_style.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/ui/shared/cami_app_bar.dart';
import '/ui/shared/cami_app_footer.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_image_view.dart';

class NoticeDetailScreen extends StatelessWidget {
  const NoticeDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        appBar: const CamiAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            primary: true,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: Row(
                    children: [
                      CustomImageView(
                          imagePath: Assets.svg.imgArrowLeft.path,
                          height: 28.h,
                          width: 20.w,
                          onTap: () {
                            context.safePop();
                          }),
                      Padding(
                        padding: EdgeInsets.only(left: 127.w),
                        child: Text(
                          '공지사항'.tr(),
                          style: textTheme.bodyLarge!.fSize(18),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 15.h),
                Align(
                  child: Divider(
                      color: Colors.black, indent: 16.w, endIndent: 16.w),
                ),
                SizedBox(height: 12.h),
                Padding(
                  padding: EdgeInsets.only(left: 24.w),
                  child: Text('홈페이지 회원 및 반려견 프로필 사진 오류 안내'.tr().toUpperCase(),
                      style: textTheme.bodyMedium),
                ),
                SizedBox(height: 21.h),
                Padding(
                  padding: EdgeInsets.only(left: 24.w),
                  child: Text(
                    '2020-03-17'.toUpperCase(),
                    style:
                        textTheme.bodySmall!.colored(const Color(0xFFA3A3A3)),
                  ),
                ),
                SizedBox(height: 12.h),
                _buildApologizeNotice(context),
                SizedBox(height: 28.h),
                CustomElevatedButton(
                  height: 32.h,
                  width: 104.w,
                  text: '목록으로'.tr(),
                  margin: EdgeInsets.only(right: 16.w),
                  buttonStyle: CustomButtonStyles.fillBlue,
                  buttonTextStyle: textTheme.bodySmall,
                  alignment: Alignment.centerRight,
                  onPressed: onTapBackToNotices,
                ),
                SizedBox(height: 128.h),
                const CamiAppFooter()
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// We apologize for any inconvenience this may cause you.
  Widget _buildApologizeNotice(BuildContext context) {
    return Align(
      child: Container(
        width: 361.w,
        margin: EdgeInsets.symmetric(horizontal: 16.w),
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 13.h),
        decoration: AppDecoration.fillGray50,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 327.w,
              margin: EdgeInsets.only(right: 9.w),
              child: Text(
                '서버 업데이트 과정에서 시스템 오류로 인해 2019년 11월 15일 이후 업로드한 반려인/반려견 프로필 사진이 삭제되었습니다.'
                    .tr(),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: textTheme.bodySmall!.tight,
              ),
            ),
            Container(
              width: 326.w,
              margin: EdgeInsets.only(right: 9.w),
              child: Text(
                '이에 따라 사진이 삭제된 유저분들은 필요에 따라 프로필 사진을 재등록하셔야 합니다.'.tr(),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: textTheme.bodySmall!.tight,
              ),
            ),
            Text('사이트 이용에 불편을 드려 죄송합니다.'.tr(), style: textTheme.bodySmall),
            SizedBox(height: 3.h),
            Container(
              width: 327.w,
              margin: EdgeInsets.only(right: 9.w),
              child: Text(
                '향후 이런 일이 재발하지 않도록 서버의 보안과 백업 정책을 강화하겠습니다.'.tr(),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: textTheme.bodySmall!.tight,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Navigates to the noticeScreen when the action is triggered.
  void onTapBackToNotices(BuildContext context) {
    context.pushNamed(AppRoutes.noticeScreen);
  }
}
