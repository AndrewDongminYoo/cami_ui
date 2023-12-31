// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

// 🌎 Project imports:
import '/core/utils/logger.dart';
import '/theme/theme_helper.dart';

class ScreenTitle extends StatelessWidget {
  const ScreenTitle({
    super.key,
    required this.screenTitle,
    required this.routeName,
    this.status = DevStatus.TO_DO,
  });

  final String screenTitle;
  final String routeName;
  final DevStatus status;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final uri = Uri.parse(routeName);
        logger.i(uri.queryParameters);
        context.go(uri.toString());
      },
      child: Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: Column(
          children: [
            SizedBox(height: 10.h),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    screenTitle,
                    textAlign: TextAlign.center,
                    style: textTheme.titleMedium,
                  ),
                  status.icon,
                ],
              ),
            ),
            SizedBox(height: 10.h),
            Divider(
              height: 1.h,
              thickness: 1.h,
              color: const Color(0xFF888888),
            ),
          ],
        ),
      ),
    );
  }
}

enum DevStatus {
  TO_DO,
  ON_PROGRESS,
  BLOCKING,
  DONE,
}

extension on DevStatus {
  Widget get icon {
    final emoji = GoogleFonts.notoColorEmoji();
    switch (name) {
      case 'ON_PROGRESS':
        return Text('🌀', style: emoji);
      case 'BLOCKING':
        return Text('⛔️', style: emoji);
      case 'DONE':
        return Text('✅', style: emoji);
      default:
        return Text('❕', style: emoji);
    }
  }
}
