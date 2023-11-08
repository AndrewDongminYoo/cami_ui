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
import '/widgets/custom_drop_down.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_image_view.dart';
import '/widgets/custom_radio_button.dart';
import '/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class SignUpFormScreen extends StatelessWidget {
  SignUpFormScreen({super.key});

  final appNavBarController = TextEditingController();
  final editText1Controller = TextEditingController();
  final editText2Controller = TextEditingController();
  final editText3Controller = TextEditingController();
  final editText4Controller = TextEditingController();
  final dropdownItemList0 = ['Item One', 'Item Two', 'Item Three'];
  final dropdownItemList1 = ['Item One', 'Item Two', 'Item Three'];
  final dropdownItemList2 = ['Item One', 'Item Two', 'Item Three'];

  String genderRadioGroup = '';
  List<String> radioList = ['lbl113', 'lbl114', 'lbl150'];

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        appBar: const CamiAppBar(),
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 79.h),
                Align(
                    child:
                        Text('lbl143'.tr, style: theme.textTheme.displaySmall)),
                SizedBox(height: 15.h),
                Align(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 43.w),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('lbl144'.tr,
                                  style: CustomTextStyles.bodyMediumGray60001),
                              Padding(
                                  padding: EdgeInsets.only(left: 4.w),
                                  child: Text('lbl_cami'.tr,
                                      style: CustomTextStyles
                                          .bodyMediumGray60001)),
                              Padding(
                                  padding: EdgeInsets.only(left: 1.w),
                                  child: Text('msg58'.tr,
                                      style:
                                          CustomTextStyles.bodyMediumGray60001))
                            ]))),
                SizedBox(height: 64.h),
                Padding(
                    padding: EdgeInsets.only(left: 16.w),
                    child: Text('lbl145'.tr,
                        style: CustomTextStyles.bodyMediumOnPrimary)),
                SizedBox(height: 9.h),
                _buildAppNavBar(context),
                SizedBox(height: 33.h),
                Padding(
                    padding: EdgeInsets.only(left: 16.w),
                    child: Text('lbl146'.tr,
                        style: CustomTextStyles.bodyMediumOnPrimary)),
                SizedBox(height: 9.h),
                _buildEditText1(context),
                SizedBox(height: 33.h),
                Padding(
                    padding: EdgeInsets.only(left: 16.w),
                    child: Text('lbl147'.tr,
                        style: CustomTextStyles.bodyMediumOnPrimary)),
                SizedBox(height: 9.h),
                _buildEditText2(context),
                SizedBox(height: 33.h),
                Padding(
                    padding: EdgeInsets.only(left: 16.w),
                    child: Text('lbl148'.tr,
                        style: CustomTextStyles.bodyMediumOnPrimary)),
                SizedBox(height: 9.h),
                _buildEditText3(context),
                SizedBox(height: 33.h),
                Padding(
                    padding: EdgeInsets.only(left: 16.w),
                    child: Text('lbl149'.tr,
                        style: CustomTextStyles.bodyMediumOnPrimary)),
                SizedBox(height: 9.h),
                _buildEditText4(context),
                SizedBox(height: 33.h),
                Padding(
                    padding: EdgeInsets.only(left: 16.w),
                    child: Text('lbl120'.tr,
                        style: CustomTextStyles.bodyMediumOnPrimary)),
                SizedBox(height: 9.h),
                _buildDateTimeField(context),
                SizedBox(height: 25.h),
                Padding(
                    padding: EdgeInsets.only(left: 16.w),
                    child: Text('lbl124'.tr,
                        style: CustomTextStyles.bodyMediumOnPrimary)),
                SizedBox(height: 3.h),
                _buildGenderRadioGroup(context),
                SizedBox(height: 33.h),
                Padding(
                    padding: EdgeInsets.only(left: 16.w),
                    child: Row(children: [
                      Container(
                          height: 16.r,
                          width: 16.r,
                          margin: EdgeInsets.only(top: 4.h, bottom: 3.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 3.w, vertical: 4.h),
                          decoration: AppDecoration.fillBlue.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder2),
                          child: CustomImageView(
                              imagePath: Assets.svg.imgVectorWhiteA7007x8.path,
                              height: 7.h,
                              width: 8.w,
                              alignment: Alignment.center)),
                      Padding(
                          padding: EdgeInsets.only(left: 20.w),
                          child: Text('lbl151'.tr,
                              style: theme.textTheme.bodyLarge)),
                      Padding(
                          padding: EdgeInsets.only(left: 7.w),
                          child: Text('lbl14'.tr,
                              style: CustomTextStyles.bodyLargeIndigo400)),
                      Padding(
                          padding: EdgeInsets.only(left: 3.w),
                          child: Text('lbl152'.tr,
                              style: theme.textTheme.bodyLarge))
                    ])),
                SizedBox(height: 6.h),
                Padding(
                    padding: EdgeInsets.only(left: 16.w, right: 89.w),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              height: 16.r,
                              width: 16.r,
                              margin: EdgeInsets.only(top: 6.h, bottom: 3.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 3.w, vertical: 4.h),
                              decoration: AppDecoration.fillBlue.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder2),
                              child: CustomImageView(
                                  imagePath:
                                      Assets.svg.imgVectorWhiteA7007x8.path,
                                  height: 7.h,
                                  width: 8.w,
                                  alignment: Alignment.center)),
                          Padding(
                              padding: EdgeInsets.only(left: 20.w),
                              child: Text('lbl151'.tr,
                                  style: theme.textTheme.bodyLarge)),
                          Padding(
                              padding: EdgeInsets.only(left: 6.w),
                              child: Text('lbl153'.tr,
                                  style: CustomTextStyles.bodyLargeIndigo400)),
                          Padding(
                              padding: EdgeInsets.only(left: 2.w),
                              child: Text('lbl154'.tr,
                                  style: theme.textTheme.bodyLarge))
                        ])),
                SizedBox(height: 8.h),
                Padding(
                    padding: EdgeInsets.only(left: 16.w, right: 88.w),
                    child: _buildVector(context, messageText: 'msg59'.tr)),
                SizedBox(height: 7.h),
                Padding(
                    padding: EdgeInsets.only(left: 16.w, right: 88.w),
                    child: _buildVector(context, messageText: 'msg60'.tr)),
                SizedBox(height: 32.h),
                _buildTf(context),
                SizedBox(height: 128.h),
                _buildFooter(context)
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavBar(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: CustomTextFormField(
            controller: appNavBarController, alignment: Alignment.center));
  }

  /// Section Widget
  Widget _buildEditText1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: CustomTextFormField(
            controller: editText1Controller, alignment: Alignment.center));
  }

  /// Section Widget
  Widget _buildEditText2(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: CustomTextFormField(
            controller: editText2Controller, alignment: Alignment.center));
  }

  /// Section Widget
  Widget _buildEditText3(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: CustomTextFormField(
            controller: editText3Controller, alignment: Alignment.center));
  }

  /// Section Widget
  Widget _buildEditText4(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: CustomTextFormField(
            controller: editText4Controller,
            textInputAction: TextInputAction.done,
            alignment: Alignment.center));
  }

  /// Section Widget
  Widget _buildDateTimeField(BuildContext context) {
    return Align(
        child: Padding(
            padding: EdgeInsets.only(left: 13.w, right: 19.w),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomDropDown(
                  width: 91.w,
                  icon: Container(
                      padding: EdgeInsets.fromLTRB(30.w, 16.h, 10.w, 16.h),
                      decoration: BoxDecoration(
                          color: appTheme.gray10001,
                          borderRadius: BorderRadius.circular(8.w)),
                      child: CustomImageView(
                          imagePath: Assets.svg.imgArrowDown.path,
                          height: 8.h,
                          width: 12.w)),
                  items: dropdownItemList0,
                  onChanged: (value) {}),
              Padding(
                  padding: EdgeInsets.only(left: 3.w, top: 7.h, bottom: 8.h),
                  child: Text('lbl108'.tr, style: theme.textTheme.bodyLarge)),
              Padding(
                  padding: EdgeInsets.only(left: 17.w),
                  child: CustomDropDown(
                      width: 91.w,
                      icon: Container(
                          padding: EdgeInsets.fromLTRB(30.w, 16.h, 10.w, 16.h),
                          decoration: BoxDecoration(
                              color: appTheme.gray10001,
                              borderRadius: BorderRadius.circular(8.w)),
                          child: CustomImageView(
                              imagePath: Assets.svg.imgArrowDown.path,
                              height: 8.h,
                              width: 12.w)),
                      items: dropdownItemList1,
                      onChanged: (value) {})),
              Padding(
                  padding: EdgeInsets.only(left: 3.w, top: 7.h, bottom: 8.h),
                  child: Text('lbl109'.tr, style: theme.textTheme.bodyLarge)),
              Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: CustomDropDown(
                      width: 91.w,
                      icon: Container(
                          padding: EdgeInsets.fromLTRB(30.w, 16.h, 10.w, 16.h),
                          decoration: BoxDecoration(
                              color: appTheme.gray10001,
                              borderRadius: BorderRadius.circular(8.w)),
                          child: CustomImageView(
                              imagePath: Assets.svg.imgArrowDown.path,
                              height: 8.h,
                              width: 12.w)),
                      items: dropdownItemList2,
                      onChanged: (value) {})),
              Padding(
                  padding: EdgeInsets.only(left: 4.w, top: 7.h, bottom: 8.h),
                  child: Text('lbl110'.tr, style: theme.textTheme.bodyLarge))
            ])));
  }

  /// Section Widget
  Widget _buildGenderRadioGroup(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 20.w),
        child: Row(children: [
          CustomRadioButton(
              text: 'lbl113'.tr,
              value: radioList[0],
              groupValue: genderRadioGroup,
              onChange: (value) {
                genderRadioGroup = value;
              }),
          Padding(
              padding: EdgeInsets.only(left: 64.w),
              child: CustomRadioButton(
                  text: 'lbl114'.tr,
                  value: radioList[1],
                  groupValue: genderRadioGroup,
                  onChange: (value) {
                    genderRadioGroup = value;
                  })),
          Padding(
              padding: EdgeInsets.only(left: 63.w),
              child: CustomRadioButton(
                  text: 'lbl150'.tr,
                  value: radioList[2],
                  groupValue: genderRadioGroup,
                  onChange: (value) {
                    genderRadioGroup = value;
                  }))
        ]));
  }

  /// Section Widget
  Widget _buildTf(BuildContext context) {
    return CustomElevatedButton(
        text: 'lbl155'.tr,
        margin: EdgeInsets.symmetric(horizontal: 16.w),
        buttonStyle: CustomButtonStyles.fillBlack,
        alignment: Alignment.center);
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
                child: Text('lbl10'.tr, style: theme.textTheme.bodySmall)),
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
  Widget _buildVector(
    BuildContext context, {
    required String messageText,
  }) {
    return Row(children: [
      Container(
          height: 16.r,
          width: 16.r,
          margin: EdgeInsets.only(top: 5.h, bottom: 2.h),
          padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 4.h),
          decoration: AppDecoration.fillBlue
              .copyWith(borderRadius: BorderRadiusStyle.circleBorder2),
          child: CustomImageView(
              imagePath: Assets.svg.imgVectorWhiteA7007x8.path,
              height: 7.h,
              width: 8.w,
              alignment: Alignment.center)),
      Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: Text(messageText,
              style: theme.textTheme.bodyLarge!
                  .copyWith(color: appTheme.black900)))
    ]);
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
