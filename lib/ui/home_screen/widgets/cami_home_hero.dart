// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/gen/assets.gen.dart';
import '/theme/app_decoration.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/widgets/custom_image_view.dart';

class CamiHomeHero extends StatelessWidget {
  const CamiHomeHero({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 28.w),
      decoration: AppDecoration.fillPrimary
          .copyWith(borderRadius: BorderRadiusStyle.circleBorder20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 83.h),
          Text('반려동물의'.tr(), style: textTheme.headlineLarge!.extraBold),
          SizedBox(height: 8.h),
          Text('마음을 읽다, 카미'.tr(), style: textTheme.headlineLarge!.extraBold),
          SizedBox(height: 24.h),
          Text('수의사가 제안하는 반려생활 솔루션으로'.tr(), style: textTheme.bodyMedium),
          Text('행복한 기적을 만듭니다'.tr(), style: textTheme.bodyMedium),
          SizedBox(height: 39.h),
          CustomImageView(
            imagePath: Assets.images.mainIllustMo.path,
            height: 320.h,
            width: 337.w,
          ),
        ],
      ),
    );
  }
}
