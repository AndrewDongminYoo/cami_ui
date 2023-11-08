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
import '/widgets/custom_drop_down.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_image_view.dart';
import 'widgets/chipview_item_widget.dart';

class NewCatPage extends StatefulWidget {
  const NewCatPage({super.key});

  @override
  NewCatPageState createState() => NewCatPageState();
}

class NewCatPageState extends State<NewCatPage>
    with AutomaticKeepAliveClientMixin<NewCatPage> {
  final dropdownItemList = ['Item One', 'Item Two', 'Item Three'];

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 33.h),
                Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 16.w),
                          child: Text('lbl99'.tr,
                              style: CustomTextStyles.bodyMediumOnPrimary))),
                  SizedBox(height: 9.h),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: CustomDropDown(
                          icon: Container(
                              padding:
                                  EdgeInsets.fromLTRB(30.w, 16.h, 11.w, 16.h),
                              decoration: BoxDecoration(
                                  color: appTheme.gray10001,
                                  borderRadius: BorderRadius.circular(8.w)),
                              child: CustomImageView(
                                  imagePath: Assets.svg.imgArrowDown.path,
                                  height: 8.h,
                                  width: 12.w)),
                          items: dropdownItemList,
                          onChanged: (value) {})),
                  SizedBox(height: 33.h),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 16.w),
                          child: Text('lbl100'.tr,
                              style: CustomTextStyles.bodyMediumOnPrimary))),
                  SizedBox(height: 9.h),
                  _buildChipView(context),
                  SizedBox(height: 64.h),
                  CustomElevatedButton(
                      text: 'lbl103'.tr,
                      margin: EdgeInsets.symmetric(horizontal: 16.w),
                      buttonStyle: CustomButtonStyles.fillPrimary,
                      buttonTextStyle:
                          CustomTextStyles.bodyMediumOnErrorContainer),
                  SizedBox(height: 128.h),
                  _buildFooter(context)
                ])
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildChipView(BuildContext context) {
    return Wrap(
        runSpacing: 8.h,
        spacing: 8.w,
        children:
            List<Widget>.generate(2, (index) => const ChipviewItemWidget()));
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
                    padding: EdgeInsets.only(left: 18.w),
                    child: Text('lbl11'.tr, style: theme.textTheme.bodySmall))),
            Padding(
                padding: EdgeInsets.only(left: 18.w),
                child: Text('lbl12'.tr, style: theme.textTheme.bodySmall))
          ]),
          SizedBox(height: 10.h),
          Padding(
              padding: EdgeInsets.only(right: 20.w),
              child: Row(children: [
                GestureDetector(
                    onTap: () {
                      onTapTxtWidget2(context);
                    },
                    child: Text('lbl13'.tr,
                        style: CustomTextStyles.bodySmallGray500)),
                Padding(
                    padding: EdgeInsets.only(left: 19.w),
                    child: Text('lbl14'.tr,
                        style: CustomTextStyles.bodySmallGray500)),
                Padding(
                    padding: EdgeInsets.only(left: 17.w),
                    child: Text('lbl15'.tr,
                        style: CustomTextStyles.bodySmallGray500)),
                Padding(
                    padding: EdgeInsets.only(left: 20.w),
                    child: Text('lbl16'.tr,
                        style: CustomTextStyles.bodySmallGray500))
              ])),
          SizedBox(height: 38.h),
          Row(children: [
            Text('lbl_address'.tr, style: theme.textTheme.bodySmall),
            Padding(
                padding: EdgeInsets.only(left: 132.w),
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
                    padding: EdgeInsets.only(left: 20.w),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('msg_business_cami_kr'.tr,
                              style: theme.textTheme.bodySmall),
                          Text('lbl_02_861_6828'.tr,
                              style: CustomTextStyles.bodySmall11)
                        ]))
              ])),
          SizedBox(height: 46.h),
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
