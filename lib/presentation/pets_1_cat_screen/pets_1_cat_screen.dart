import '../pets_1_cat_screen/widgets/userprofile_item_widget.dart';
import 'package:cami_lab/core/app_export.dart';
import 'package:cami_lab/widgets/custom_elevated_button.dart';
import 'package:cami_lab/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class Pets1CatScreen extends StatelessWidget {
  const Pets1CatScreen({Key? key}) : super(key: key);

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
                      imagePath: ImageConstant.imgAppNavBar,
                      height: 50.v,
                      width: 393.h),
                  SizedBox(height: 42.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 16.h, right: 71.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgImage8,
                                height: 100.adaptSize,
                                width: 100.adaptSize,
                                radius: BorderRadius.circular(50.h)),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 24.h, top: 30.v, bottom: 25.v),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(children: [
                                        Text("lbl_andrew".tr,
                                            style: CustomTextStyles
                                                .bodyLargeGray900),
                                        Text("lbl118".tr,
                                            style: CustomTextStyles
                                                .bodyLargeGray900)
                                      ]),
                                      SizedBox(height: 3.v),
                                      Text("msg_ydm2790_naver_com".tr,
                                          style: CustomTextStyles
                                              .bodySmallGray50011)
                                    ])),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 2.h, top: 26.v, bottom: 42.v),
                                child: CustomIconButton(
                                    height: 32.adaptSize,
                                    width: 32.adaptSize,
                                    padding: EdgeInsets.all(8.h),
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgSettings)))
                          ]))),
                  SizedBox(height: 48.v),
                  _buildWidgetRow(context),
                  SizedBox(height: 18.v),
                  _buildView(context),
                  SizedBox(height: 16.v),
                  _buildUserProfile(context),
                  SizedBox(height: 22.v),
                  _buildMyPet(context),
                  SizedBox(height: 146.v),
                  _buildFooter(context)
                ])))));
  }

  /// Section Widget
  Widget _buildWidgetRow(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 17.h),
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.v),
        decoration: AppDecoration.outlineOnSecondaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgImage84x84,
                  height: 84.adaptSize,
                  width: 84.adaptSize,
                  radius: BorderRadius.circular(42.h),
                  margin: EdgeInsets.only(top: 17.v, bottom: 33.v)),
              Padding(
                  padding: EdgeInsets.only(left: 24.h, bottom: 11.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl119".tr,
                            style: CustomTextStyles.bodyLargeGray500),
                        SizedBox(height: 7.v),
                        _buildWidget(context,
                            userName: "lbl120".tr, userText: "lbl121".tr),
                        SizedBox(height: 2.v),
                        _buildWidget(context,
                            userName: "lbl122".tr, userText: "lbl121".tr),
                        SizedBox(height: 2.v),
                        _buildWidget(context,
                            userName: "lbl123".tr, userText: "lbl121".tr),
                        SizedBox(height: 2.v),
                        _buildWidget(context,
                            userName: "lbl124".tr, userText: "lbl121".tr)
                      ]))
            ]));
  }

  /// Section Widget
  Widget _buildView(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 17.h),
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.v),
        decoration: AppDecoration.outlineOnSecondaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                  padding: EdgeInsets.only(bottom: 16.v),
                  child: Column(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgImage11,
                        height: 84.adaptSize,
                        width: 84.adaptSize,
                        radius: BorderRadius.circular(42.h)),
                    SizedBox(height: 15.v),
                    SizedBox(
                        height: 20.v,
                        width: 58.h,
                        child: Stack(alignment: Alignment.topLeft, children: [
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  height: 20.v,
                                  width: 58.h,
                                  decoration: BoxDecoration(
                                      color: appTheme.gray10001,
                                      borderRadius:
                                          BorderRadius.circular(10.h)))),
                          Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 6.h),
                                  child: Text("lbl132".tr,
                                      style:
                                          CustomTextStyles.bodySmallBlack900)))
                        ]))
                  ])),
              Padding(
                  padding: EdgeInsets.only(left: 24.h, bottom: 11.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(children: [
                          Text("lbl36".tr, style: theme.textTheme.bodyLarge),
                          Container(
                              height: 20.v,
                              width: 120.h,
                              margin: EdgeInsets.only(left: 10.h, top: 2.v),
                              child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            height: 20.v,
                                            width: 120.h,
                                            decoration: BoxDecoration(
                                                color:
                                                    theme.colorScheme.primary,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        8.h)))),
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Text("lbl133".tr,
                                            style: CustomTextStyles
                                                .bodySmallBlack900))
                                  ]))
                        ]),
                        SizedBox(height: 7.v),
                        Container(
                            width: 144.h,
                            margin: EdgeInsets.only(right: 15.h),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("lbl120".tr,
                                      style:
                                          CustomTextStyles.bodyMediumBlack900),
                                  Text("lbl_2018_08_12".tr,
                                      style:
                                          CustomTextStyles.bodyMediumBlack900)
                                ])),
                        SizedBox(height: 2.v),
                        Container(
                            width: 126.h,
                            margin: EdgeInsets.only(right: 32.h),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("lbl122".tr,
                                      style:
                                          CustomTextStyles.bodyMediumBlack900),
                                  Text("lbl_5_2".tr,
                                      style:
                                          CustomTextStyles.bodyMediumBlack900)
                                ])),
                        SizedBox(height: 2.v),
                        Container(
                            width: 151.h,
                            margin: EdgeInsets.only(right: 7.h),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("lbl99".tr,
                                      style:
                                          CustomTextStyles.bodyMediumBlack900),
                                  Text("lbl134".tr,
                                      style:
                                          CustomTextStyles.bodyMediumBlack900)
                                ])),
                        SizedBox(height: 2.v),
                        Row(children: [
                          Text("lbl124".tr,
                              style: CustomTextStyles.bodyMediumBlack900),
                          Padding(
                              padding: EdgeInsets.only(left: 42.h),
                              child: Text("lbl135".tr,
                                  style: CustomTextStyles.bodyMediumBlack900))
                        ])
                      ]))
            ]));
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return SizedBox(
        height: 180.v,
        child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 15.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 12.h);
            },
            itemCount: 2,
            itemBuilder: (context, index) {
              return UserprofileItemWidget(onTapRegisterDogButton: () {
                onTapRegisterDogButton(context);
              });
            }));
  }

  /// Section Widget
  Widget _buildTf(BuildContext context) {
    return CustomElevatedButton(
        height: 48.v,
        text: "lbl_1_12".tr,
        buttonStyle: CustomButtonStyles.fillGray,
        buttonTextStyle: theme.textTheme.bodyLarge!,
        onPressed: () {
          onTaptf(context);
        });
  }

  /// Section Widget
  Widget _buildTf1(BuildContext context) {
    return CustomElevatedButton(
        height: 48.v,
        text: "lbl131".tr,
        buttonStyle: CustomButtonStyles.fillGray,
        buttonTextStyle: theme.textTheme.bodyLarge!,
        onPressed: () {
          onTaptf1(context);
        });
  }

  /// Section Widget
  Widget _buildMyPet(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: Column(children: [
          Container(
              width: 361.h,
              padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 11.v),
              decoration: AppDecoration.fillPrimary,
              child: Text("lbl129".tr, style: theme.textTheme.bodyLarge)),
          GestureDetector(
              onTap: () {
                onTapTxtWidget(context);
              },
              child: Container(
                  width: 361.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.h, vertical: 11.v),
                  decoration: AppDecoration.fillGray50,
                  child: Text("lbl".tr, style: theme.textTheme.bodyLarge))),
          Container(
              width: 361.h,
              padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 11.v),
              decoration: AppDecoration.fillGray50,
              child: Text("lbl115".tr, style: theme.textTheme.bodyLarge)),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 11.v),
              decoration: AppDecoration.fillGray50,
              child: Row(children: [
                Text("lbl130".tr, style: theme.textTheme.bodyLarge),
                Container(
                    height: 20.v,
                    width: 18.h,
                    margin: EdgeInsets.only(left: 5.h, bottom: 3.v),
                    child: Stack(alignment: Alignment.topCenter, children: [
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                              height: 18.adaptSize,
                              width: 18.adaptSize,
                              decoration: BoxDecoration(
                                  color: appTheme.black900,
                                  borderRadius: BorderRadius.circular(9.h)))),
                      Align(
                          alignment: Alignment.topCenter,
                          child: Text("lbl_0".tr,
                              style: theme.textTheme.bodySmall))
                    ]))
              ])),
          _buildTf(context),
          Container(
              width: 361.h,
              padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 11.v),
              decoration: AppDecoration.fillGray50,
              child: Text("lbl117".tr, style: theme.textTheme.bodyLarge)),
          Container(
              width: 361.h,
              padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 12.v),
              decoration: AppDecoration.fillGray50,
              child: Divider(color: appTheme.gray20001, endIndent: 26.h)),
          _buildTf1(context),
          Container(
              width: 361.h,
              padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 11.v),
              decoration: AppDecoration.fillGray50,
              child: Text("lbl10".tr, style: theme.textTheme.bodyLarge)),
          Container(
              width: 361.h,
              padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 11.v),
              decoration: AppDecoration.fillGray50,
              child: Text("lbl12".tr, style: theme.textTheme.bodyLarge))
        ]));
  }

  /// Section Widget
  Widget _buildFooter(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 60.v),
        decoration: AppDecoration.fillOnErrorContainer,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              imagePath: ImageConstant.imgTicket, height: 30.v, width: 92.h),
          SizedBox(height: 37.v),
          Row(children: [
            Text("lbl10".tr, style: theme.textTheme.bodySmall),
            GestureDetector(
                onTap: () {
                  onTapTxtWidget1(context);
                },
                child: Padding(
                    padding: EdgeInsets.only(left: 17.h),
                    child: Text("lbl11".tr, style: theme.textTheme.bodySmall))),
            Padding(
                padding: EdgeInsets.only(left: 17.h),
                child: Text("lbl12".tr, style: theme.textTheme.bodySmall))
          ]),
          SizedBox(height: 9.v),
          Padding(
              padding: EdgeInsets.only(right: 19.h),
              child: Row(children: [
                GestureDetector(
                    onTap: () {
                      onTapTxtWidget2(context);
                    },
                    child: Text("lbl13".tr,
                        style: CustomTextStyles.bodySmallGray500)),
                Padding(
                    padding: EdgeInsets.only(left: 18.h),
                    child: Text("lbl14".tr,
                        style: CustomTextStyles.bodySmallGray500)),
                Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Text("lbl15".tr,
                        style: CustomTextStyles.bodySmallGray500)),
                Padding(
                    padding: EdgeInsets.only(left: 19.h),
                    child: Text("lbl16".tr,
                        style: CustomTextStyles.bodySmallGray500))
              ])),
          SizedBox(height: 38.v),
          Row(children: [
            Text("lbl_address".tr, style: theme.textTheme.bodySmall),
            Padding(
                padding: EdgeInsets.only(left: 131.h),
                child: Text("lbl_contact".tr, style: theme.textTheme.bodySmall))
          ]),
          SizedBox(height: 9.v),
          Padding(
              padding: EdgeInsets.only(right: 72.h),
              child: Row(children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text("msg_34".tr, style: theme.textTheme.bodySmall),
                  Text("msg_2_b101".tr, style: theme.textTheme.bodySmall)
                ]),
                Padding(
                    padding: EdgeInsets.only(left: 19.h),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("msg_business_cami_kr".tr,
                              style: theme.textTheme.bodySmall),
                          Text("lbl_02_861_6828".tr,
                              style: CustomTextStyles.bodySmall11)
                        ]))
              ])),
          SizedBox(height: 45.v),
          Text("lbl17".tr, style: theme.textTheme.bodySmall),
          Text("msg".tr, style: theme.textTheme.bodySmall),
          SizedBox(height: 15.v),
          Text("msg_copyright_2023".tr, style: theme.textTheme.bodySmall),
          SizedBox(height: 38.v),
          Row(children: [
            CustomImageView(
                imagePath: ImageConstant.imgImage24x24,
                height: 24.adaptSize,
                width: 24.adaptSize),
            CustomImageView(
                imagePath: ImageConstant.imgImage3,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(left: 16.h)),
            CustomImageView(
                imagePath: ImageConstant.imgImage4,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(left: 16.h))
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
          padding: EdgeInsets.only(left: 43.h),
          child: Text(userText,
              style: theme.textTheme.bodyMedium!
                  .copyWith(color: appTheme.gray500)))
    ]);
  }

  /// Navigates to the newCatTabContainerScreen when the action is triggered.
  onTapRegisterDogButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.newCatTabContainerScreen);
  }

  onTapTxtWidget(BuildContext context) {
    // TODO: implement Actions
  }

  /// Navigates to the contactUsRegisterScreen when the action is triggered.
  onTaptf(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.contactUsRegisterScreen);
  }

  /// Navigates to the faqScreen when the action is triggered.
  onTaptf1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.faqScreen);
  }

  /// Navigates to the faqScreen when the action is triggered.
  onTapTxtWidget1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.faqScreen);
  }

  /// Navigates to the contactUsRegisterScreen when the action is triggered.
  onTapTxtWidget2(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.contactUsRegisterScreen);
  }
}
