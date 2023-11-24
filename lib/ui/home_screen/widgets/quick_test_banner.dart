// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/theme/app_decoration.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/widgets/custom_image_view.dart';

class QuickTestBanner extends StatelessWidget {
  const QuickTestBanner({
    super.key,
    required this.title1,
    required this.title2,
    required this.imagePath,
    required this.imageSize,
  });

  final String title1;
  final String title2;
  final String imagePath;
  final Size imageSize;

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
          Text(title1, style: textTheme.bodyMedium!.thick),
          SizedBox(height: 5.h),
          Text(
            title2,
            style: textTheme.bodySmall!.colored(const Color(0xFF757575)),
          ),
          SizedBox(height: 5.h),
          CustomImageView(
            imagePath: imagePath,
            height: imageSize.height,
            width: imageSize.width,
            alignment: Alignment.centerRight,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
