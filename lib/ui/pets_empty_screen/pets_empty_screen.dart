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
import '/ui/shared/cami_app_bar.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_icon_button.dart';
import '/widgets/custom_image_view.dart';

class PetsEmptyScreen extends StatelessWidget {
  const PetsEmptyScreen({super.key});

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
                SizedBox(height: 44.h),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 15.w, right: 72.w),
                        child: Row(children: [
                          CustomImageView(
                              imagePath: Assets.images.imgImage8.path,
                              height: 100.r,
                              width: 100.r,
                              radius: BorderRadius.circular(50.w)),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 24.w, top: 30.h, bottom: 25.h),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(children: [
                                      Text('Andrew',
                                          style: CustomTextStyles
                                              .bodyLargeGray900),
                                      Text('님, 반가워요!'.tr,
                                          style:
                                              CustomTextStyles.bodyLargeGray900)
                                    ]),
                                    SizedBox(height: 3.h),
                                    Text('ydm2790@naver.com',
                                        style:
                                            CustomTextStyles.bodySmallGray50011)
                                  ])),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 2.w, top: 26.h, bottom: 42.h),
                              child: CustomIconButton(
                                  height: 32.r,
                                  width: 32.r,
                                  padding: EdgeInsets.all(8.w),
                                  child: CustomImageView(
                                      imagePath: Assets.svg.imgSettings.path)))
                        ]))),
                SizedBox(height: 48.h),
                Padding(
                    padding: EdgeInsets.only(left: 15.w, right: 19.w),
                    child: _buildWidget(context,
                        userName: '등록된 정보가 없습니다.'.tr,
                        userAge: '생년월일'.tr,
                        userLocation: '-',
                        userOccupation: '연령'.tr,
                        userDescription: '-',
                        userInterests: '견종'.tr,
                        userHobbies: '-',
                        userGoals: '성별'.tr,
                        userSkills: '-')),
                SizedBox(height: 18.h),
                Padding(
                    padding: EdgeInsets.only(left: 15.w, right: 19.w),
                    child: _buildWidget(context,
                        userName: '등록된 정보가 없습니다.'.tr,
                        userAge: '생년월일'.tr,
                        userLocation: '-',
                        userOccupation: '연령'.tr,
                        userDescription: '-',
                        userInterests: '묘종'.tr,
                        userHobbies: '-',
                        userGoals: '성별'.tr,
                        userSkills: '-')),
                SizedBox(height: 16.h),
                _buildPetRegistration(context),
                SizedBox(height: 22.h),
                _buildMyPet(context),
                SizedBox(height: 146.h),
                _buildFooter(context)
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTf(BuildContext context) {
    return CustomElevatedButton(
        height: 32.h,
        width: 149.w,
        text: '강아지 등록하기'.tr,
        margin: EdgeInsets.only(bottom: 24.h),
        buttonStyle: CustomButtonStyles.fillBlue,
        buttonTextStyle: CustomTextStyles.bodyMediumBlack900,
        alignment: Alignment.bottomCenter);
  }

  /// Section Widget
  Widget _buildTf1(BuildContext context) {
    return CustomElevatedButton(
        height: 32.h,
        width: 149.w,
        text: '고양이 등록하기'.tr,
        margin: EdgeInsets.only(bottom: 24.h),
        buttonStyle: CustomButtonStyles.fillBlue,
        buttonTextStyle: CustomTextStyles.bodyMediumBlack900,
        alignment: Alignment.bottomCenter);
  }

  /// Section Widget
  Widget _buildPetRegistration(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              decoration: AppDecoration.outlineOnSecondaryContainer
                  .copyWith(borderRadius: BorderRadiusStyle.circleBorder12),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 16.h),
                    Text('나는 멍집사'.tr, style: theme.textTheme.bodyLarge),
                    SizedBox(height: 25.h),
                    SizedBox(
                        height: 112.h,
                        width: 149.w,
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          CustomImageView(
                              imagePath: Assets.images.imgImage112x138.path,
                              height: 112.h,
                              width: 138.w,
                              alignment: Alignment.center),
                          _buildTf(context)
                        ]))
                  ])),
          Container(
              margin: EdgeInsets.only(left: 12.w),
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              decoration: AppDecoration.outlineOnSecondaryContainer
                  .copyWith(borderRadius: BorderRadiusStyle.circleBorder12),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 16.h),
                    Text('나는 냥집사'.tr, style: theme.textTheme.bodyLarge),
                    SizedBox(height: 25.h),
                    SizedBox(
                        height: 112.h,
                        width: 149.w,
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          CustomImageView(
                              imagePath: Assets.images.imgImage10.path,
                              height: 112.h,
                              width: 138.w,
                              alignment: Alignment.center,
                              onTap: () {
                                onTapImgIMAGE(context);
                              }),
                          _buildTf1(context)
                        ]))
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildInquiries(BuildContext context) {
    return CustomElevatedButton(
        height: 48.h,
        text: '1:1 문의'.tr,
        buttonStyle: CustomButtonStyles.fillGray,
        buttonTextStyle: theme.textTheme.bodyLarge,
        onPressed: () {
          onTapInquiries(context);
        });
  }

  /// Section Widget
  Widget _buildFaq(BuildContext context) {
    return CustomElevatedButton(
        height: 48.h,
        text: '자주묻는질문'.tr,
        buttonStyle: CustomButtonStyles.fillGray,
        buttonTextStyle: theme.textTheme.bodyLarge,
        onPressed: () {
          onTapFaq(context);
        });
  }

  /// Section Widget
  Widget _buildMyPet(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(children: [
          Container(
              width: 361.w,
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 11.h),
              decoration: AppDecoration.fillPrimary,
              child: Text('나의 반려친구'.tr, style: theme.textTheme.bodyLarge)),
          Container(
              width: 361.w,
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 11.h),
              decoration: AppDecoration.fillGray50,
              child: Text('심리검사'.tr, style: theme.textTheme.bodyLarge)),
          Container(
              width: 361.w,
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 11.h),
              decoration: AppDecoration.fillGray50,
              child: Text('방문교육'.tr, style: theme.textTheme.bodyLarge)),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 11.h),
              decoration: AppDecoration.fillGray50,
              child: Row(children: [
                Text('보유쿠폰'.tr, style: theme.textTheme.bodyLarge),
                Container(
                    height: 20.h,
                    width: 18.w,
                    margin: EdgeInsets.only(left: 5.w, bottom: 3.h),
                    child: Stack(alignment: Alignment.topCenter, children: [
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                              height: 18.r,
                              width: 18.r,
                              decoration: BoxDecoration(
                                  color: appTheme.black900,
                                  borderRadius: BorderRadius.circular(9.w)))),
                      Align(
                          alignment: Alignment.topCenter,
                          child: Text('0', style: theme.textTheme.bodySmall))
                    ]))
              ])),
          _buildInquiries(context),
          Container(
              width: 361.w,
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 11.h),
              decoration: AppDecoration.fillGray50,
              child: Text('로그아웃'.tr, style: theme.textTheme.bodyLarge)),
          Container(
              width: 361.w,
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
              decoration: AppDecoration.fillGray50,
              child: Divider(color: appTheme.gray20001, endIndent: 26.w)),
          _buildFaq(context),
          Container(
              width: 361.w,
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 11.h),
              decoration: AppDecoration.fillGray50,
              child: Text('공지사항'.tr, style: theme.textTheme.bodyLarge)),
          Container(
              width: 361.w,
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 11.h),
              decoration: AppDecoration.fillGray50,
              child: Text('이벤트'.tr, style: theme.textTheme.bodyLarge))
        ]));
  }

  /// Section Widget
  Widget _buildFooter(BuildContext context) {
    return Container(
        width: 391.w,
        padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 60.h),
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
              padding: EdgeInsets.only(right: 21.w),
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
              padding: EdgeInsets.only(right: 74.w),
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
          SizedBox(height: 38.h),
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

  /// Common widget
  Widget _buildWidget(
    BuildContext context, {
    required String userName,
    required String userAge,
    required String userLocation,
    required String userOccupation,
    required String userDescription,
    required String userInterests,
    required String userHobbies,
    required String userGoals,
    required String userSkills,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
        decoration: AppDecoration.outlineOnSecondaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder12),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              imagePath: Assets.images.imgImage9.path,
              height: 84.r,
              width: 84.r,
              radius: BorderRadius.circular(42.w),
              margin: EdgeInsets.only(top: 17.h, bottom: 33.h)),
          Padding(
              padding: EdgeInsets.only(left: 24.w, bottom: 11.h),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(userName,
                        style: CustomTextStyles.bodyLargeGray500
                            .copyWith(color: appTheme.gray500)),
                    SizedBox(height: 7.h),
                    Row(children: [
                      Text(userAge,
                          style: theme.textTheme.bodyMedium!
                              .copyWith(color: appTheme.gray500)),
                      Padding(
                          padding: EdgeInsets.only(left: 16.w),
                          child: Text(userLocation,
                              style: theme.textTheme.bodyMedium!
                                  .copyWith(color: appTheme.gray500)))
                    ]),
                    SizedBox(height: 2.h),
                    Row(children: [
                      Text(userOccupation,
                          style: theme.textTheme.bodyMedium!
                              .copyWith(color: appTheme.gray500)),
                      Padding(
                          padding: EdgeInsets.only(left: 43.w),
                          child: Text(userDescription,
                              style: theme.textTheme.bodyMedium!
                                  .copyWith(color: appTheme.gray500)))
                    ]),
                    SizedBox(height: 3.h),
                    Row(children: [
                      Text(userInterests,
                          style: theme.textTheme.bodyMedium!
                              .copyWith(color: appTheme.gray500)),
                      Padding(
                          padding: EdgeInsets.only(left: 42.w),
                          child: Text(userHobbies,
                              style: theme.textTheme.bodyMedium!
                                  .copyWith(color: appTheme.gray500)))
                    ]),
                    SizedBox(height: 2.h),
                    Row(children: [
                      Text(userGoals,
                          style: theme.textTheme.bodyMedium!
                              .copyWith(color: appTheme.gray500)),
                      Padding(
                          padding: EdgeInsets.only(left: 42.w),
                          child: Text(userSkills,
                              style: theme.textTheme.bodyMedium!
                                  .copyWith(color: appTheme.gray500)))
                    ])
                  ]))
        ]));
  }

  /// Navigates to the newCatTabContainerScreen when the action is triggered.
  void onTapImgIMAGE(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.newCatTab);
  }

  /// Navigates to the contactUsRegisterScreen when the action is triggered.
  void onTapInquiries(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.contactUsRegisterScreen);
  }

  /// Navigates to the faqScreen when the action is triggered.
  void onTapFaq(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.faqScreen);
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
