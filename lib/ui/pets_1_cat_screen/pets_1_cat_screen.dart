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
import 'widgets/user_profile_item_widget.dart';

class PetsOneCatScreen extends StatelessWidget {
  const PetsOneCatScreen({super.key});

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
                SizedBox(height: 42.h),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 16.w, right: 71.w),
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
                                      Text('Andrew'.tr,
                                          style: CustomTextStyles
                                              .bodyLargeGray900),
                                      Text('님, 반가워요!'.tr,
                                          style:
                                              CustomTextStyles.bodyLargeGray900)
                                    ]),
                                    SizedBox(height: 3.h),
                                    Text('ydm2790@naver.com'.tr,
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
                _buildWidgetRow(context),
                SizedBox(height: 18.h),
                _buildView(context),
                SizedBox(height: 16.h),
                _buildUserProfile(context),
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
  Widget _buildWidgetRow(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 17.w),
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
        decoration: AppDecoration.outlineOnSecondaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder12),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              imagePath: Assets.images.imgImage84x84.path,
              height: 84.r,
              width: 84.r,
              radius: BorderRadius.circular(42.w),
              margin: EdgeInsets.only(top: 17.h, bottom: 33.h)),
          Padding(
              padding: EdgeInsets.only(left: 24.w, bottom: 11.h),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('등록된 정보가 없습니다.'.tr,
                        style: CustomTextStyles.bodyLargeGray500),
                    SizedBox(height: 7.h),
                    _buildWidget(context,
                        userName: '생년월일'.tr, userText: '-'.tr),
                    SizedBox(height: 2.h),
                    _buildWidget(context, userName: '연령'.tr, userText: '-'.tr),
                    SizedBox(height: 2.h),
                    _buildWidget(context, userName: '견종'.tr, userText: '-'.tr),
                    SizedBox(height: 2.h),
                    _buildWidget(context, userName: '성별'.tr, userText: '-'.tr)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildView(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 17.w),
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
        decoration: AppDecoration.outlineOnSecondaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder12),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(bottom: 16.h),
              child: Column(children: [
                CustomImageView(
                    imagePath: Assets.images.imgCatProfile.path,
                    height: 84.r,
                    width: 84.r,
                    radius: BorderRadius.circular(42.w)),
                SizedBox(height: 15.h),
                SizedBox(
                    height: 20.h,
                    width: 58.w,
                    child: Stack(alignment: Alignment.topLeft, children: [
                      Align(
                          child: Container(
                              height: 20.h,
                              width: 58.w,
                              decoration: BoxDecoration(
                                  color: appTheme.gray10001,
                                  borderRadius: BorderRadius.circular(10.w)))),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 6.w),
                              child: Text('정보수정'.tr,
                                  style: CustomTextStyles.bodySmallBlack900)))
                    ]))
              ])),
          Padding(
              padding: EdgeInsets.only(left: 24.w, bottom: 11.h),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [
                      Text('꼬리'.tr, style: theme.textTheme.bodyLarge),
                      Container(
                          height: 20.h,
                          width: 120.w,
                          margin: EdgeInsets.only(left: 10.w, top: 2.h),
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Align(
                                child: Container(
                                    height: 20.h,
                                    width: 120.w,
                                    decoration: BoxDecoration(
                                        color: theme.colorScheme.primary,
                                        borderRadius:
                                            BorderRadius.circular(8.w)))),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Text('성격유형 알아보기 >'.tr,
                                    style: CustomTextStyles.bodySmallBlack900))
                          ]))
                    ]),
                    SizedBox(height: 7.h),
                    Container(
                        width: 144.w,
                        margin: EdgeInsets.only(right: 15.w),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('생년월일'.tr,
                                  style: CustomTextStyles.bodyMediumBlack900),
                              Text('2018-08-12'.tr,
                                  style: CustomTextStyles.bodyMediumBlack900)
                            ])),
                    SizedBox(height: 2.h),
                    Container(
                        width: 126.w,
                        margin: EdgeInsets.only(right: 32.w),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('연령'.tr,
                                  style: CustomTextStyles.bodyMediumBlack900),
                              Text('5살 2개월'.tr,
                                  style: CustomTextStyles.bodyMediumBlack900)
                            ])),
                    SizedBox(height: 2.h),
                    Container(
                        width: 151.w,
                        margin: EdgeInsets.only(right: 7.w),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('묘종'.tr,
                                  style: CustomTextStyles.bodyMediumBlack900),
                              Text('코리안 숏 헤어'.tr,
                                  style: CustomTextStyles.bodyMediumBlack900)
                            ])),
                    SizedBox(height: 2.h),
                    Row(children: [
                      Text('성별'.tr, style: CustomTextStyles.bodyMediumBlack900),
                      Padding(
                          padding: EdgeInsets.only(left: 42.w),
                          child: Text('남아'.tr,
                              style: CustomTextStyles.bodyMediumBlack900))
                    ])
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return SizedBox(
        height: 180.h,
        child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 12.w);
            },
            itemCount: 2,
            itemBuilder: (context, index) {
              return UserProfileItemWidget(onTapRegisterDogButton: () {
                onTapRegisterDogButton(context);
              });
            }));
  }

  /// Section Widget
  Widget _buildTf(BuildContext context) {
    return CustomElevatedButton(
        height: 48.h,
        text: '1:1 문의'.tr,
        buttonStyle: CustomButtonStyles.fillGray,
        buttonTextStyle: theme.textTheme.bodyLarge,
        onPressed: () {
          onTapContactUsRegister(context);
        });
  }

  /// Section Widget
  Widget _buildTf1(BuildContext context) {
    return CustomElevatedButton(
        height: 48.h,
        text: '자주묻는질문'.tr,
        buttonStyle: CustomButtonStyles.fillGray,
        buttonTextStyle: theme.textTheme.bodyLarge,
        onPressed: () {
          onTaptFAQ(context);
        });
  }

  /// Section Widget
  Widget _buildMyPet(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(children: [
          Container(
              width: 361.w,
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 11.h),
              decoration: AppDecoration.fillPrimary,
              child: Text('나의 반려친구'.tr, style: theme.textTheme.bodyLarge)),
          GestureDetector(
              onTap: () {
                onTapTxtWidget(context);
              },
              child: Container(
                  width: 361.w,
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.w, vertical: 11.h),
                  decoration: AppDecoration.fillGray50,
                  child: Text('심리검사'.tr, style: theme.textTheme.bodyLarge))),
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
          _buildTf(context),
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
          _buildTf1(context),
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
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 60.h),
        decoration: AppDecoration.fillOnErrorContainer,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              imagePath: Assets.svg.imgTicket.path, height: 30.h, width: 92.w),
          SizedBox(height: 37.h),
          Row(children: [
            Text('공지사항'.tr, style: theme.textTheme.bodySmall),
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
            Text('Address'.tr, style: theme.textTheme.bodySmall),
            Padding(
                padding: EdgeInsets.only(left: 131.w),
                child: Text('Contact'.tr, style: theme.textTheme.bodySmall))
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
                          Text('business@cami.kr'.tr,
                              style: theme.textTheme.bodySmall),
                          Text('02-861-6828'.tr,
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
    required String userText,
  }) {
    return Row(children: [
      Text(userName,
          style: theme.textTheme.bodyMedium!.copyWith(color: appTheme.gray500)),
      Padding(
          padding: EdgeInsets.only(left: 43.w),
          child: Text(userText,
              style: theme.textTheme.bodyMedium!
                  .copyWith(color: appTheme.gray500)))
    ]);
  }

  /// Navigates to the newCatTabContainerScreen when the action is triggered.
  void onTapRegisterDogButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.newCatTab);
  }

  void onTapTxtWidget(BuildContext context) {
    // TODO: implement Actions
  }

  /// Navigates to the contactUsRegisterScreen when the action is triggered.
  void onTapContactUsRegister(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.contactUsRegisterScreen);
  }

  /// Navigates to the faqScreen when the action is triggered.
  void onTaptFAQ(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.faqScreen);
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
