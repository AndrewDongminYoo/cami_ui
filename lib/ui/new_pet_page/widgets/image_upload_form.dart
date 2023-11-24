// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/gen/assets.gen.dart';
import '/theme/app_decoration.dart';
import '/theme/custom_button_style.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_image_view.dart';

class ImageUploadForm extends StatefulWidget {
  const ImageUploadForm({super.key});

  @override
  State<ImageUploadForm> createState() => _ImageUploadFormState();
}

class _ImageUploadFormState extends State<ImageUploadForm> {
  late String petProfileImage;

  @override
  void initState() {
    super.initState();
    petProfileImage = Assets.images.imgCatProfile.path;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 188.h,
      width: 361.w,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          CustomImageView(
            imagePath: Assets.svg.imgGroup.path,
            height: 21.h,
            width: 64.w,
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(bottom: 45.h),
          ),
          CustomImageView(
            imagePath: Assets.images.icoMenuVert.path,
            height: 24.r,
            width: 24.r,
            alignment: Alignment.bottomRight,
            margin: EdgeInsets.only(bottom: 44.h),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 16.h),
            decoration: AppDecoration.fillGray50
                .copyWith(borderRadius: BorderRadiusStyle.circleBorder12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: petProfileImage,
                  height: 128.h,
                  width: 122.w,
                  radius: BorderRadius.circular(61.w),
                  margin: EdgeInsets.only(bottom: 28.h),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 24.w, top: 11.h, bottom: 4.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('프로필 사진을 등록해주세요'.tr(), style: textTheme.bodyMedium),
                      SizedBox(height: 1.h),
                      SizedBox(
                        width: 156.w,
                        child: Text(
                          '이미지 도용 및 불건전 이미지는 삭제 처리 됩니다.'.tr(),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: textTheme.bodySmall!
                              .colored(const Color(0xFFA3A3A3))
                              .tight,
                        ),
                      ),
                      SizedBox(height: 2.h),
                      SizedBox(
                        width: 145.w,
                        child: Text(
                          '프로필 이미지는 9MB 이하로 선택해 주세요.'.tr(),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: textTheme.bodySmall!
                              .colored(const Color(0xFFA3A3A3))
                              .tight,
                        ),
                      ),
                      SizedBox(height: 8.h),
                      CustomElevatedButton(
                        onPressed: (BuildContext context) {
                          // TODO: 이미지 피커 실행
                        },
                        width: 121.w,
                        text: '이미지 등록하기'.tr(),
                        buttonStyle: CustomButtonStyles.fillBlue,
                        buttonTextStyle: textTheme.bodyMedium!
                            .colored(const Color(0xFF171717)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
