// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/localization/app_localization.dart';
import '/theme/app_decoration.dart';
import '/theme/custom_button_style.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/ui/new_cat_page/new_cat_page.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_image_view.dart';
import '/widgets/custom_text_form_field.dart';

class NewCatTabContainerScreen extends StatefulWidget {
  const NewCatTabContainerScreen({super.key});

  @override
  NewCatTabContainerScreenState createState() =>
      NewCatTabContainerScreenState();
}

class NewCatTabContainerScreenState extends State<NewCatTabContainerScreen>
    with TickerProviderStateMixin {
  final editTextController = TextEditingController();

  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      CustomImageView(
                          imagePath: Assets.images.imgAppNavBar.path,
                          height: 50.h,
                          width: 393.w),
                      SizedBox(height: 15.h),
                      Padding(
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
                                      onTapImgArrowLeft(context);
                                    }),
                                Padding(
                                    padding: EdgeInsets.only(left: 77.w),
                                    child: Text('lbl_1_22'.tr,
                                        style: CustomTextStyles.bodyLarge18))
                              ])),
                      SizedBox(height: 21.h),
                      _buildImageRegistration(context),
                      SizedBox(height: 25.h),
                      Padding(
                          padding: EdgeInsets.only(left: 16.w),
                          child: Text('lbl106'.tr,
                              style: CustomTextStyles.bodyMediumOnPrimary)),
                      SizedBox(height: 9.h),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.w),
                          child: CustomTextFormField(
                              controller: editTextController,
                              textInputAction: TextInputAction.done,
                              alignment: Alignment.center)),
                      SizedBox(height: 33.h),
                      Padding(
                          padding: EdgeInsets.only(left: 16.w),
                          child: Text('lbl107'.tr,
                              style: CustomTextStyles.bodyMediumOnPrimary)),
                      SizedBox(height: 21.h),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.w),
                          child: _buildDateTimeField(context)),
                      SizedBox(height: 21.h),
                      Padding(
                          padding: EdgeInsets.only(left: 16.w),
                          child: Text('lbl111'.tr,
                              style: CustomTextStyles.bodyMediumOnPrimary)),
                      SizedBox(height: 15.h),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.w),
                          child: _buildDateTimeField(context)),
                      SizedBox(height: 27.h),
                      Padding(
                          padding: EdgeInsets.only(left: 16.w),
                          child: Text('lbl112'.tr,
                              style: CustomTextStyles.bodyMediumOnPrimary)),
                      SizedBox(height: 9.h),
                      _buildTabview(context),
                      SizedBox(
                          height: 946.h,
                          child: TabBarView(
                              controller: tabviewController,
                              children: const [NewCatPage(), NewCatPage()]))
                    ])))));
  }

  /// Section Widget
  Widget _buildImageRegistration(BuildContext context) {
    return Align(
        child: SizedBox(
            height: 188.h,
            width: 361.w,
            child: Stack(alignment: Alignment.bottomRight, children: [
              CustomImageView(
                  imagePath: Assets.svg.imgGroup.path,
                  height: 21.h,
                  width: 64.w,
                  alignment: Alignment.bottomLeft,
                  margin: EdgeInsets.only(bottom: 45.h)),
              CustomImageView(
                  imagePath: Assets.images.imgImage7.path,
                  height: 24.r,
                  width: 24.r,
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(bottom: 44.h)),
              Align(
                  child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 12.w, vertical: 16.h),
                      decoration: AppDecoration.fillGray50.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder12),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                imagePath: Assets.images.imgCatProfile.path,
                                height: 128.h,
                                width: 122.w,
                                radius: BorderRadius.circular(61.w),
                                margin: EdgeInsets.only(bottom: 28.h)),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 24.w, top: 11.h, bottom: 4.h),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('lbl104'.tr,
                                          style: CustomTextStyles
                                              .bodyMediumBlack900),
                                      SizedBox(height: 1.h),
                                      SizedBox(
                                          width: 156.w,
                                          child: Text('msg53'.tr,
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: CustomTextStyles
                                                  .bodySmallGray500
                                                  .copyWith(height: 1.33))),
                                      SizedBox(height: 2.h),
                                      SizedBox(
                                          width: 145.w,
                                          child: Text('msg_9mb'.tr,
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: CustomTextStyles
                                                  .bodySmallGray500
                                                  .copyWith(height: 1.33))),
                                      SizedBox(height: 8.h),
                                      CustomElevatedButton(
                                          width: 121.w,
                                          text: 'lbl105'.tr,
                                          buttonStyle:
                                              CustomButtonStyles.fillBlue,
                                          buttonTextStyle: CustomTextStyles
                                              .bodyMediumOnErrorContainer)
                                    ]))
                          ])))
            ])));
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return SizedBox(
        height: 36.h,
        width: 362.w,
        child: TabBar(
            controller: tabviewController,
            labelPadding: EdgeInsets.zero,
            labelColor: appTheme.black900,
            labelStyle: TextStyle(
                fontSize: 14.sp,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400),
            unselectedLabelColor: appTheme.black900,
            unselectedLabelStyle: TextStyle(
                fontSize: 14.sp,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400),
            indicator: BoxDecoration(
                color: appTheme.gray10001,
                borderRadius: BorderRadius.circular(8.w)),
            tabs: [
              Tab(child: Text('lbl113'.tr)),
              Tab(child: Text('lbl114'.tr))
            ]));
  }

  /// Common widget
  Widget _buildDateTimeField(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
          height: 40.h,
          width: 91.w,
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 16.h),
          decoration: AppDecoration.fillGray
              .copyWith(borderRadius: BorderRadiusStyle.circleBorder8),
          child: CustomImageView(
              imagePath: Assets.svg.imgArrowDown.path,
              height: 8.h,
              width: 12.w,
              alignment: Alignment.centerRight)),
      Padding(
          padding: EdgeInsets.only(left: 3.w, top: 7.h, bottom: 8.h),
          child: Text('lbl108'.tr, style: theme.textTheme.bodyLarge)),
      Container(
          height: 40.h,
          width: 91.w,
          margin: EdgeInsets.only(left: 17.w),
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 16.h),
          decoration: AppDecoration.fillGray
              .copyWith(borderRadius: BorderRadiusStyle.circleBorder8),
          child: CustomImageView(
              imagePath: Assets.svg.imgArrowDown.path,
              height: 8.h,
              width: 12.w,
              alignment: Alignment.centerRight)),
      Padding(
          padding: EdgeInsets.only(left: 3.w, top: 7.h, bottom: 8.h),
          child: Text('lbl109'.tr, style: theme.textTheme.bodyLarge)),
      Container(
          height: 40.h,
          width: 91.w,
          margin: EdgeInsets.only(left: 16.w),
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 16.h),
          decoration: AppDecoration.fillGray
              .copyWith(borderRadius: BorderRadiusStyle.circleBorder8),
          child: CustomImageView(
              imagePath: Assets.svg.imgArrowDown.path,
              height: 8.h,
              width: 12.w,
              alignment: Alignment.centerRight)),
      Padding(
          padding: EdgeInsets.only(left: 4.w, top: 7.h, bottom: 8.h),
          child: Text('lbl110'.tr, style: theme.textTheme.bodyLarge))
    ]);
  }

  /// Navigates back to the previous screen.
  void onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
