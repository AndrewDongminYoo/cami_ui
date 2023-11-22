// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/data/models/check_up.dart';
import '/data/utils/check_up_util.dart';
import '/gen/assets.gen.dart';
import '/theme/app_decoration.dart';
import '/theme/theme_helper.dart';
import '/widgets/custom_image_view.dart';

class PriceInput extends StatefulWidget {
  PriceInput({
    super.key,
    this.initialCount = 1,
    required this.checkup,
  });

  final CheckUp checkup;
  final int initialCount;

  @override
  State<PriceInput> createState() => _PriceInputState();
}

class _PriceInputState extends State<PriceInput> {
  late int count;
  late int price;

  @override
  void initState() {
    super.initState();
    count = widget.initialCount;
    price = widget.checkup.krwVal;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 85.w,
            decoration: AppDecoration.fillGray
                .copyWith(borderRadius: BorderRadiusStyle.circleBorder16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomImageView(
                  onTap: () => setState(() {
                    count--;
                  }),
                  imagePath: Assets.svg.imgFrameBlack900.path,
                  height: 32.r,
                  width: 32.r,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 4.h,
                    bottom: 3.h,
                  ),
                  child: Text('$count', style: textTheme.bodyLarge),
                ),
                CustomImageView(
                  onTap: () => setState(() {
                    count++;
                  }),
                  imagePath: Assets.svg.imgFrameBlack90032x32.path,
                  height: 32.r,
                  width: 32.r,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 4.h),
            child: Text((price * count).toKRW(), style: textTheme.bodyLarge),
          ),
        ],
      ),
    );
  }
}
