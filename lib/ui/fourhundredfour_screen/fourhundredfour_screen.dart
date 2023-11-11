// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/localization/app_localization.dart';
import '/theme/custom_button_style.dart';
import '/theme/custom_text_style.dart';
import '/ui/shared/cami_app_bar.dart';
import '/widgets/custom_image_view.dart';
import '/widgets/custom_outlined_button.dart';

class FourhundredfourScreen extends StatelessWidget {
  const FourhundredfourScreen({super.key});

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: const CamiAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 62.h),
              Text(
                '미안해'.tr,
                style: CustomTextStyles.bodyLarge18,
              ),
              Text(
                '우리는 이 페이지를 잃어버렸어'.tr,
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
                        '404',
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
                text: 'Go Home',
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
}
