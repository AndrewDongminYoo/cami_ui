// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
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
      label: Text('예', style: textTheme.bodyMedium),
      backgroundColor: const Color(0xFF9BB1EB),
      selectedColor: const Color(0xFFF5F5F5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.w),
      ),
      onSelected: (value) {
        // TODO: implement onSelected
      },
    );
  }
}
