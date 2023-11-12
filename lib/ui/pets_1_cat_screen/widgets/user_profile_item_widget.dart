// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:easy_localization/easy_localization.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/theme/app_decoration.dart';
import '/theme/custom_button_style.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_image_view.dart';

// ignore: must_be_immutable
class UserProfileItemWidget extends StatelessWidget {
  const UserProfileItemWidget({
    super.key,
    required this.onTapDog,
  });

  final void Function(BuildContext) onTapDog;

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
          Text('나는 멍집사'.tr(), style: textTheme.bodyLarge),
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
                  text: '강아지 등록하기'.tr(),
                  margin: EdgeInsets.only(bottom: 24.h),
                  buttonStyle: CustomButtonStyles.fillBlue,
                  buttonTextStyle: CustomTextStyles.bodyMediumBlack900,
                  onPressed: onTapDog,
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
