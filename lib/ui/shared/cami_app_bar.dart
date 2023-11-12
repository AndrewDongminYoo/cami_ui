// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/routes/app_routes.dart';
import '/theme/app_decoration.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_image_view.dart';

class CamiAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CamiAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: AppDecoration.fillOnPrimaryContainer,
      child: CustomAppBar(
        height: 50.h,
        centerTitle: false,
        title: CustomImageView(
          imagePath: Assets.svg.imgGroup.path,
          height: 21.h,
          width: 64.w,
          margin: EdgeInsets.all(14.h),
        ),
        actions: [
          CustomImageView(
            imagePath: Assets.images.icoMenuVert.path,
            height: 24.r,
            width: 24.r,
            margin: EdgeInsets.all(14.h),
            onTap: () {
              Navigator.of(context)
                  .restorablePushNamed(AppRoutes.menuBarScreen);
            },
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size(
        mediaQueryData.size.width,
        50.h,
      );
}
