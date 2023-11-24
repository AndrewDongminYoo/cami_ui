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
    this.petName,
    this.birthDay,
    this.breeds,
    this.age,
    this.sex,
  });

  final String? imagePath;
  final String type;
  final String? petName;
  final String? birthDay;
  final String? breeds;
  final String? age;
  final String? sex;

  @override
  Widget build(BuildContext context) {
    final isCat = type == '반려묘';
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
      decoration: AppDecoration.outlineOnSecondaryContainer
          .copyWith(borderRadius: BorderRadiusStyle.circleBorder12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                imagePath: imagePath ??
                    (isCat
                        ? Assets.images.avatarCat.path
                        : Assets.images.avatarDog.path),
                height: 84.r,
                width: 84.r,
                radius: BorderRadius.circular(42.w),
                margin: EdgeInsets.symmetric(vertical: 21.h),
              ),
              if (imagePath != null)
                SizedBox(
                  height: 20.h,
                  width: 58.w,
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      Container(
                        height: 20.h,
                        width: 58.w,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF5F5F5),
                          borderRadius: BorderRadius.circular(10.w),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.only(left: 6.w),
                        child: Text('정보수정'.tr(), style: textTheme.bodySmall),
                      ),
                    ],
                  ),
                ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 24.w, bottom: 11.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(children: [
                  Text(
                    petName ??
                        (isCat ? '등록된 냥냥 없습니다.'.tr() : '등록된 멍멍 없습니다.'.tr()),
                    style: textTheme.bodyLarge,
                  ),
                  if (petName != null)
                    Container(
                      height: 20.h,
                      width: 120.w,
                      margin: EdgeInsets.only(left: 10.w, top: 2.h),
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 20.h,
                            width: 120.w,
                            decoration: BoxDecoration(
                              color: const Color(0xFFFFFF50),
                              borderRadius: BorderRadius.circular(8.w),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              '성격유형 알아보기 >'.tr(),
                              style: textTheme.bodySmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                ]),
                SizedBox(height: 7.h),
                Row(children: [
                  SizedBox(
                    width: 80.w,
                    child: Text(
                      '생년월일'.tr(),
                      style: textTheme.bodyMedium!
                          .colored(const Color(0xFFA3A3A3)),
                    ),
                  ),
                  Text(
                    birthDay ?? '-',
                    style:
                        textTheme.bodyMedium!.colored(const Color(0xFFA3A3A3)),
                  ),
                ]),
                SizedBox(height: 2.h),
                Row(children: [
                  SizedBox(
                    width: 80.w,
                    child: Text(
                      '연령'.tr(),
                      style: textTheme.bodyMedium!
                          .colored(const Color(0xFFA3A3A3)),
                    ),
                  ),
                  Text(
                    age ?? '-',
                    style:
                        textTheme.bodyMedium!.colored(const Color(0xFFA3A3A3)),
                  ),
                ]),
                SizedBox(height: 2.h),
                Row(children: [
                  SizedBox(
                    width: 80.w,
                    child: Text(
                      '견종'.tr(),
                      style: textTheme.bodyMedium!
                          .colored(const Color(0xFFA3A3A3)),
                    ),
                  ),
                  Text(
                    breeds ?? '-',
                    style:
                        textTheme.bodyMedium!.colored(const Color(0xFFA3A3A3)),
                  ),
                ]),
                SizedBox(height: 2.h),
                Row(children: [
                  SizedBox(
                    width: 80.w,
                    child: Text(
                      '성별'.tr(),
                      style: textTheme.bodyMedium!
                          .colored(const Color(0xFFA3A3A3)),
                    ),
                  ),
                  Text(
                    sex ?? '-',
                    style:
                        textTheme.bodyMedium!.colored(const Color(0xFFA3A3A3)),
                  ),
                ]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
