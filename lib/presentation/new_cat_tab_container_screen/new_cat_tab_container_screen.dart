import 'package:cami_lab/core/app_export.dart';
import 'package:cami_lab/presentation/new_cat_page/new_cat_page.dart';
import 'package:cami_lab/widgets/custom_elevated_button.dart';
import 'package:cami_lab/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class NewCatTabContainerScreen extends StatefulWidget {
  const NewCatTabContainerScreen({Key? key}) : super(key: key);

  @override
  NewCatTabContainerScreenState createState() =>
      NewCatTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class NewCatTabContainerScreenState extends State<NewCatTabContainerScreen>
    with TickerProviderStateMixin {
  TextEditingController editTextController = TextEditingController();

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
                          imagePath: ImageConstant.imgAppNavBar,
                          height: 50.v,
                          width: 393.h),
                      SizedBox(height: 15.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgArrowLeft,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize,
                                    margin: EdgeInsets.only(bottom: 6.v),
                                    onTap: () {
                                      onTapImgArrowLeft(context);
                                    }),
                                Padding(
                                    padding: EdgeInsets.only(left: 77.h),
                                    child: Text("lbl_1_22".tr,
                                        style: CustomTextStyles.bodyLarge18))
                              ])),
                      SizedBox(height: 21.v),
                      _buildImageRegistration(context),
                      SizedBox(height: 25.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("lbl106".tr,
                              style: CustomTextStyles.bodyMediumOnPrimary)),
                      SizedBox(height: 9.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.h),
                          child: CustomTextFormField(
                              controller: editTextController,
                              textInputAction: TextInputAction.done,
                              alignment: Alignment.center)),
                      SizedBox(height: 33.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("lbl107".tr,
                              style: CustomTextStyles.bodyMediumOnPrimary)),
                      SizedBox(height: 21.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.h),
                          child: _buildDateTimeField(context)),
                      SizedBox(height: 21.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("lbl111".tr,
                              style: CustomTextStyles.bodyMediumOnPrimary)),
                      SizedBox(height: 15.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.h),
                          child: _buildDateTimeField(context)),
                      SizedBox(height: 27.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("lbl112".tr,
                              style: CustomTextStyles.bodyMediumOnPrimary)),
                      SizedBox(height: 9.v),
                      _buildTabview(context),
                      SizedBox(
                          height: 946.v,
                          child: TabBarView(
                              controller: tabviewController,
                              children: [NewCatPage(), NewCatPage()]))
                    ])))));
  }

  /// Section Widget
  Widget _buildImageRegistration(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: SizedBox(
            height: 188.v,
            width: 361.h,
            child: Stack(alignment: Alignment.bottomRight, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgGroup,
                  height: 21.v,
                  width: 64.h,
                  alignment: Alignment.bottomLeft,
                  margin: EdgeInsets.only(bottom: 45.v)),
              CustomImageView(
                  imagePath: ImageConstant.imgImage7,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(bottom: 44.v)),
              Align(
                  alignment: Alignment.center,
                  child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 12.h, vertical: 16.v),
                      decoration: AppDecoration.fillGray50.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder12),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgImage128x122,
                                height: 128.v,
                                width: 122.h,
                                radius: BorderRadius.circular(61.h),
                                margin: EdgeInsets.only(bottom: 28.v)),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 24.h, top: 11.v, bottom: 4.v),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("lbl104".tr,
                                          style: CustomTextStyles
                                              .bodyMediumBlack900),
                                      SizedBox(height: 1.v),
                                      SizedBox(
                                          width: 156.h,
                                          child: Text("msg53".tr,
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: CustomTextStyles
                                                  .bodySmallGray500
                                                  .copyWith(height: 1.33))),
                                      SizedBox(height: 2.v),
                                      SizedBox(
                                          width: 145.h,
                                          child: Text("msg_9mb".tr,
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: CustomTextStyles
                                                  .bodySmallGray500
                                                  .copyWith(height: 1.33))),
                                      SizedBox(height: 8.v),
                                      CustomElevatedButton(
                                          width: 121.h,
                                          text: "lbl105".tr,
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
    return Container(
        height: 36.v,
        width: 362.h,
        child: TabBar(
            controller: tabviewController,
            labelPadding: EdgeInsets.zero,
            labelColor: appTheme.black900,
            labelStyle: TextStyle(
                fontSize: 14.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400),
            unselectedLabelColor: appTheme.black900,
            unselectedLabelStyle: TextStyle(
                fontSize: 14.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400),
            indicator: BoxDecoration(
                color: appTheme.gray10001,
                borderRadius: BorderRadius.circular(8.h)),
            tabs: [
              Tab(child: Text("lbl113".tr)),
              Tab(child: Text("lbl114".tr))
            ]));
  }

  /// Common widget
  Widget _buildDateTimeField(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
          height: 40.v,
          width: 91.h,
          padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 16.v),
          decoration: AppDecoration.fillGray
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
          child: CustomImageView(
              imagePath: ImageConstant.imgArrowDown,
              height: 8.v,
              width: 12.h,
              alignment: Alignment.centerRight)),
      Padding(
          padding: EdgeInsets.only(left: 3.h, top: 7.v, bottom: 8.v),
          child: Text("lbl108".tr, style: theme.textTheme.bodyLarge)),
      Container(
          height: 40.v,
          width: 91.h,
          margin: EdgeInsets.only(left: 17.h),
          padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 16.v),
          decoration: AppDecoration.fillGray
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
          child: CustomImageView(
              imagePath: ImageConstant.imgArrowDown,
              height: 8.v,
              width: 12.h,
              alignment: Alignment.centerRight)),
      Padding(
          padding: EdgeInsets.only(left: 3.h, top: 7.v, bottom: 8.v),
          child: Text("lbl109".tr, style: theme.textTheme.bodyLarge)),
      Container(
          height: 40.v,
          width: 91.h,
          margin: EdgeInsets.only(left: 16.h),
          padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 16.v),
          decoration: AppDecoration.fillGray
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
          child: CustomImageView(
              imagePath: ImageConstant.imgArrowDown,
              height: 8.v,
              width: 12.h,
              alignment: Alignment.centerRight)),
      Padding(
          padding: EdgeInsets.only(left: 4.h, top: 7.v, bottom: 8.v),
          child: Text("lbl110".tr, style: theme.textTheme.bodyLarge))
    ]);
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
