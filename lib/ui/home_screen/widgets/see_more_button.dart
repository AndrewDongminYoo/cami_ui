// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

// 🌎 Project imports:
import '/gen/assets.gen.dart';
import '/routes/app_routes.dart';
import '/theme/app_decoration.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/widgets/custom_image_view.dart';

class SeeMoreButton extends StatelessWidget {
  const SeeMoreButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 25.w,
        vertical: 13.h,
      ),
      decoration: AppDecoration.fillGray50
          .copyWith(borderRadius: BorderRadiusStyle.circleBorder24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 4.w,
              bottom: 2.h,
            ),
            child: Text(
              '더 많은 검사 보러가기'.tr(),
              style: textTheme.bodySmall!.colored(const Color(0xFF121212)),
            ),
          ),
          CustomImageView(
            onTap: () {
              context.go(AppRoutes.checkUpListScreen);
            },
            imagePath: Assets.svg.imgArrowRightGray600.path,
            height: 12.h,
            width: 9.w,
            margin: EdgeInsets.only(
              left: 8.w,
              top: 3.h,
              bottom: 5.h,
            ),
          ),
        ],
      ),
    );
  }
}
