// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/gen/fonts.gen.dart';
import '/theme/theme_helper.dart';

class ChipViewItemWidget extends StatelessWidget {
  const ChipViewItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 30.w,
        vertical: 7.h,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: const Text(
        '예',
        style: TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontFamily: FontFamily.poppins,
          fontWeight: FontWeight.w400,
        ),
      ),
      backgroundColor: appTheme.indigo200,
      selectedColor: appTheme.gray10001,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.w),
      ),
      onSelected: (value) {
        // TODO: implement onSelected
      },
    );
  }
}
