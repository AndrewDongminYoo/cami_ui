// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/theme/theme_helper.dart';

class ChipviewItemWidget extends StatelessWidget {
  const ChipviewItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 30.w,
        vertical: 7.h,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        '예',
        style: TextStyle(
          color: appTheme.black900,
          fontSize: 14.sp,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
      ),
      backgroundColor: appTheme.indigo200,
      selectedColor: appTheme.gray10001,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.w),
      ),
      onSelected: (value) {},
    );
  }
}