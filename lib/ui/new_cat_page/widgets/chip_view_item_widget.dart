// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/theme/theme_helper.dart';

class ChipViewItemWidget extends StatelessWidget {
  const ChipViewItemWidget({
    super.key,
    required this.selected,
    required this.labelText,
    required this.onSelected,
  });

  final bool selected;
  final String labelText;
  final void Function(bool) onSelected;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      selected: selected,
      onSelected: onSelected,
      clipBehavior: Clip.antiAlias,
      padding: EdgeInsets.symmetric(
        horizontal: 64.w,
        vertical: 7.h,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(labelText, style: textTheme.bodyMedium),
      backgroundColor: const Color(0xFFF5F5F5),
      selectedColor: const Color(0xFF9BB1EB),
      side: BorderSide.none,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.w),
      ),
    );
  }
}
