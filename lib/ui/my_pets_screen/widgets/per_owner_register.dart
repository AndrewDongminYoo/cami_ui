// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

// 🌎 Project imports:
import '/gen/assets.gen.dart';
import '/routes/app_routes.dart';
import '/theme/app_decoration.dart';
import '/theme/custom_button_style.dart';
import '/theme/theme_helper.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_image_view.dart';

class PerOwnerRegister extends StatelessWidget {
  const PerOwnerRegister({
    super.key,
    required this.type,
  });

  final String type;

  @override
  Widget build(BuildContext context) {
    final isCat = type == '반려묘';
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      decoration: AppDecoration.outlineOnSecondaryContainer
          .copyWith(borderRadius: BorderRadiusStyle.circleBorder12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 16.h),
          Text(
            isCat ? '나는 냥집사'.tr() : '나는 멍집사'.tr(),
            style: textTheme.bodyLarge,
          ),
          SizedBox(height: 25.h),
          SizedBox(
            height: 112.h,
            width: 149.w,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                CustomImageView(
                  imagePath: isCat
                      ? Assets.images.addCat.path
                      : Assets.images.addDog.path,
                  height: 112.h,
                  width: 138.w,
                  alignment: Alignment.center,
                  onTap: () {
                    context.go(isCat
                        ? AppRoutes.newCatScreen
                        : AppRoutes.newDogScreen);
                  },
                ),
                CustomElevatedButton(
                  onPressed: (context) {
                    context.go(isCat
                        ? AppRoutes.newCatScreen
                        : AppRoutes.newDogScreen);
                  },
                  height: 32.h,
                  width: 149.w,
                  text: isCat ? '고양이 등록하기'.tr() : '강아지 등록하기'.tr(),
                  margin: EdgeInsets.only(bottom: 24.h),
                  buttonStyle: CustomButtonStyles.fillBlue,
                  buttonTextStyle: textTheme.bodyMedium,
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
