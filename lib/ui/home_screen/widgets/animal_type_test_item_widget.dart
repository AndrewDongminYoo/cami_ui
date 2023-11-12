// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:easy_localization/easy_localization.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/theme/app_decoration.dart';
import '/theme/custom_text_style.dart';
import '/widgets/custom_image_view.dart';

class AnimalTypeTestItemWidget extends StatelessWidget {
  const AnimalTypeTestItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: AppDecoration.fillOnPrimaryContainer
          .copyWith(borderRadius: BorderRadiusStyle.circleBorder20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.h),
          Text('동물 유형 테스트'.tr(), style: CustomTextStyles.bodyMediumBlack900),
          SizedBox(height: 5.h),
          Text('나는 강아지형 vs 고양이형 ?'.tr(),
              style: CustomTextStyles.bodySmallGray600),
          SizedBox(height: 5.h),
          CustomImageView(
            imagePath: Assets.images.imgImage59x67.path,
            height: 59.h,
            width: 67.w,
            alignment: Alignment.centerRight,
          ),
        ],
      ),
    );
  }
}
