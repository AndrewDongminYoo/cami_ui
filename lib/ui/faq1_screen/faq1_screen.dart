// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/localization/app_localization.dart';
import '/theme/custom_text_style.dart';
import '/ui/shared/cami_app_bar.dart';
import '/ui/shared/cami_app_footer.dart';
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
                                Navigator.pop(context);
                              }),
                          Padding(
                              padding: EdgeInsets.only(left: 106.w),
                              child: Text('자주 묻는 질문'.tr,
                                  style: CustomTextStyles.bodyLarge18))
                        ]))),
                SizedBox(height: 15.h),
                Divider(indent: 16.w, endIndent: 16.w),
                SizedBox(height: 9.h),
                _buildCannotPay(context),
                SizedBox(height: 7.h),
                Divider(indent: 16.w, endIndent: 16.w),
                SizedBox(height: 9.h),
                _buildCancelMembership(context),
                SizedBox(height: 7.h),
                Divider(indent: 16.w, endIndent: 16.w),
                SizedBox(height: 10.h),
                _buildDidNotFinish(context),
                SizedBox(height: 5.h),
                Divider(indent: 16.w, endIndent: 16.w),
                SizedBox(height: 10.h),
                _buildCanIResume(context),
                SizedBox(height: 5.h),
                Divider(indent: 16.w, endIndent: 16.w),
                SizedBox(height: 9.h),
                _buildYoungPetCanTakeATest(context),
                SizedBox(height: 7.h),
                Divider(indent: 16.w, endIndent: 16.w),
                SizedBox(height: 9.h),
                _buildHowToPrint(context),
                SizedBox(height: 7.h),
                Divider(indent: 16.w, endIndent: 16.w),
                SizedBox(height: 9.h),
                _buildHowToReviewResult(context),
                SizedBox(height: 7.h),
                Divider(indent: 16.w, endIndent: 16.w),
                SizedBox(height: 9.h),
                _buildCannotFindCoupon(context),
                SizedBox(height: 136.h),
                const CamiAppFooter()
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// I can't make a payment
  Widget _buildCannotPay(BuildContext context) {
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

  /// How do I cancel my membership?
  Widget _buildCancelMembership(BuildContext context) {
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

  /// I didn't finish my purchased pet personality test, how do I continue?
  Widget _buildDidNotFinish(BuildContext context) {
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

  /// After a successful payment, I didn't get to take my purchased pet personality test right away, what should I do?
  Widget _buildCanIResume(BuildContext context) {
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

  /// Can a young dog take a psychological test?
  Widget _buildYoungPetCanTakeATest(BuildContext context) {
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

  /// How to print a results report
  Widget _buildHowToPrint(BuildContext context) {
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

  /// Review the Results Report
  Widget _buildHowToReviewResult(BuildContext context) {
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

  /// I don't see the coupon that I purchased.
  Widget _buildCannotFindCoupon(BuildContext context) {
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
}
