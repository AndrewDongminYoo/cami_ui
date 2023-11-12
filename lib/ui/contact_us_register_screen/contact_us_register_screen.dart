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
import '/widgets/custom_drop_down.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_image_view.dart';
import '/widgets/custom_text_form_field.dart';

class ContactUsRegisterScreen extends StatelessWidget {
  ContactUsRegisterScreen({super.key});

  final inquiryType = TextEditingController();
  final inquiryContent = TextEditingController();
  final List<String> items = [
    '주문/결제',
    '심리검사',
    '서비스이용',
    '와디즈관련',
  ];

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
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 40.h),
                Divider(
                    color: appTheme.black900, indent: 16.w, endIndent: 16.w),
                SizedBox(height: 17.h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 32.w),
                    child: Text('1:1 문의하기'.tr, style: textTheme.bodyLarge),
                  ),
                ),
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: EdgeInsets.only(right: 14.w),
            width: 44.w,
            child: Text(
              '문의유형'.tr,
              maxLines: 2,
              style: textTheme.bodyLarge!.copyWith(height: 1.50),
            ),
          ),
          CustomDropDown(
            autofocus: false,
            items: items,
            height: 40.h,
            width: 291.w,
            borderDecoration: OutlineInputBorder(
              borderRadius: BorderRadiusStyle.circleBorder8,
              borderSide: BorderSide.none,
            ),
            contentPadding:
                EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
            icon: CustomImageView(
                imagePath: Assets.svg.imgArrowDown.path,
                height: 8.h,
                width: 12.w),
            onChanged: (value) {
              inquiryType.text = value;
            },
          ),
        ],
      ),
    );
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
            child: Text(
              '문의내용'.tr,
              maxLines: 2,
              style: textTheme.bodyLarge!.copyWith(height: 1.50),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 16.w),
              child: CustomTextFormField(
                  controller: inquiryContent,
                  maxLines: 5,
                  textInputAction: TextInputAction.done),
            ),
          ),
        ],
      ),
    );
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
