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
import 'quick_test_banner.dart';

class QuickTestBannerSection extends StatelessWidget {
  const QuickTestBannerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 28.w,
        vertical: 59.h,
      ),
      decoration: AppDecoration.fillGray50,
      child: Column(
        children: [
          Text(
            '간단해요'.tr(),
            style: textTheme.bodyMedium!.colored(const Color(0xFF1F2020)),
          ),
          SizedBox(height: 11.h),
          Text(
            '반짝 테스트'.tr(),
            style: textTheme.headlineSmall!.colored(const Color(0xFF1F2020)),
          ),
          SizedBox(height: 7.h),
          Text(
            '양육자가 되기 위한 첫걸음, 재밌는 CAMI 3분 검사'.tr(),
            style: textTheme.bodySmall!.colored(const Color(0xFF1F2020)),
          ),
          SizedBox(height: 60.h),
          CustomImageView(
            imagePath: Assets.images.mainStar.path,
            height: 242.h,
            width: 337.w,
          ),
          SizedBox(height: 60.h),
          QuickTestBanner(
            title1: '동물 유형 테스트'.tr(),
            title2: '나는 강아지형 vs 고양이형 ?'.tr(),
            imagePath: Assets.images.figure1.path,
            imageSize: Size(67.r, 59.r),
          ),
          SizedBox(height: 20.h),
          QuickTestBanner(
            title1: '엉뚱 발랄 작명소'.tr(),
            title2: '원주민식 이름 짓기'.tr(),
            imagePath: Assets.images.figure2.path,
            imageSize: Size(63.r, 63.r),
          ),
          SizedBox(height: 40.h),
        ],
      ),
    );
  }
}
