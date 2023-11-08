// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/localization/app_localization.dart';
import '/theme/custom_text_style.dart';
import '/widgets/custom_image_view.dart';

class MenuBarScreen extends StatelessWidget {
  const MenuBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: Assets.images.imgAppNavBar.path,
                height: 50.h,
                width: 393.w,
              ),
              SizedBox(height: 39.h),
              Padding(
                padding: EdgeInsets.only(left: 16.w),
                child: Text(
                  'lbl'.tr,
                  style: CustomTextStyles.bodyLarge18,
                ),
              ),
              SizedBox(height: 24.h),
              Padding(
                padding: EdgeInsets.only(left: 16.w),
                child: Text(
                  'lbl115'.tr,
                  style: CustomTextStyles.bodyLarge18,
                ),
              ),
              SizedBox(height: 25.h),
              Padding(
                padding: EdgeInsets.only(left: 16.w),
                child: Text(
                  'lbl18'.tr,
                  style: CustomTextStyles.bodyLarge18,
                ),
              ),
              SizedBox(height: 25.h),
              Padding(
                padding: EdgeInsets.only(left: 16.w),
                child: Text(
                  'lbl116'.tr,
                  style: CustomTextStyles.bodyLarge18,
                ),
              ),
              SizedBox(height: 24.h),
              Padding(
                padding: EdgeInsets.only(left: 16.w),
                child: Text(
                  'lbl117'.tr,
                  style: CustomTextStyles.bodyLarge18,
                ),
              ),
              const Spacer(),
              CustomImageView(
                imagePath: Assets.images.imgImage84x393.path,
                height: 84.h,
                width: 393.w,
              ),
              SizedBox(height: 32.h),
              CustomImageView(
                imagePath: Assets.svg.imgSocial.path,
                height: 21.h,
                width: 120.w,
                alignment: Alignment.center,
              ),
              SizedBox(height: 32.h),
            ],
          ),
        ),
      ),
    );
  }
}
