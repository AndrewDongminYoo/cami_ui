// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/gen/assets.gen.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/widgets/custom_icon_button.dart';
import '/widgets/custom_image_view.dart';

class UserAvatarProfile extends StatelessWidget {
  const UserAvatarProfile({
    super.key,
    this.imagePath,
    required this.name,
    required this.mail,
  });

  final String? imagePath;
  final String name;
  final String mail;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(left: 15.w, right: 72.w),
        child: Row(
          children: [
            CustomImageView(
              imagePath: imagePath ?? Assets.images.avatarDefault.path,
              height: 100.r,
              width: 100.r,
              radius: BorderRadius.circular(50.w),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.w, top: 30.h, bottom: 25.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    Text(
                      name,
                      style:
                          textTheme.bodyLarge!.colored(const Color(0xFF202020)),
                    ),
                    Text(
                      '님, 반가워요!'.tr(),
                      style:
                          textTheme.bodyLarge!.colored(const Color(0xFF202020)),
                    )
                  ]),
                  SizedBox(height: 3.h),
                  Text(mail,
                      style: textTheme.bodySmall!
                          .colored(const Color(0xFFA3A3A3))
                          .fSize(11))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 2.w, top: 26.h, bottom: 42.h),
              child: CustomIconButton(
                height: 32.r,
                width: 32.r,
                padding: EdgeInsets.all(8.w),
                child: CustomImageView(imagePath: Assets.svg.imgSettings.path),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
