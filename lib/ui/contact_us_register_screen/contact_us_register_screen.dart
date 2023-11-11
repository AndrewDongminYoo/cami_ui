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
import '/ui/shared/cami_app_footer.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_image_view.dart';
import '/widgets/custom_text_form_field.dart';

class ContactUsRegisterScreen extends StatelessWidget {
  ContactUsRegisterScreen({super.key});

  final editTextController = TextEditingController();

  final editTextController1 = TextEditingController();

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
              children: [
                SizedBox(height: 15.h),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
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
                                  padding: EdgeInsets.only(left: 132.w),
                                  child: Text('1:1 문의'.tr,
                                      style: CustomTextStyles.bodyLarge18))
                            ]))),
                SizedBox(height: 40.h),
                Divider(
                    color: appTheme.black900, indent: 16.w, endIndent: 16.w),
                SizedBox(height: 17.h),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 32.w),
                        child:
                            Text('1:1 문의하기'.tr, style: textTheme.bodyLarge))),
                SizedBox(height: 16.h),
                Divider(color: appTheme.gray500, indent: 16.w, endIndent: 16.w),
                SizedBox(height: 22.h),
                _buildUserProfile(context),
                SizedBox(height: 23.h),
                _buildRecentOrders(context),
                SizedBox(height: 28.h),
                CustomElevatedButton(
                    text: '문의하기'.tr,
                    margin: EdgeInsets.symmetric(horizontal: 16.w),
                    buttonStyle: CustomButtonStyles.fillBlackTL12),
                SizedBox(height: 128.h),
                const CamiAppFooter()
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 28.w, right: 16.w),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
              width: 44.w,
              child: Text('문의유형'.tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: textTheme.bodyLarge!.copyWith(height: 1.50))),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 15.w, top: 4.h, bottom: 4.h),
                  child: CustomTextFormField(controller: editTextController))),
          Container(
              height: 40.h,
              width: 34.w,
              margin: EdgeInsets.only(left: 8.w, top: 4.h, bottom: 4.h),
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 16.h),
              decoration: AppDecoration.fillGray
                  .copyWith(borderRadius: BorderRadiusStyle.circleBorder8),
              child: CustomImageView(
                  imagePath: Assets.svg.imgArrowDown.path,
                  height: 8.h,
                  width: 13.w,
                  alignment: Alignment.center))
        ]));
  }

  /// Section Widget
  Widget _buildRecentOrders(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 28.w, right: 16.w),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: 43.w,
                  margin: EdgeInsets.only(top: 3.h, bottom: 43.h),
                  child: Text('문의내용'.tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: textTheme.bodyLarge!.copyWith(height: 1.50))),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(left: 16.w),
                      child: CustomTextFormField(
                          controller: editTextController1,
                          textInputAction: TextInputAction.done)))
            ]));
  }

  /// Navigates back to the previous screen.
  void onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  void onTapTxtWidget(BuildContext context) {
    // TODO: implement Actions
  }

  /// Navigates to the faqScreen when the action is triggered.
  void onTapTxtWidget1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.faqScreen);
  }
}
