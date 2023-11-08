// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/localization/app_localization.dart';
import '/theme/app_decoration.dart';
import '/theme/custom_button_style.dart';
import '/theme/custom_text_style.dart';
import '/widgets/custom_image_view.dart';
import '/widgets/custom_outlined_button.dart';

class FourhundredfourScreen extends StatelessWidget {
  const FourhundredfourScreen({super.key});

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildFrame(context),
              SizedBox(height: 62.h),
              Text(
                'lbl170'.tr,
                style: CustomTextStyles.bodyLarge18,
              ),
              Text(
                'msg67'.tr,
                style: CustomTextStyles.bodyLarge18,
              ),
              SizedBox(height: 38.h),
              SizedBox(
                height: 240.h,
                width: 307.w,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      child: Text(
                        'lbl_404'.tr,
                        style: CustomTextStyles.poppinsYellow100,
                      ),
                    ),
                    CustomImageView(
                      imagePath: Assets.svg.pageNotFound.path,
                      height: 142.h,
                      width: 78.w,
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 42.h),
              CustomOutlinedButton(
                height: 52.h,
                width: 168.w,
                text: 'lbl_go_home'.tr,
                leftIcon: Container(
                  margin: EdgeInsets.only(right: 8.w),
                  child: CustomImageView(
                    imagePath: Assets.svg.imgCar.path,
                    height: 20.h,
                    width: 18.w,
                  ),
                ),
                buttonStyle: CustomButtonStyles.outlineBlack,
                buttonTextStyle: CustomTextStyles.bodyMediumBlack90015,
              ),
              SizedBox(height: 5.h),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: CustomImageView(
            imagePath: Assets.images.imgAppNavBar.path,
            height: 50.h,
            width: 393.w));
  }
}