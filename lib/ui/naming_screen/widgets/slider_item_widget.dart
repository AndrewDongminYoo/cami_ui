// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/widgets/custom_image_view.dart';

class SliderItemWidget extends StatelessWidget {
  const SliderItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          CustomImageView(
            imagePath: Assets.images.imgImage186x329.path,
            height: 186.h,
            width: 329.w,
          ),
          CustomImageView(
            imagePath: Assets.images.imgImage5.path,
            height: 186.h,
            width: 329.w,
            margin: EdgeInsets.only(left: 20.w),
          ),
          CustomImageView(
            imagePath: Assets.images.imgImage6.path,
            height: 186.h,
            width: 329.w,
            margin: EdgeInsets.only(left: 20.w),
          ),
        ],
      ),
    );
  }
}
