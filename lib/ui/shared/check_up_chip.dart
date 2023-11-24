// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/widgets/custom_elevated_button.dart';

class CheckUpChip extends StatelessWidget {
  const CheckUpChip({
    super.key,
    required this.onPressed,
    required this.checkupName,
  });

  final void Function(BuildContext) onPressed;
  final String checkupName;

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      onPressed: onPressed,
      height: 26.h,
      width: (checkupName.length * 5.75 + 16).w,
      text: checkupName.toUpperCase(),
      textAlign: TextAlign.start,
      margin: EdgeInsets.symmetric(horizontal: 14.w),
      buttonStyle: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF262626),
        elevation: 0,
        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.w),
        ),
      ),
      buttonTextStyle: textTheme.bodySmall!.fSize(10).colored(Colors.white),
    );
  }
}
