// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '../shared/cami_app_bar.dart';
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/localization/app_localization.dart';
import '/theme/custom_text_style.dart';
import '/widgets/custom_image_view.dart';

class MenuBarScreen extends StatelessWidget {
  const MenuBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: const CamiAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 39.h),
              Padding(
                padding: EdgeInsets.only(left: 16.w),
                child: Text('심리검사'.tr, style: CustomTextStyles.bodyLarge18),
              ),
              SizedBox(height: 24.h),
              Padding(
                padding: EdgeInsets.only(left: 16.w),
                child: Text('방문교육'.tr, style: CustomTextStyles.bodyLarge18),
              ),
              SizedBox(height: 25.h),
              Padding(
                padding: EdgeInsets.only(left: 16.w),
                child: Text('반짝 테스트'.tr, style: CustomTextStyles.bodyLarge18),
              ),
              SizedBox(height: 25.h),
              Padding(
                padding: EdgeInsets.only(left: 16.w),
                child: Text('마이페이지'.tr, style: CustomTextStyles.bodyLarge18),
              ),
              SizedBox(height: 24.h),
              Padding(
                padding: EdgeInsets.only(left: 16.w),
                child: Text('로그아웃'.tr, style: CustomTextStyles.bodyLarge18),
              ),
              const Spacer(),
              CustomImageView(
                imagePath: Assets.images.imgImage84x393.path,
                height: 84.h,
                width: 393.w,
              ),
              SizedBox(height: 32.h),
              CustomImageView(
                imagePath: Assets.svg.imgSocial.path,
                height: 21.h,
                width: 120.w,
                alignment: Alignment.center,
              ),
              SizedBox(height: 32.h),
            ],
          ),
        ),
      ),
    );
  }
}
