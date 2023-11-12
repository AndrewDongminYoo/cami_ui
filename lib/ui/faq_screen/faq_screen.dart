// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/localization/app_localization.dart';
import '/theme/app_decoration.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/ui/shared/cami_app_bar.dart';
import '/ui/shared/cami_app_footer.dart';
import '/widgets/custom_drop_down_form_field.dart';
import '/widgets/custom_image_view.dart';

// ignore: must_be_immutable
class FaqScreen extends StatelessWidget {
  FaqScreen({super.key});

  final items = ['Item One', 'Item Two', 'Item Three'];

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        appBar: const CamiAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.w),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: Assets.svg.imgArrowLeft.path,
                            height: 20.r,
                            width: 20.r,
                            margin: EdgeInsets.only(bottom: 6.h),
                            onTap: () {
                              Navigator.pop(context);
                            }),
                        Padding(
                            padding: EdgeInsets.only(left: 105.w),
                            child: Text('자주 묻는 질문'.tr,
                                style: CustomTextStyles.bodyLarge18))
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16.h),
                Divider(indent: 16.w, endIndent: 16.w),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16.w),
                  padding: EdgeInsets.all(8.w),
                  decoration: AppDecoration.fillGray100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 9.h, bottom: 7.h),
                        child: Text('Q.',
                            style: CustomTextStyles
                                .bodyMediumNanumSquareNeoBlack900),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 9.w, top: 1.h),
                          child: CustomDropDownFormField(
                            icon: Container(
                              margin: EdgeInsets.only(left: 30.w),
                              child: CustomImageView(
                                  imagePath:
                                      Assets.svg.imgArrowdownGray700.path,
                                  height: 32.h,
                                  width: 30.w),
                            ),
                            hintText: '결제가 되지 않아요'.tr,
                            hintStyle: CustomTextStyles
                                .bodyMediumNanumSquareNeoBlack90013,
                            items: items,
                            onChanged: (value) {},
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16.w),
                  decoration: AppDecoration.fillGray50,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: 23.h),
                      Padding(
                        padding: EdgeInsets.only(left: 20.w),
                        child: Text('결제가 되지 않는경우'.tr,
                            style: CustomTextStyles.bodyMediumBlack900),
                      ),
                      SizedBox(height: 10.h),
                      Align(
                        child: Container(
                          width: 314.w,
                          margin: EdgeInsets.only(left: 20.w, right: 26.w),
                          child: Text(
                            '1. 웹 브라우저가 Explorer인 경우, 버전 10 이상인지 확인해야하며'.tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodyMediumBlack900
                                .copyWith(height: 2),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.w),
                        child: Text('되도록 크롬웹브라우저와 엣지를 추천드립니다.'.tr,
                            style: CustomTextStyles.bodyMediumBlack900),
                      ),
                      SizedBox(height: 10.h),
                      Container(
                        width: 307.w,
                        margin: EdgeInsets.only(left: 20.w, right: 33.w),
                        child: Text(
                          '2. 브라우저의 팝업 차단 설정이 해제되어 있어야 결제가 가능합니다.'.tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodyMediumBlack900
                              .copyWith(height: 2),
                        ),
                      ),
                      Container(
                        width: 304.w,
                        margin: EdgeInsets.only(left: 20.w, right: 36.w),
                        child: Text(
                          '3. 다른 카드로 결제를 시도해보기 (체크카드의 경우 잔액부족으로, 신용카드는 카드사 오류로 안되는 경우가 종종 발생합니다.)'
                              .tr,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodyMediumBlack900
                              .copyWith(height: 2),
                        ),
                      ),
                      SizedBox(height: 29.h),
                      Align(
                        child: Container(
                          width: 317.w,
                          margin: EdgeInsets.only(left: 20.w, right: 23.w),
                          child: Text(
                            '위 사항을 확인하신 후에도 결제가 되지 않는 경우, 현재 사용중인 웹브라우저의 종류와 버전, 그리고 기기 종류 (PC/모바일의 경우 기기 브랜드 필요)를 확인하여 문의주시면 빠르게 도와드리겠습니다.'
                                .tr,
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodyMediumBlack900
                                .copyWith(height: 2),
                          ),
                        ),
                      ),
                      SizedBox(height: 24.h),
                      Padding(
                        padding: EdgeInsets.only(left: 20.w),
                        child: Text('감사합니다.'.tr,
                            style: CustomTextStyles.bodyMediumBlack900),
                      ),
                      SizedBox(height: 30.h),
                      const Divider()
                    ],
                  ),
                ),
                SizedBox(height: 9.h),
                SizedBox(
                  height: 460.h,
                  width: 360.w,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(height: 17.h),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.w),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 8.h, bottom: 7.h),
                                    child: Text(
                                      'Q.',
                                      style: CustomTextStyles
                                          .bodyMediumNanumSquareNeoBlack900
                                          .copyWith(
                                        color: appTheme.black900,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 9.w, top: 7.h, bottom: 8.h),
                                      child: Text(
                                        '결제 성공 후 검사를 바로 하지 못했는데 어떻게 해야 하나요?'.tr,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 3,
                                        style: CustomTextStyles
                                            .bodyMediumNanumSquareNeoBlack900
                                            .copyWith(
                                          color: appTheme.black900,
                                        ),
                                      ),
                                    ),
                                  ),
                                  CustomImageView(
                                      imagePath:
                                          Assets.svg.imgArrowdownGray700.path,
                                      height: 32.h,
                                      width: 30.w)
                                ],
                              ),
                            ),
                            SizedBox(height: 17.h),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.w),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 8.h, bottom: 7.h),
                                    child: Text(
                                      'Q.',
                                      style: CustomTextStyles
                                          .bodyMediumNanumSquareNeoBlack900
                                          .copyWith(
                                        color: appTheme.black900,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 9.w, top: 7.h, bottom: 8.h),
                                      child: Text(
                                        '검사를 다 끝내지 못했는데 이어서 하려면 어떻게 하나요?'.tr,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 3,
                                        style: CustomTextStyles
                                            .bodyMediumNanumSquareNeoBlack900
                                            .copyWith(
                                          color: appTheme.black900,
                                        ),
                                      ),
                                    ),
                                  ),
                                  CustomImageView(
                                      imagePath:
                                          Assets.svg.imgArrowdownGray700.path,
                                      height: 32.h,
                                      width: 30.w)
                                ],
                              ),
                            ),
                            SizedBox(height: 17.h),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.w),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 8.h, bottom: 7.h),
                                    child: Text(
                                      'Q.',
                                      style: CustomTextStyles
                                          .bodyMediumNanumSquareNeoBlack900
                                          .copyWith(
                                        color: appTheme.black900,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 9.w, top: 7.h, bottom: 8.h),
                                      child: Text(
                                        '어린 강아지도 심리검사를 받을 수 있나요?'.tr,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 3,
                                        style: CustomTextStyles
                                            .bodyMediumNanumSquareNeoBlack900
                                            .copyWith(
                                          color: appTheme.black900,
                                        ),
                                      ),
                                    ),
                                  ),
                                  CustomImageView(
                                      imagePath:
                                          Assets.svg.imgArrowdownGray700.path,
                                      height: 32.h,
                                      width: 30.w)
                                ],
                              ),
                            ),
                            SizedBox(height: 17.h),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.w),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 8.h, bottom: 7.h),
                                    child: Text(
                                      'Q.',
                                      style: CustomTextStyles
                                          .bodyMediumNanumSquareNeoBlack900
                                          .copyWith(
                                        color: appTheme.black900,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 9.w, top: 7.h, bottom: 8.h),
                                      child: Text(
                                        '구매한 쿠폰이 보이지 않아요.'.tr,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 3,
                                        style: CustomTextStyles
                                            .bodyMediumNanumSquareNeoBlack900
                                            .copyWith(
                                          color: appTheme.black900,
                                        ),
                                      ),
                                    ),
                                  ),
                                  CustomImageView(
                                      imagePath:
                                          Assets.svg.imgArrowdownGray700.path,
                                      height: 32.h,
                                      width: 30.w)
                                ],
                              ),
                            ),
                            SizedBox(height: 17.h),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.w),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 8.h, bottom: 7.h),
                                    child: Text(
                                      'Q.',
                                      style: CustomTextStyles
                                          .bodyMediumNanumSquareNeoBlack900
                                          .copyWith(
                                        color: appTheme.black900,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 9.w, top: 7.h, bottom: 8.h),
                                      child: Text(
                                        '회원 탈퇴는 어떻게 하나요?'.tr,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 3,
                                        style: CustomTextStyles
                                            .bodyMediumNanumSquareNeoBlack900
                                            .copyWith(
                                          color: appTheme.black900,
                                        ),
                                      ),
                                    ),
                                  ),
                                  CustomImageView(
                                      imagePath:
                                          Assets.svg.imgArrowdownGray700.path,
                                      height: 32.h,
                                      width: 30.w)
                                ],
                              ),
                            ),
                            SizedBox(height: 17.h),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.w),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 8.h, bottom: 7.h),
                                    child: Text(
                                      'Q.',
                                      style: CustomTextStyles
                                          .bodyMediumNanumSquareNeoBlack900
                                          .copyWith(
                                        color: appTheme.black900,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 9.w, top: 7.h, bottom: 8.h),
                                      child: Text(
                                        '결과보고서 인쇄 방법'.tr,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 3,
                                        style: CustomTextStyles
                                            .bodyMediumNanumSquareNeoBlack900
                                            .copyWith(
                                          color: appTheme.black900,
                                        ),
                                      ),
                                    ),
                                  ),
                                  CustomImageView(
                                      imagePath:
                                          Assets.svg.imgArrowdownGray700.path,
                                      height: 32.h,
                                      width: 30.w)
                                ],
                              ),
                            ),
                            SizedBox(height: 17.h),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.w),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 8.h, bottom: 7.h),
                                    child: Text(
                                      'Q.',
                                      style: CustomTextStyles
                                          .bodyMediumNanumSquareNeoBlack900
                                          .copyWith(
                                        color: appTheme.black900,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 9.w, top: 7.h, bottom: 8.h),
                                      child: Text(
                                        '결과보고서 다시보기'.tr,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 3,
                                        style: CustomTextStyles
                                            .bodyMediumNanumSquareNeoBlack900
                                            .copyWith(
                                          color: appTheme.black900,
                                        ),
                                      ),
                                    ),
                                  ),
                                  CustomImageView(
                                      imagePath:
                                          Assets.svg.imgArrowdownGray700.path,
                                      height: 32.h,
                                      width: 30.w)
                                ],
                              ),
                            ),
                            SizedBox(height: 17.h),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 136.h),
                const CamiAppFooter(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
