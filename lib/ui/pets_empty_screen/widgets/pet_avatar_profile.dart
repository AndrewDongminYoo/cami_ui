// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/gen/assets.gen.dart';
import '/theme/app_decoration.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/widgets/custom_image_view.dart';

class PetAvatarProfile extends StatelessWidget {
  const PetAvatarProfile({
    super.key,
    required this.type,
    this.imagePath,
    this.birthDay,
    this.breeds,
    this.age,
    this.sex,
  });

  final String? imagePath;
  final String type;
  final String? birthDay;
  final String? breeds;
  final String? age;
  final String? sex;

  @override
  Widget build(BuildContext context) {
    final isCat = type == 'cat';
    return Padding(
      padding: EdgeInsets.only(left: 16.w, right: 16.w),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
        decoration: AppDecoration.outlineOnSecondaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildAvatar(isCat),
            Padding(
              padding: EdgeInsets.only(left: 24.w, bottom: 11.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    isCat ? '등록된 냥냥 없습니다.'.tr() : '등록된 멍멍 없습니다.'.tr(),
                    style: CustomTextStyles.bodyLargeGray500
                        .copyWith(color: appTheme.gray500),
                  ),
                  SizedBox(height: 7.h),
                  Row(children: [
                    Text(
                      '생년월일'.tr(),
                      style: textTheme.bodyMedium!
                          .copyWith(color: appTheme.gray500),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16.w),
                      child: Text(
                        birthDay ?? '-',
                        style: textTheme.bodyMedium!
                            .copyWith(color: appTheme.gray500),
                      ),
                    ),
                  ]),
                  SizedBox(height: 2.h),
                  Row(children: [
                    Text(
                      '연령'.tr(),
                      style: textTheme.bodyMedium!
                          .copyWith(color: appTheme.gray500),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 43.w),
                      child: Text(
                        age ?? '-',
                        style: textTheme.bodyMedium!
                            .copyWith(color: appTheme.gray500),
                      ),
                    ),
                  ]),
                  SizedBox(height: 3.h),
                  Row(children: [
                    Text(
                      isCat ? '묘종'.tr() : '견종'.tr(),
                      style: textTheme.bodyMedium!
                          .copyWith(color: appTheme.gray500),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 42.w),
                      child: Text(
                        breeds ?? '-',
                        style: textTheme.bodyMedium!
                            .copyWith(color: appTheme.gray500),
                      ),
                    ),
                  ]),
                  SizedBox(height: 2.h),
                  Row(children: [
                    Text(
                      '성별'.tr(),
                      style: textTheme.bodyMedium!
                          .copyWith(color: appTheme.gray500),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 42.w),
                      child: Text(
                        sex ?? '-',
                        style: textTheme.bodyMedium!
                            .copyWith(color: appTheme.gray500),
                      ),
                    ),
                  ])
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  CustomImageView buildAvatar(bool isCat) {
    return CustomImageView(
      imagePath: imagePath ??
          (isCat ? Assets.images.avatarCat.path : Assets.images.avatarDog.path),
      height: 84.r,
      width: 84.r,
      radius: BorderRadius.circular(42.w),
      margin: EdgeInsets.only(top: 17.h, bottom: 33.h),
    );
  }
}
