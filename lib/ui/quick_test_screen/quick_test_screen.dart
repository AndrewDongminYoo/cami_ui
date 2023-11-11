// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/localization/app_localization.dart';
import '/routes/app_routes.dart';
import '/theme/app_decoration.dart';
import '/theme/custom_button_style.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_image_view.dart';

class QuickTestScreen extends StatelessWidget {
  const QuickTestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 52.h),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Column(children: [
                    Text('반짝 테스트'.tr,
                        style: CustomTextStyles
                            .headlineSmallNanumSquareNeoBlack900),
                    SizedBox(height: 66.h),
                    CustomImageView(
                        imagePath: Assets.images.imgImage257x241.path,
                        height: 257.h,
                        width: 241.w),
                    SizedBox(height: 34.h),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 53.w),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('강아지와 나의'.tr,
                                  style: CustomTextStyles
                                      .headlineSmallNanumSquareNeoOnErrorContainer),
                              Padding(
                                  padding: EdgeInsets.only(left: 8.w),
                                  child: Text('인싸력 테스트'.tr,
                                      style: theme.textTheme.titleLarge))
                            ])),
                    SizedBox(height: 18.h),
                    _buildClientTestimonials(context),
                    SizedBox(height: 30.h),
                    Container(
                        width: 296.w,
                        margin: EdgeInsets.symmetric(horizontal: 48.w),
                        child: Text(
                            '그렇다면 나의 댕댕은 인싸일까 아싸일까? 인싸인듯 인싸아닌 인싸같은 너!'.tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.bodyMediumBlack900
                                .copyWith(height: 1.43))),
                    SizedBox(height: 2.h),
                    Container(
                        width: 345.w,
                        margin: EdgeInsets.symmetric(horizontal: 23.w),
                        child: Text(
                            '댕댕과 나의 관계성향을 측정해 인싸지수를 확인하고, 서로의 일치도를 알려드립니다!'.tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.bodyMediumBlack900
                                .copyWith(height: 1.43))),
                    SizedBox(height: 15.h),
                    CustomElevatedButton(
                        width: 117.w,
                        text: '진단시작'.tr,
                        buttonStyle: CustomButtonStyles.fillBlack),
                    SizedBox(height: 64.h),
                    CustomImageView(
                        imagePath: Assets.images.imgImage1.path,
                        height: 257.h,
                        width: 241.w),
                    SizedBox(height: 35.h),
                    Text('삼칠이 작명소'.tr,
                        style: CustomTextStyles.titleLargeOnErrorContainer),
                    SizedBox(height: 18.h),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text('개성만점'.tr,
                          style: CustomTextStyles.bodyMediumBlack900),
                      Padding(
                          padding: EdgeInsets.only(left: 4.w),
                          child: Text('별명 짓기'.tr,
                              style: CustomTextStyles.bodyMediumBlack900)),
                      Padding(
                          padding: EdgeInsets.only(left: 1.w),
                          child: Text('!!!',
                              style: CustomTextStyles.bodyMediumBlack900))
                    ]),
                    SizedBox(height: 30.h),
                    Container(
                        width: 347.w,
                        margin: EdgeInsets.symmetric(horizontal: 22.w),
                        child: Text('함께 생활하는 반려 동물에게 어울리는 새로운 이름이 무엇이 있을까요?'.tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.bodyMediumBlack900
                                .copyWith(height: 1.43))),
                    SizedBox(height: 2.h),
                    Container(
                        width: 315.w,
                        margin: EdgeInsets.only(left: 39.w, right: 38.w),
                        child: Text('시적이고 직설적인 아메리카 원주민식 이름을 삼칠이가 지어드립니다.'.tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.bodyMediumBlack900
                                .copyWith(height: 1.43))),
                    SizedBox(height: 15.h),
                    CustomElevatedButton(
                        width: 117.w,
                        text: '진단시작'.tr,
                        buttonStyle: CustomButtonStyles.fillBlack,
                        onPressed: () {
                          onTaptf(context);
                        }),
                    SizedBox(height: 64.h),
                    CustomImageView(
                        imagePath: Assets.images.imgImage2.path,
                        height: 257.h,
                        width: 241.w),
                    SizedBox(height: 34.h),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text('나는'.tr,
                          style: CustomTextStyles
                              .headlineSmallNanumSquareNeoOnErrorContainer),
                      Padding(
                          padding: EdgeInsets.only(left: 2.w),
                          child: Text('개'.tr,
                              style: CustomTextStyles
                                  .headlineSmallNanumSquareNeoErrorContainer)),
                      Padding(
                          padding: EdgeInsets.only(left: 3.w),
                          child: Text('인간?'.tr,
                              style: CustomTextStyles
                                  .headlineSmallNanumSquareNeoOnErrorContainer)),
                      Padding(
                          padding: EdgeInsets.only(left: 2.w),
                          child: Text('고양이'.tr,
                              style: theme.textTheme.titleLarge)),
                      Padding(
                          padding: EdgeInsets.only(left: 3.w),
                          child: Text('인간?'.tr,
                              style: CustomTextStyles
                                  .headlineSmallNanumSquareNeoOnErrorContainer))
                    ]),
                    SizedBox(height: 18.h),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 39.w),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(bottom: 20.h),
                                  child: Text('반려 동물과 반려인이'.tr,
                                      style:
                                          CustomTextStyles.bodyMediumBlack900)),
                              Container(
                                  width: 185.w,
                                  margin: EdgeInsets.only(left: 6.w),
                                  child: Text('묘하게 닮아 있거나, 닮아 간다고 합니다.'.tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles
                                          .bodyMediumErrorContainer
                                          .copyWith(height: 1.43)))
                            ])),
                    SizedBox(height: 30.h),
                    Container(
                        width: 350.w,
                        margin: EdgeInsets.only(left: 21.w, right: 20.w),
                        child: Text(
                            '그래서 함께하는 반려 동물에 따라 나타나는 반려인의 특성과 관련된 연구가 있어요. 선행연구를 모아모아 반려견, 반려묘와 함께하는 반려인들을 중심으로 유형 진단 검사를 만들어 보았습니다.'
                                .tr,
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.bodyMediumBlack900
                                .copyWith(height: 1.43))),
                    SizedBox(height: 9.h),
                    CustomElevatedButton(
                        height: 36.h,
                        width: 117.w,
                        text: '진단시작'.tr,
                        buttonStyle: CustomButtonStyles.fillBlack),
                    SizedBox(height: 122.h),
                    _buildFooter(context)
                  ])))
                ]))));
  }

  /// Section Widget
  Widget _buildClientTestimonials(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 28.w, right: 32.w),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('인싸! 아싸!'.tr, style: CustomTextStyles.bodyMediumErrorContainer),
          Padding(
              padding: EdgeInsets.only(left: 7.w),
              child: Text('라는 말을 아십니까? 그렇다면 당신은 신세대!'.tr,
                  style: CustomTextStyles.bodyMediumBlack900))
        ]));
  }

  /// Section Widget
  Widget _buildFooter(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 60.h),
        decoration: AppDecoration.fillOnErrorContainer,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              imagePath: Assets.svg.imgTicket.path, height: 30.h, width: 92.w),
          SizedBox(height: 37.h),
          Row(children: [
            GestureDetector(
                onTap: () {
                  onTapTxtWidget(context);
                },
                child: Text('공지사항'.tr, style: theme.textTheme.bodySmall)),
            GestureDetector(
                onTap: () {
                  onTapTxtWidget1(context);
                },
                child: Padding(
                    padding: EdgeInsets.only(left: 17.w),
                    child:
                        Text('자주 묻는 질문'.tr, style: theme.textTheme.bodySmall))),
            Padding(
                padding: EdgeInsets.only(left: 17.w),
                child: Text('이벤트'.tr, style: theme.textTheme.bodySmall))
          ]),
          SizedBox(height: 9.h),
          Padding(
              padding: EdgeInsets.only(right: 19.w),
              child: Row(children: [
                GestureDetector(
                    onTap: () {
                      onTapTxtWidget2(context);
                    },
                    child: Text('고객센터'.tr,
                        style: CustomTextStyles.bodySmallGray500)),
                Padding(
                    padding: EdgeInsets.only(left: 18.w),
                    child: Text('이용약관'.tr,
                        style: CustomTextStyles.bodySmallGray500)),
                Padding(
                    padding: EdgeInsets.only(left: 16.w),
                    child: Text('개인정보취급방침'.tr,
                        style: CustomTextStyles.bodySmallGray500)),
                Padding(
                    padding: EdgeInsets.only(left: 19.w),
                    child: Text('기관 제휴 및 구매 문의'.tr,
                        style: CustomTextStyles.bodySmallGray500))
              ])),
          SizedBox(height: 38.h),
          Row(children: [
            Text('Address', style: theme.textTheme.bodySmall),
            Padding(
                padding: EdgeInsets.only(left: 131.w),
                child: Text('Contact', style: theme.textTheme.bodySmall))
          ]),
          SizedBox(height: 9.h),
          Padding(
              padding: EdgeInsets.only(right: 72.w),
              child: Row(children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text('서울시 구로구 디지털로34길 55'.tr,
                      style: theme.textTheme.bodySmall),
                  Text('코오롱싸이언스밸리2차 B101'.tr, style: theme.textTheme.bodySmall)
                ]),
                Padding(
                    padding: EdgeInsets.only(left: 19.w),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('business@cami.kr',
                              style: theme.textTheme.bodySmall),
                          Text('02-861-6828',
                              style: CustomTextStyles.bodySmall11)
                        ]))
              ])),
          SizedBox(height: 45.h),
          Text('주식회사 카미랩'.tr, style: theme.textTheme.bodySmall),
          Text('대표: 조윤수 | 사업자등록번호 : 539-81-02640'.tr,
              style: theme.textTheme.bodySmall),
          SizedBox(height: 15.h),
          Text('Copyright ⓒ 2023 CAMI Labs. All rights reserved.'.tr,
              style: theme.textTheme.bodySmall),
          SizedBox(height: 39.h),
          Row(children: [
            CustomImageView(
                imagePath: Assets.images.imgImage24x24.path,
                height: 24.r,
                width: 24.r),
            CustomImageView(
                imagePath: Assets.images.imgImage3.path,
                height: 24.r,
                width: 24.r,
                margin: EdgeInsets.only(left: 16.w)),
            CustomImageView(
                imagePath: Assets.images.imgImage4.path,
                height: 24.r,
                width: 24.r,
                margin: EdgeInsets.only(left: 16.w))
          ])
        ]));
  }

  /// Navigates to the namingScreen when the action is triggered.
  void onTaptf(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.namingScreen);
  }

  void onTapTxtWidget(BuildContext context) {
    // TODO: implement Actions
  }

  /// Navigates to the faqScreen when the action is triggered.
  void onTapTxtWidget1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.faqScreen);
  }

  /// Navigates to the contactUsRegisterScreen when the action is triggered.
  void onTapTxtWidget2(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.contactUsRegisterScreen);
  }
}
