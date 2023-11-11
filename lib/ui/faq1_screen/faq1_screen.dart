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
import '/widgets/custom_drop_down.dart';
import '/widgets/custom_image_view.dart';

// ignore: must_be_immutable
class Faq1Screen extends StatelessWidget {
  Faq1Screen({super.key});

  final dropdownItemList0 = ['Item One', 'Item Two', 'Item Three'];
  final dropdownItemList1 = ['Item One', 'Item Two', 'Item Three'];
  final dropdownItemList2 = ['Item One', 'Item Two', 'Item Three'];
  final dropdownItemList3 = ['Item One', 'Item Two', 'Item Three'];
  final dropdownItemList4 = ['Item One', 'Item Two', 'Item Three'];
  final dropdownItemList5 = ['Item One', 'Item Two', 'Item Three'];
  final dropdownItemList6 = ['Item One', 'Item Two', 'Item Three'];
  final dropdownItemList7 = ['Item One', 'Item Two', 'Item Three'];

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
                        child: Row(children: [
                          CustomImageView(
                              imagePath: Assets.svg.imgArrowLeft.path,
                              height: 28.h,
                              width: 20.w,
                              onTap: () {
                                onTapImgArrowLeft(context);
                              }),
                          Padding(
                              padding: EdgeInsets.only(left: 106.w),
                              child: Text('자주 묻는 질문'.tr,
                                  style: CustomTextStyles.bodyLarge18))
                        ]))),
                SizedBox(height: 15.h),
                Divider(indent: 16.w, endIndent: 16.w),
                SizedBox(height: 9.h),
                _buildFrameRow1(context),
                SizedBox(height: 7.h),
                Divider(indent: 16.w, endIndent: 16.w),
                SizedBox(height: 9.h),
                _buildFrameRow2(context),
                SizedBox(height: 7.h),
                Divider(indent: 16.w, endIndent: 16.w),
                SizedBox(height: 10.h),
                _buildFrameRow3(context),
                SizedBox(height: 5.h),
                Divider(indent: 16.w, endIndent: 16.w),
                SizedBox(height: 10.h),
                _buildFrameRow4(context),
                SizedBox(height: 5.h),
                Divider(indent: 16.w, endIndent: 16.w),
                SizedBox(height: 9.h),
                _buildFrameRow5(context),
                SizedBox(height: 7.h),
                Divider(indent: 16.w, endIndent: 16.w),
                SizedBox(height: 9.h),
                _buildFrameRow6(context),
                SizedBox(height: 7.h),
                Divider(indent: 16.w, endIndent: 16.w),
                SizedBox(height: 9.h),
                _buildFrameRow7(context),
                SizedBox(height: 7.h),
                Divider(indent: 16.w, endIndent: 16.w),
                SizedBox(height: 9.h),
                _buildFrameRow8(context),
                SizedBox(height: 136.h),
                _buildFrameColumn(context)
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameRow1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: Text('Q.',
                  style: CustomTextStyles.bodyMediumNanumSquareNeoBlack90013)),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 10.w),
                  child: CustomDropDown(
                      icon: Container(
                          margin: EdgeInsets.only(left: 30.w),
                          child: CustomImageView(
                              imagePath: Assets.svg.imgArrowdownGray700.path,
                              height: 32.h,
                              width: 30.w)),
                      hintText: '결제가 되지 않아요'.tr,
                      items: dropdownItemList0,
                      onChanged: (value) {})))
        ]));
  }

  /// Section Widget
  Widget _buildFrameRow2(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: Text('Q.',
                  style: CustomTextStyles.bodyMediumNanumSquareNeoBlack90013)),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 10.w),
                  child: CustomDropDown(
                      icon: Container(
                          margin: EdgeInsets.only(left: 30.w),
                          child: CustomImageView(
                              imagePath: Assets.svg.imgArrowdownGray700.path,
                              height: 32.h,
                              width: 30.w)),
                      hintText: '회원 탈퇴는 어떻게 하나요?'.tr,
                      items: dropdownItemList1,
                      onChanged: (value) {})))
        ]));
  }

  /// Section Widget
  Widget _buildFrameRow3(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 10.h, bottom: 14.h),
                  child: Text('Q.',
                      style:
                          CustomTextStyles.bodyMediumNanumSquareNeoBlack90013)),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(left: 10.w),
                      child: CustomDropDown(
                          icon: Container(
                              margin: EdgeInsets.only(left: 18.w),
                              child: CustomImageView(
                                  imagePath:
                                      Assets.svg.imgArrowdownGray700.path,
                                  height: 32.h,
                                  width: 30.w)),
                          hintText: '검사를 다 끝내지 못했는데 이어서 하려면 어떻게 하나요?'.tr,
                          items: dropdownItemList2,
                          onChanged: (value) {})))
            ]));
  }

  /// Section Widget
  Widget _buildFrameRow4(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 11.h, bottom: 13.h),
                  child: Text('Q.',
                      style:
                          CustomTextStyles.bodyMediumNanumSquareNeoBlack90013)),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(left: 10.w),
                      child: CustomDropDown(
                          icon: Container(
                              margin: EdgeInsets.only(left: 15.w),
                              child: CustomImageView(
                                  imagePath:
                                      Assets.svg.imgArrowdownGray700.path,
                                  height: 32.h,
                                  width: 30.w)),
                          hintText: '결제 성공 후 검사를 바로 하지 못했는데 어떻게 해야 하나요?'.tr,
                          items: dropdownItemList3,
                          onChanged: (value) {})))
            ]));
  }

  /// Section Widget
  Widget _buildFrameRow5(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: Text('Q.',
                  style: CustomTextStyles.bodyMediumNanumSquareNeoBlack90013)),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 10.w),
                  child: CustomDropDown(
                      icon: Container(
                          margin: EdgeInsets.only(left: 30.w),
                          child: CustomImageView(
                              imagePath: Assets.svg.imgArrowdownGray700.path,
                              height: 32.h,
                              width: 30.w)),
                      hintText: '어린 강아지도 심리검사를 받을 수 있나요?'.tr,
                      items: dropdownItemList4,
                      onChanged: (value) {})))
        ]));
  }

  /// Section Widget
  Widget _buildFrameRow6(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: Text('Q.',
                  style: CustomTextStyles.bodyMediumNanumSquareNeoBlack90013)),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 10.w),
                  child: CustomDropDown(
                      icon: Container(
                          margin: EdgeInsets.only(left: 30.w),
                          child: CustomImageView(
                              imagePath: Assets.svg.imgArrowdownGray700.path,
                              height: 32.h,
                              width: 30.w)),
                      hintText: '결과보고서 인쇄 방법'.tr,
                      items: dropdownItemList5,
                      onChanged: (value) {})))
        ]));
  }

  /// Section Widget
  Widget _buildFrameRow7(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: Text('Q.',
                  style: CustomTextStyles.bodyMediumNanumSquareNeoBlack90013)),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 10.w),
                  child: CustomDropDown(
                      icon: Container(
                          margin: EdgeInsets.only(left: 30.w),
                          child: CustomImageView(
                              imagePath: Assets.svg.imgArrowdownGray700.path,
                              height: 32.h,
                              width: 30.w)),
                      hintText: '결과보고서 다시보기'.tr,
                      items: dropdownItemList6,
                      onChanged: (value) {})))
        ]));
  }

  /// Section Widget
  Widget _buildFrameRow8(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: Text('Q.',
                  style: CustomTextStyles.bodyMediumNanumSquareNeoBlack90013)),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 10.w),
                  child: CustomDropDown(
                      icon: Container(
                          margin: EdgeInsets.only(left: 30.w),
                          child: CustomImageView(
                              imagePath: Assets.svg.imgArrowdownGray700.path,
                              height: 32.h,
                              width: 30.w)),
                      hintText: '구매한 쿠폰이 보이지 않아요.'.tr,
                      items: dropdownItemList7,
                      onChanged: (value) {})))
        ]));
  }

  /// Section Widget
  Widget _buildFrameColumn(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 60.h),
        decoration: AppDecoration.fillOnErrorContainer,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              imagePath: Assets.svg.imgTicket.path, height: 30.h, width: 92.w),
          SizedBox(height: 37.h),
          Row(children: [
            Text('공지사항'.tr, style: theme.textTheme.bodySmall),
            Padding(
                padding: EdgeInsets.only(left: 19.w),
                child: Text('자주 묻는 질문'.tr, style: theme.textTheme.bodySmall)),
            Padding(
                padding: EdgeInsets.only(left: 21.w),
                child: Text('이벤트'.tr, style: theme.textTheme.bodySmall))
          ]),
          SizedBox(height: 9.h),
          Padding(
              padding: EdgeInsets.only(right: 9.w),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('고객센터'.tr, style: CustomTextStyles.bodySmallGray500),
                    Text('이용약관'.tr, style: CustomTextStyles.bodySmallGray500),
                    Text('개인정보취급방침'.tr,
                        style: CustomTextStyles.bodySmallGray500),
                    Text('기관 제휴 및 구매 문의'.tr,
                        style: CustomTextStyles.bodySmallGray500)
                  ])),
          SizedBox(height: 38.h),
          Padding(
              padding: EdgeInsets.only(right: 63.w),
              child: Row(children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text('Address', style: theme.textTheme.bodySmall),
                  SizedBox(height: 9.h),
                  Text('서울시 구로구 디지털로34길 55'.tr,
                      style: theme.textTheme.bodySmall),
                  Text('코오롱싸이언스밸리2차 B101'.tr, style: theme.textTheme.bodySmall)
                ]),
                Padding(
                    padding: EdgeInsets.only(left: 27.w),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Contact', style: theme.textTheme.bodySmall),
                          SizedBox(height: 10.h),
                          Text('business@cami.kr',
                              style: theme.textTheme.bodySmall),
                          Text('02-861-6828', style: theme.textTheme.bodySmall)
                        ]))
              ])),
          SizedBox(height: 45.h),
          Text('주식회사 카미랩'.tr, style: theme.textTheme.bodySmall),
          Text('대표: 조윤수 | 사업자등록번호 : 539-81-02640'.tr,
              style: theme.textTheme.bodySmall),
          SizedBox(height: 15.h),
          Text('Copyright ⓒ 2023 CAMI Labs. All rights reserved.'.tr,
              style: theme.textTheme.bodySmall),
          SizedBox(height: 38.h),
          Row(children: [
            CustomImageView(
                imagePath: Assets.images.imgImage.path,
                height: 24.r,
                width: 24.r),
            CustomImageView(
                imagePath: Assets.images.imgImage.path,
                height: 24.r,
                width: 24.r,
                margin: EdgeInsets.only(left: 16.w)),
            CustomImageView(
                imagePath: Assets.images.imgImage.path,
                height: 24.r,
                width: 24.r,
                margin: EdgeInsets.only(left: 16.w))
          ])
        ]));
  }

  /// Navigates back to the previous screen.
  void onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
