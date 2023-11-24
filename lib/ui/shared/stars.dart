// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/gen/assets.gen.dart';
import '/widgets/custom_image_view.dart';

class Stars extends StatelessWidget {
  const Stars({
    super.key,
    required this.score,
    this.light = false,
  }) : assert(score >= 0 && score <= 10);

  final double score;
  final bool light;

  @override
  Widget build(BuildContext context) {
    print((score * 2).round() / 2);

    final fullIcon = light // Full Icon
        ? Assets.svg.starYellow
        : Assets.svg.starBlack;
    final halfIcon = light // Half Icon
        ? Assets.svg.starYellowHalf
        : Assets.svg.starBlackHalf;
    final emptyIcon = Assets.svg.starZero;

    // Use rounded score for conditional image paths

    return SizedBox(
      height: 12.h,
      width: 68.w,
      child: Row(children: [
        CustomImageView(
          imagePath: score > 1
              ? fullIcon.path
              : score.round() > 1 - 0.5
                  ? halfIcon.path
                  : emptyIcon.path,
          height: 12.h,
          width: 12.w,
        ),
        SizedBox(width: 2.w),
        CustomImageView(
          imagePath: score > 2
              ? fullIcon.path
              : score.round() > 2 - 0.5
                  ? halfIcon.path
                  : emptyIcon.path,
          height: 12.h,
          width: 12.w,
        ),
        SizedBox(width: 2.w),
        CustomImageView(
          imagePath: score > 3
              ? fullIcon.path
              : score.round() > 3 - 0.5
                  ? halfIcon.path
                  : emptyIcon.path,
          height: 12.h,
          width: 12.w,
        ),
        SizedBox(width: 2.w),
        CustomImageView(
          imagePath: score > 4
              ? fullIcon.path
              : score.round() > 4 - 0.5
                  ? halfIcon.path
                  : emptyIcon.path,
          height: 12.h,
          width: 12.w,
        ),
        SizedBox(width: 2.w),
        CustomImageView(
          imagePath: score > 5
              ? fullIcon.path
              : score.round() > 5 - 0.5
                  ? halfIcon.path
                  : emptyIcon.path,
          height: 12.h,
          width: 12.w,
        ),
      ]),
    );
  }
}
