// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

// 🌎 Project imports:
import '../../routes/app_routes.dart';
import '/core/utils/media_query.dart';
import '/gen/assets.gen.dart';
import '/theme/app_decoration.dart';
import '/theme/custom_button_style.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/ui/shared/cami_app_bar.dart';
import '/ui/shared/cami_app_footer.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_icon_button.dart';
import '/widgets/custom_image_view.dart';

class MyPageScreen extends StatelessWidget {
  const MyPageScreen({super.key});

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
              SizedBox(height: 42.h),
              Padding(
                padding: EdgeInsets.only(
                  left: 16.w,
                  right: 22.w,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: Assets.images.avatarOwner.path,
                      height: 79.r,
                      width: 79.r,
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 24.w,
                          top: 7.h,
                          bottom: 7.h,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 2.h,
                                    bottom: 5.h,
                                  ),
                                  child: Text(
                                    '회원가입/로그인'.tr(),
                                    style: textTheme.bodyLarge!
                                        .colored(const Color(0xFF202020)),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 9.w),
                                  child: CustomIconButton(
                                    height: 32.r,
                                    width: 32.r,
                                    padding: EdgeInsets.all(8.w),
                                    child: CustomImageView(
                                      imagePath: Assets.svg.imgArrowLeft.path,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 251.w,
                              child: Text(
                                '로그인 하시면 카미의 다양한 서비스를 이용하실 수 있습니다.'.tr(),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: textTheme.bodySmall!
                                    .colored(const Color(0xFFA3A3A3))
                                    .tight,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 48.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                    vertical: 24.h,
                  ),
                  decoration: AppDecoration.outlineOnSecondaryContainer
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder12),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: Assets.images.avatarCat.path,
                        height: 84.r,
                        width: 84.r,
                        radius: BorderRadius.circular(42.w),
                        margin: EdgeInsets.only(
                          top: 17.h,
                          bottom: 33.h,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 24.w,
                          bottom: 11.h,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '등록된 정보가 없습니다.'.tr(),
                              style: textTheme.bodyLarge!
                                  .colored(const Color(0xFFA3A3A3)),
                            ),
                            SizedBox(height: 7.h),
                            Row(children: [
                              Text(
                                '생년월일'.tr(),
                                style: textTheme.bodyMedium!
                                    .colored(const Color(0xFFA3A3A3)),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 16.w),
                                child: Text(
                                  '-',
                                  style: textTheme.bodyMedium!
                                      .colored(const Color(0xFFA3A3A3)),
                                ),
                              ),
                            ]),
                            SizedBox(height: 2.h),
                            Row(children: [
                              Text(
                                '연령'.tr(),
                                style: textTheme.bodyMedium!
                                    .colored(const Color(0xFFA3A3A3)),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 43.w),
                                child: Text(
                                  '-',
                                  style: textTheme.bodyMedium!
                                      .colored(const Color(0xFFA3A3A3)),
                                ),
                              ),
                            ]),
                            SizedBox(height: 3.h),
                            Row(children: [
                              Text(
                                '견종'.tr(),
                                style: textTheme.bodyMedium!
                                    .colored(const Color(0xFFA3A3A3)),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 42.w),
                                child: Text(
                                  '-',
                                  style: textTheme.bodyMedium!
                                      .colored(const Color(0xFFA3A3A3)),
                                ),
                              ),
                            ]),
                            SizedBox(height: 2.h),
                            Row(children: [
                              Text(
                                '성별'.tr(),
                                style: textTheme.bodyMedium!
                                    .colored(const Color(0xFFA3A3A3)),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 42.w),
                                child: Text(
                                  '-',
                                  style: textTheme.bodyMedium!
                                      .colored(const Color(0xFFA3A3A3)),
                                ),
                              ),
                            ]),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 18.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                    vertical: 24.h,
                  ),
                  decoration: AppDecoration.outlineOnSecondaryContainer
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder12),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: Assets.images.avatarCat.path,
                        height: 84.r,
                        width: 84.r,
                        radius: BorderRadius.circular(42.w),
                        margin: EdgeInsets.only(
                          top: 17.h,
                          bottom: 33.h,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 24.w,
                          bottom: 11.h,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '등록된 정보가 없습니다.'.tr(),
                              style: textTheme.bodyLarge!
                                  .colored(const Color(0xFFA3A3A3)),
                            ),
                            SizedBox(height: 7.h),
                            Row(children: [
                              Text(
                                '생년월일'.tr(),
                                style: textTheme.bodyMedium!
                                    .colored(const Color(0xFFA3A3A3)),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 16.w),
                                child: Text(
                                  '-',
                                  style: textTheme.bodyMedium!
                                      .colored(const Color(0xFFA3A3A3)),
                                ),
                              ),
                            ]),
                            SizedBox(height: 2.h),
                            Row(children: [
                              Text(
                                '연령'.tr(),
                                style: textTheme.bodyMedium!
                                    .colored(const Color(0xFFA3A3A3)),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 43.w),
                                child: Text(
                                  '-',
                                  style: textTheme.bodyMedium!
                                      .colored(const Color(0xFFA3A3A3)),
                                ),
                              ),
                            ]),
                            SizedBox(height: 3.h),
                            Row(children: [
                              Text(
                                '묘종'.tr(),
                                style: textTheme.bodyMedium!
                                    .colored(const Color(0xFFA3A3A3)),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 42.w),
                                child: Text(
                                  '-',
                                  style: textTheme.bodyMedium!
                                      .colored(const Color(0xFFA3A3A3)),
                                ),
                              ),
                            ]),
                            SizedBox(height: 2.h),
                            Row(children: [
                              Text(
                                '성별'.tr(),
                                style: textTheme.bodyMedium!
                                    .colored(const Color(0xFFA3A3A3)),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 42.w),
                                child: Text(
                                  '-',
                                  style: textTheme.bodyMedium!
                                      .colored(const Color(0xFFA3A3A3)),
                                ),
                              ),
                            ]),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 12.w),
                      decoration: AppDecoration.outlineOnSecondaryContainer
                          .copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder12),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(height: 16.h),
                          Text('나는 멍집사'.tr(), style: textTheme.bodyLarge),
                          SizedBox(height: 25.h),
                          SizedBox(
                            height: 112.h,
                            width: 149.w,
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                CustomImageView(
                                  imagePath: Assets.images.addDog.path,
                                  height: 112.h,
                                  width: 138.w,
                                  alignment: Alignment.center,
                                ),
                                CustomElevatedButton(
                                  onPressed: (BuildContext context) {
                                    // 강아지 등록화면
                                    context.go(AppRoutes.newDogScreen);
                                  },
                                  height: 32.h,
                                  width: 149.w,
                                  text: '강아지 등록하기'.tr(),
                                  margin: EdgeInsets.only(bottom: 24.h),
                                  buttonStyle: CustomButtonStyles.fillBlue,
                                  buttonTextStyle: textTheme.bodyMedium,
                                  alignment: Alignment.bottomCenter,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 12.w),
                      padding: EdgeInsets.symmetric(horizontal: 12.w),
                      decoration: AppDecoration.outlineOnSecondaryContainer
                          .copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder12),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(height: 16.h),
                          Text('나는 냥집사'.tr(), style: textTheme.bodyLarge),
                          SizedBox(height: 25.h),
                          SizedBox(
                            height: 112.h,
                            width: 149.w,
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                CustomImageView(
                                  imagePath: Assets.images.addCat.path,
                                  height: 112.h,
                                  width: 138.w,
                                  alignment: Alignment.center,
                                ),
                                CustomElevatedButton(
                                  onPressed: (BuildContext context) {
                                    // 고양이 등록화면
                                    context.go(AppRoutes.newCatScreen);
                                  },
                                  height: 32.h,
                                  width: 149.w,
                                  text: '고양이 등록하기'.tr(),
                                  margin: EdgeInsets.only(bottom: 24.h),
                                  buttonStyle: CustomButtonStyles.fillBlue,
                                  buttonTextStyle: textTheme.bodyMedium,
                                  alignment: Alignment.bottomCenter,
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
              SizedBox(height: 36.h),
              Container(
                width: 361.w,
                padding: EdgeInsets.symmetric(
                  horizontal: 24.w,
                  vertical: 11.h,
                ),
                decoration: AppDecoration.fillPrimary,
                child: Text('나의 반려친구'.tr(), style: textTheme.bodyLarge),
              ),
              Container(
                width: 361.w,
                padding: EdgeInsets.symmetric(
                  horizontal: 24.w,
                  vertical: 11.h,
                ),
                decoration: AppDecoration.fillGray50,
                child: Text('심리검사'.tr(), style: textTheme.bodyLarge),
              ),
              Container(
                width: 361.w,
                padding: EdgeInsets.symmetric(
                  horizontal: 24.w,
                  vertical: 11.h,
                ),
                decoration: AppDecoration.fillGray50,
                child: Text('방문교육'.tr(), style: textTheme.bodyLarge),
              ),
              Container(
                width: 361.w,
                padding: EdgeInsets.symmetric(
                  horizontal: 24.w,
                  vertical: 11.h,
                ),
                decoration: AppDecoration.fillGray50,
                child: Text('보유쿠폰'.tr(), style: textTheme.bodyLarge),
              ),
              Container(
                width: 361.w,
                padding: EdgeInsets.symmetric(
                  horizontal: 24.w,
                  vertical: 11.h,
                ),
                decoration: AppDecoration.fillGray50,
                child: Text('1:1 문의'.tr(), style: textTheme.bodyLarge),
              ),
              Container(
                width: 361.w,
                margin: EdgeInsets.symmetric(horizontal: 16.w),
                padding: EdgeInsets.symmetric(
                  horizontal: 24.w,
                  vertical: 12.h,
                ),
                decoration: AppDecoration.fillGray50,
                child: Divider(
                  color: const Color(0xFFEEEEEE),
                  endIndent: 26.w,
                ),
              ),
              Container(
                width: 361.w,
                padding: EdgeInsets.symmetric(
                  horizontal: 24.w,
                  vertical: 11.h,
                ),
                decoration: AppDecoration.fillGray50,
                child: Text('자주묻는질문'.tr(), style: textTheme.bodyLarge),
              ),
              Container(
                width: 361.w,
                padding: EdgeInsets.symmetric(
                  horizontal: 24.w,
                  vertical: 11.h,
                ),
                decoration: AppDecoration.fillGray50,
                child: Text('공지사항'.tr(), style: textTheme.bodyLarge),
              ),
              Container(
                width: 361.w,
                padding: EdgeInsets.symmetric(
                  horizontal: 24.w,
                  vertical: 11.h,
                ),
                decoration: AppDecoration.fillGray50,
                child: Text('이벤트'.tr(), style: textTheme.bodyLarge),
              ),
              SizedBox(height: 132.h),
              const CamiAppFooter(),
            ]),
          ),
        ),
      ),
    );
  }
}
