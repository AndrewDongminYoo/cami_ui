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
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_image_view.dart';

// ignore: must_be_immutable
class UserProfileItemWidget extends StatelessWidget {
  UserProfileItemWidget({
    super.key,
    this.onTapRegisterDogButton,
  });

  VoidCallback? onTapRegisterDogButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      decoration: AppDecoration.outlineOnSecondaryContainer
          .copyWith(borderRadius: BorderRadiusStyle.circleBorder12),
      width: 175.w,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 16.h),
          Text(
            'lbl125'.tr,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 25.h),
          SizedBox(
            height: 112.h,
            width: 149.w,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                CustomImageView(
                  imagePath: Assets.images.imgImage112x138.path,
                  height: 112.h,
                  width: 138.w,
                  alignment: Alignment.center,
                ),
                CustomElevatedButton(
                  height: 32.h,
                  width: 149.w,
                  text: 'lbl126'.tr,
                  margin: EdgeInsets.only(bottom: 24.h),
                  buttonStyle: CustomButtonStyles.fillBlue,
                  buttonTextStyle: CustomTextStyles.bodyMediumBlack900,
                  onPressed: () {
                    onTapRegisterDogButton!.call();
                  },
                  alignment: Alignment.bottomCenter,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
