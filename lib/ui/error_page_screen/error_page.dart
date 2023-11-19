// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

// 🌎 Project imports:
import '/core/errors/exceptions.dart';
import '/core/utils/media_query.dart';
import '/gen/assets.gen.dart';
import '/routes/go_extensions.dart';
import '/theme/custom_button_style.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/ui/shared/cami_app_bar.dart';
import '/widgets/custom_image_view.dart';
import '/widgets/custom_outlined_button.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({
    super.key,
    this.error = const PageNotFoundException(),
  });

  final dynamic error;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: const CamiAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 62.h),
              Text('죄송합니다'.tr(), style: textTheme.bodyLarge!.fSize(18)),
              Text(error.message.toString(),
                  style: textTheme.bodyLarge!.fSize(18)),
              SizedBox(height: 38.h),
              SizedBox(
                height: 240.h,
                width: 307.w,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Center(
                      child: Text(
                        error.code.toString(),
                        style: GoogleFonts.poppins(
                          color: const Color(0xFFFEFFBF),
                          fontSize: 160.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: Assets.svg.pageNotFound.path,
                      height: 142.h,
                      width: 78.w,
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 42.h),
              CustomOutlinedButton(
                onPressed: (context) {
                  context.safePop();
                },
                height: 52.h,
                width: 168.w,
                text: 'Go Home',
                leftIcon: Container(
                  margin: EdgeInsets.only(right: 8.w),
                  child: CustomImageView(
                    imagePath: Assets.svg.imgCar.path,
                    height: 20.h,
                    width: 18.w,
                  ),
                ),
                buttonStyle: CustomButtonStyles.outlineBlack,
                buttonTextStyle: textTheme.bodyMedium!.fSize(15),
              ),
              SizedBox(height: 5.h),
            ],
          ),
        ),
      ),
    );
  }
}
