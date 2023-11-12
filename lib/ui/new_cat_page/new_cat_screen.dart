// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/localization/app_localization.dart';
import '/routes/go_extensions.dart';
import '/theme/app_decoration.dart';
import '/theme/custom_button_style.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/ui/shared/cami_app_bar.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_image_view.dart';
import '/widgets/custom_text_form_field.dart';
import 'widgets/new_cat_tab.dart';

class NewCatScreen extends StatefulWidget {
  const NewCatScreen({super.key});

  @override
  NewCatScreenState createState() => NewCatScreenState();
}

class NewCatScreenState extends State<NewCatScreen>
    with TickerProviderStateMixin {
  final editTextController = TextEditingController();

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
                          child: Text('반려묘 등록하기 (1/2)'.tr,
                              style: CustomTextStyles.bodyLarge18))
                    ],
                  ),
                ),
                SizedBox(height: 21.h),
                _buildImageRegistration(context),
                SizedBox(height: 25.h),
                Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: Text('반려묘 이름'.tr,
                      style: CustomTextStyles.bodyMediumOnPrimary),
                ),
                SizedBox(height: 9.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: CustomTextFormField(
                      controller: editTextController,
                      textInputAction: TextInputAction.done,
                      alignment: Alignment.center),
                ),
                SizedBox(height: 33.h),
                Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: Text('반려묘 생년월일'.tr,
                      style: CustomTextStyles.bodyMediumOnPrimary),
                ),
                SizedBox(height: 21.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: _buildDateTimeField(context),
                ),
                SizedBox(height: 21.h),
                Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: Text('반려묘 입양일'.tr,
                      style: CustomTextStyles.bodyMediumOnPrimary),
                ),
                SizedBox(height: 15.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: _buildDateTimeField(context),
                ),
                SizedBox(height: 27.h),
                Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: Text('반려묘 성별'.tr,
                      style: CustomTextStyles.bodyMediumOnPrimary),
                ),
                SizedBox(height: 9.h),
                Row(
                  children: [
                    CustomElevatedButton(
                      width: 177,
                      height: 36,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF5F5F5),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      text: '여아',
                      buttonTextStyle: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400),
                    ),
                    CustomElevatedButton(
                      width: 177,
                      height: 36,
                      decoration: BoxDecoration(
                        color: const Color(0xFF9BB1EB),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      text: '남아',
                      buttonTextStyle: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                SizedBox(
                  height: 946.h,
                  child: const NewCatTab(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildImageRegistration(BuildContext context) {
    return Align(
      child: SizedBox(
        height: 188.h,
        width: 361.w,
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            CustomImageView(
              imagePath: Assets.svg.imgGroup.path,
              height: 21.h,
              width: 64.w,
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(bottom: 45.h),
            ),
            CustomImageView(
              imagePath: Assets.images.icoMenuVert.path,
              height: 24.r,
              width: 24.r,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(bottom: 44.h),
            ),
            Align(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 16.h),
                decoration: AppDecoration.fillGray50
                    .copyWith(borderRadius: BorderRadiusStyle.circleBorder12),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: Assets.images.imgCatProfile.path,
                      height: 128.h,
                      width: 122.w,
                      radius: BorderRadius.circular(61.w),
                      margin: EdgeInsets.only(bottom: 28.h),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left: 24.w, top: 11.h, bottom: 4.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('프로필 사진을 등록해주세요'.tr,
                              style: CustomTextStyles.bodyMediumBlack900),
                          SizedBox(height: 1.h),
                          SizedBox(
                            width: 156.w,
                            child: Text(
                              '이미지 도용 및 불건전 이미지는 삭제 처리 됩니다.'.tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodySmallGray500
                                  .copyWith(height: 1.33),
                            ),
                          ),
                          SizedBox(height: 2.h),
                          SizedBox(
                            width: 145.w,
                            child: Text(
                              '프로필 이미지는 9MB 이하로 선택해 주세요.'.tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodySmallGray500
                                  .copyWith(height: 1.33),
                            ),
                          ),
                          SizedBox(height: 8.h),
                          CustomElevatedButton(
                              width: 121.w,
                              text: '이미지 등록하기'.tr,
                              buttonStyle: CustomButtonStyles.fillBlue,
                              buttonTextStyle:
                                  CustomTextStyles.bodyMediumOnErrorContainer)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
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
            alignment: Alignment.centerRight),
      ),
      Padding(
        padding: EdgeInsets.only(left: 3.w, top: 7.h, bottom: 8.h),
        child: Text('년'.tr, style: textTheme.bodyLarge),
      ),
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
            alignment: Alignment.centerRight),
      ),
      Padding(
        padding: EdgeInsets.only(left: 3.w, top: 7.h, bottom: 8.h),
        child: Text('월'.tr, style: textTheme.bodyLarge),
      ),
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
            alignment: Alignment.centerRight),
      ),
      Padding(
          padding: EdgeInsets.only(left: 4.w, top: 7.h, bottom: 8.h),
          child: Text('일'.tr, style: textTheme.bodyLarge))
    ]);
  }

  /// Navigates back to the previous screen.
  void onTapImgArrowLeft(BuildContext context) {
    context.safePop();
  }
}
