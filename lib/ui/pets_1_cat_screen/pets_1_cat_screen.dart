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
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: Column(children: [
                  CustomImageView(
                      imagePath: Assets.images.imgAppNavBar.path,
                      height: 50.h,
                      width: 393.w),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(children: [
                                        Text('lbl_andrew'.tr,
                                            style: CustomTextStyles
                                                .bodyLargeGray900),
                                        Text('lbl118'.tr,
                                            style: CustomTextStyles
                                                .bodyLargeGray900)
                                      ]),
                                      SizedBox(height: 3.h),
                                      Text('msg_ydm2790_naver_com'.tr,
                                          style: CustomTextStyles
                                              .bodySmallGray50011)
                                    ])),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 2.w, top: 26.h, bottom: 42.h),
                                child: CustomIconButton(
                                    height: 32.r,
                                    width: 32.r,
                                    padding: EdgeInsets.all(8.w),
                                    child: CustomImageView(
                                        imagePath:
                                            Assets.svg.imgSettings.path)))
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
                ])))));
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
                    Text('lbl119'.tr, style: CustomTextStyles.bodyLargeGray500),
                    SizedBox(height: 7.h),
                    _buildWidget(context,
                        userName: 'lbl120'.tr, userText: 'lbl121'.tr),
                    SizedBox(height: 2.h),
                    _buildWidget(context,
                        userName: 'lbl122'.tr, userText: 'lbl121'.tr),
                    SizedBox(height: 2.h),
                    _buildWidget(context,
                        userName: 'lbl123'.tr, userText: 'lbl121'.tr),
                    SizedBox(height: 2.h),
                    _buildWidget(context,
                        userName: 'lbl124'.tr, userText: 'lbl121'.tr)
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
                              child: Text('lbl132'.tr,
                                  style: CustomTextStyles.bodySmallBlack900)))
                    ]))
              ])),
          Padding(
              padding: EdgeInsets.only(left: 24.w, bottom: 11.h),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [
                      Text('lbl36'.tr, style: theme.textTheme.bodyLarge),
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
                                child: Text('lbl133'.tr,
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
                              Text('lbl120'.tr,
                                  style: CustomTextStyles.bodyMediumBlack900),
                              Text('lbl_2018_08_12'.tr,
                                  style: CustomTextStyles.bodyMediumBlack900)
                            ])),
                    SizedBox(height: 2.h),
                    Container(
                        width: 126.w,
                        margin: EdgeInsets.only(right: 32.w),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('lbl122'.tr,
                                  style: CustomTextStyles.bodyMediumBlack900),
                              Text('lbl_5_2'.tr,
                                  style: CustomTextStyles.bodyMediumBlack900)
                            ])),
                    SizedBox(height: 2.h),
                    Container(
                        width: 151.w,
                        margin: EdgeInsets.only(right: 7.w),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('lbl99'.tr,
                                  style: CustomTextStyles.bodyMediumBlack900),
                              Text('lbl134'.tr,
                                  style: CustomTextStyles.bodyMediumBlack900)
                            ])),
                    SizedBox(height: 2.h),
                    Row(children: [
                      Text('lbl124'.tr,
                          style: CustomTextStyles.bodyMediumBlack900),
                      Padding(
                          padding: EdgeInsets.only(left: 42.w),
                          child: Text('lbl135'.tr,
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
        text: 'lbl_1_12'.tr,
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
        text: 'lbl131'.tr,
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
              child: Text('lbl129'.tr, style: theme.textTheme.bodyLarge)),
          GestureDetector(
              onTap: () {
                onTapTxtWidget(context);
              },
              child: Container(
                  width: 361.w,
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.w, vertical: 11.h),
                  decoration: AppDecoration.fillGray50,
                  child: Text('lbl'.tr, style: theme.textTheme.bodyLarge))),
          Container(
              width: 361.w,
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 11.h),
              decoration: AppDecoration.fillGray50,
              child: Text('lbl115'.tr, style: theme.textTheme.bodyLarge)),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 11.h),
              decoration: AppDecoration.fillGray50,
              child: Row(children: [
                Text('lbl130'.tr, style: theme.textTheme.bodyLarge),
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
                          child: Text('lbl_0'.tr,
                              style: theme.textTheme.bodySmall))
                    ]))
              ])),
          _buildTf(context),
          Container(
              width: 361.w,
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 11.h),
              decoration: AppDecoration.fillGray50,
              child: Text('lbl117'.tr, style: theme.textTheme.bodyLarge)),
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
              child: Text('lbl10'.tr, style: theme.textTheme.bodyLarge)),
          Container(
              width: 361.w,
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 11.h),
              decoration: AppDecoration.fillGray50,
              child: Text('lbl12'.tr, style: theme.textTheme.bodyLarge))
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
            Text('lbl10'.tr, style: theme.textTheme.bodySmall),
            GestureDetector(
                onTap: () {
                  onTapTxtWidget1(context);
                },
                child: Padding(
                    padding: EdgeInsets.only(left: 17.w),
                    child: Text('lbl11'.tr, style: theme.textTheme.bodySmall))),
            Padding(
                padding: EdgeInsets.only(left: 17.w),
                child: Text('lbl12'.tr, style: theme.textTheme.bodySmall))
          ]),
          SizedBox(height: 9.h),
          Padding(
              padding: EdgeInsets.only(right: 19.w),
              child: Row(children: [
                GestureDetector(
                    onTap: () {
                      onTapTxtWidget2(context);
                    },
                    child: Text('lbl13'.tr,
                        style: CustomTextStyles.bodySmallGray500)),
                Padding(
                    padding: EdgeInsets.only(left: 18.w),
                    child: Text('lbl14'.tr,
                        style: CustomTextStyles.bodySmallGray500)),
                Padding(
                    padding: EdgeInsets.only(left: 16.w),
                    child: Text('lbl15'.tr,
                        style: CustomTextStyles.bodySmallGray500)),
                Padding(
                    padding: EdgeInsets.only(left: 19.w),
                    child: Text('lbl16'.tr,
                        style: CustomTextStyles.bodySmallGray500))
              ])),
          SizedBox(height: 38.h),
          Row(children: [
            Text('lbl_address'.tr, style: theme.textTheme.bodySmall),
            Padding(
                padding: EdgeInsets.only(left: 131.w),
                child: Text('lbl_contact'.tr, style: theme.textTheme.bodySmall))
          ]),
          SizedBox(height: 9.h),
          Padding(
              padding: EdgeInsets.only(right: 72.w),
              child: Row(children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text('msg_34'.tr, style: theme.textTheme.bodySmall),
                  Text('msg_2_b101'.tr, style: theme.textTheme.bodySmall)
                ]),
                Padding(
                    padding: EdgeInsets.only(left: 19.w),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('msg_business_cami_kr'.tr,
                              style: theme.textTheme.bodySmall),
                          Text('lbl_02_861_6828'.tr,
                              style: CustomTextStyles.bodySmall11)
                        ]))
              ])),
          SizedBox(height: 45.h),
          Text('lbl17'.tr, style: theme.textTheme.bodySmall),
          Text('msg'.tr, style: theme.textTheme.bodySmall),
          SizedBox(height: 15.h),
          Text('msg_copyright_2023'.tr, style: theme.textTheme.bodySmall),
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
