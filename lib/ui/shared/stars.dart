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
    String _buildStar(int target) => score > target
        ? fullIcon.path
        : score.round() > target - 0.5
            ? halfIcon.path
            : emptyIcon.path;

    return SizedBox(
      height: 12.h,
      width: 68.w,
      child: Row(
        children: [
          CustomImageView(
            imagePath: _buildStar(1),
            height: 12.h,
            width: 12.w,
          ),
          SizedBox(width: 2.w),
          CustomImageView(
            imagePath: _buildStar(2),
            height: 12.h,
            width: 12.w,
          ),
          SizedBox(width: 2.w),
          CustomImageView(
            imagePath: _buildStar(3),
            height: 12.h,
            width: 12.w,
          ),
          SizedBox(width: 2.w),
          CustomImageView(
            imagePath: _buildStar(4),
            height: 12.h,
            width: 12.w,
          ),
          SizedBox(width: 2.w),
          CustomImageView(
            imagePath: _buildStar(5),
            height: 12.h,
            width: 12.w,
          ),
        ],
      ),
    );
  }
}
