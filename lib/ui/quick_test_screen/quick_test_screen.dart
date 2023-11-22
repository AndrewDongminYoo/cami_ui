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
import '/theme/custom_button_style.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/ui/shared/cami_app_footer.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_image_view.dart';

/// 반짝 테스트
class QuickTestScreen extends StatelessWidget {
  const QuickTestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: Column(
            children: [
              SizedBox(height: 52.h),
              Expanded(
                child: SingleChildScrollView(
                  primary: true,
                  child: Column(
                    children: [
                      Text('반짝 테스트'.tr(), style: textTheme.headlineSmall),
                      SizedBox(height: 66.h),
                      CustomImageView(
                        imagePath: Assets.images.snack01.path,
                        height: 257.h,
                        width: 241.w,
                      ),
                      SizedBox(height: 34.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 53.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '강아지와 나의'.tr(),
                              style: textTheme.headlineSmall!
                                  .colored(const Color(0xFF171717)),
                            ),
                            SizedBox(width: 6.w),
                            Text(
                              '인싸력 테스트'.tr(),
                              style: textTheme.titleLarge!
                                  .colored(const Color(0xFFF0803D)),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 18.h),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '인싸! 아싸!'.tr(),
                              style: textTheme.bodyMedium!
                                  .colored(const Color(0xFFF0803D)),
                            ),
                            _buildSpacing(width: 4.w),
                            TextSpan(
                              text: '라는 말을 아십니까? 그렇다면 당신은 신세대!'.tr(),
                              style: textTheme.bodyMedium,
                            )
                          ],
                        ),
                        textAlign: TextAlign.center,
                        maxLines: 2,
                      ),
                      SizedBox(height: 30.h),
                      Container(
                        width: 296.w,
                        margin: EdgeInsets.symmetric(horizontal: 48.w),
                        child: Text(
                          '그렇다면 나의 댕댕은 인싸일까 아싸일까? 인싸인듯 인싸아닌 인싸같은 너!'.tr(),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: textTheme.bodyMedium!.hugging,
                        ),
                      ),
                      SizedBox(height: 2.h),
                      Container(
                        width: 345.w,
                        margin: EdgeInsets.symmetric(horizontal: 23.w),
                        child: Text(
                          '댕댕과 나의 관계성향을 측정해 인싸지수를 확인하고, 서로의 일치도를 알려드립니다!'.tr(),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: textTheme.bodyMedium!.hugging,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      CustomElevatedButton(
                        onPressed: (context) {
                          // TODO: implement onPressed
                        },
                        width: 117.w,
                        text: '진단시작'.tr(),
                        buttonStyle: CustomButtonStyles.fillBlack,
                      ),
                      SizedBox(height: 64.h),
                      CustomImageView(
                        imagePath: Assets.images.snack03.path,
                        height: 257.h,
                        width: 241.w,
                      ),
                      SizedBox(height: 35.h),
                      Text(
                        '삼칠이 작명소'.tr(),
                        style: textTheme.titleLarge!
                            .colored(const Color(0xFF171717)),
                      ),
                      SizedBox(height: 18.h),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: '개성만점'.tr(), style: textTheme.bodyMedium),
                        _buildSpacing(width: 4.sp),
                        TextSpan(
                            text: '별명 짓기'.tr(), style: textTheme.bodyMedium),
                        _buildSpacing(width: 1.sp),
                        TextSpan(text: '!!!', style: textTheme.bodyMedium),
                      ])),
                      SizedBox(height: 30.h),
                      Container(
                        width: 347.w,
                        margin: EdgeInsets.symmetric(horizontal: 22.w),
                        child: Text(
                          '함께 생활하는 반려 동물에게 어울리는 새로운 이름이 무엇이 있을까요?'.tr(),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: textTheme.bodyMedium!.hugging,
                        ),
                      ),
                      SizedBox(height: 2.h),
                      Container(
                        width: 315.w,
                        margin: EdgeInsets.only(left: 39.w, right: 38.w),
                        child: Text(
                          '시적이고 직설적인 아메리카 원주민식 이름을 삼칠이가 지어드립니다.'.tr(),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: textTheme.bodyMedium!.hugging,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      CustomElevatedButton(
                        width: 117.w,
                        text: '진단시작'.tr(),
                        buttonStyle: CustomButtonStyles.fillBlack,
                        onPressed: onTapGoToNaming,
                      ),
                      SizedBox(height: 64.h),
                      CustomImageView(
                        imagePath: Assets.images.snack04.path,
                        height: 257.h,
                        width: 241.w,
                      ),
                      SizedBox(height: 34.h),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '나는'.tr(),
                              style: textTheme.headlineSmall!
                                  .colored(const Color(0xFF171717)),
                            ),
                            _buildSpacing(),
                            TextSpan(
                              text: '개'.tr(),
                              style: textTheme.titleLarge!
                                  .colored(const Color(0xFFF0803D)),
                            ),
                            _buildSpacing(),
                            TextSpan(
                              text: '인간?'.tr(),
                              style: textTheme.headlineSmall!
                                  .colored(const Color(0xFF171717)),
                            ),
                            _buildSpacing(),
                            TextSpan(
                              text: '고양이'.tr(),
                              style: textTheme.titleLarge!
                                  .colored(const Color(0xFFF0803D)),
                            ),
                            _buildSpacing(),
                            TextSpan(
                              text: '인간?'.tr(),
                              style: textTheme.headlineSmall!
                                  .colored(const Color(0xFF171717)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 18.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 39.w),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: '반려 동물과 반려인이'.tr(),
                                style: textTheme.bodyMedium,
                              ),
                              _buildSpacing(),
                              TextSpan(
                                text: '묘하게 닮아 있거나, 닮아 간다고 합니다.'.tr(),
                                style: textTheme.bodyMedium!
                                    .colored(const Color(0xFFF0803D))
                                    .hugging,
                              )
                            ],
                          ),
                          textAlign: TextAlign.center,
                          maxLines: 2,
                        ),
                      ),
                      SizedBox(height: 30.h),
                      Container(
                        width: 350.w,
                        margin: EdgeInsets.only(left: 21.w, right: 20.w),
                        child: Text(
                          '그래서 함께하는 반려 동물에 따라 나타나는 반려인의 특성과 관련된 연구가 있어요. 선행연구를 모아모아 반려견, 반려묘와 함께하는 반려인들을 중심으로 유형 진단 검사를 만들어 보았습니다.'
                              .tr(),
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: textTheme.bodyMedium!.hugging,
                        ),
                      ),
                      SizedBox(height: 12.h),
                      CustomElevatedButton(
                        onPressed: (context) {
                          // TODO: implement onPressed
                        },
                        height: 36.h,
                        width: 117.w,
                        text: '진단시작'.tr(),
                        buttonStyle: CustomButtonStyles.fillBlack,
                      ),
                      SizedBox(height: 122.h),
                      const CamiAppFooter(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  WidgetSpan _buildSpacing({double? width}) {
    return WidgetSpan(child: SizedBox(width: width ?? 3.w));
  }

  /// Navigates to the namingScreen when the action is triggered.
  void onTapGoToNaming(BuildContext context) {
    context.goNamed(AppRoutes.namingScreen);
  }
}
