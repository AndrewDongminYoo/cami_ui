// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/core/utils/media_query.dart';
import '/gen/assets.gen.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/ui/shared/cami_app_bar.dart';
import '/ui/shared/social_link_icons.dart';
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
          width: mediaQueryData.size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 39.h),
              Padding(
                padding: EdgeInsets.only(left: 16.w),
                child: Text('심리검사'.tr(), style: textTheme.bodyLarge!.fSize(18)),
              ),
              SizedBox(height: 24.h),
              Padding(
                padding: EdgeInsets.only(left: 16.w),
                child: Text('방문교육'.tr(), style: textTheme.bodyLarge!.fSize(18)),
              ),
              SizedBox(height: 25.h),
              Padding(
                padding: EdgeInsets.only(left: 16.w),
                child:
                    Text('반짝 테스트'.tr(), style: textTheme.bodyLarge!.fSize(18)),
              ),
              SizedBox(height: 25.h),
              Padding(
                padding: EdgeInsets.only(left: 16.w),
                child:
                    Text('마이페이지'.tr(), style: textTheme.bodyLarge!.fSize(18)),
              ),
              SizedBox(height: 24.h),
              Padding(
                padding: EdgeInsets.only(left: 16.w),
                child: Text('로그아웃'.tr(), style: textTheme.bodyLarge!.fSize(18)),
              ),
              const Spacer(),
              CustomImageView(
                imagePath: Assets.images.moMenuBanner.path,
                height: 84.h,
                width: 393.w,
              ),
              SizedBox(height: 32.h),
              Container(
                alignment: Alignment.center,
                height: 21.h,
                width: 393.w,
                child: const SocialLinkIcons(dark: false),
              ),
              SizedBox(height: 32.h),
            ],
          ),
        ),
      ),
    );
  }
}
