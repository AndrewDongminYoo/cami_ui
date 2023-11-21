// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/theme/app_decoration.dart';
import '/widgets/custom_image_view.dart';

class SolutionBanner extends StatelessWidget {
  const SolutionBanner({
    super.key,
    required this.imagePath,
  });

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.w),
      decoration: AppDecoration.outlineOnError
          .copyWith(borderRadius: BorderRadiusStyle.circleBorder8),
      child: CustomImageView(
        imagePath: imagePath,
        height: 161.h,
        width: 343.w,
      ),
    );
  }
}
