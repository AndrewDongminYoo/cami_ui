// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/gen/assets.gen.dart';
import '/theme/app_decoration.dart';
import '/widgets/custom_image_view.dart';

class SolutionListItemWidget extends StatelessWidget {
  const SolutionListItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.w),
      decoration: AppDecoration.outlineOnError
          .copyWith(borderRadius: BorderRadiusStyle.circleBorder8),
      child: CustomImageView(
        imagePath: Assets.images.imgImage161x343.path,
        height: 161.h,
        width: 343.w,
      ),
    );
  }
}
