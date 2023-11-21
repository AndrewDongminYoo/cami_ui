// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/core/utils/media_query.dart';
import '/data/models/check_up.dart';
import '/gen/assets.gen.dart';
import '/theme/custom_button_style.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/ui/checkup_details/widgets/breadcrumbs.dart';
import '/ui/checkup_details/widgets/check_up_info.dart';
import '/ui/checkup_details/widgets/check_up_tap_box.dart';
import '/ui/checkup_details/widgets/check_up_test_summary.dart';
import '/ui/checkup_details/widgets/price_input.dart';
import '/ui/shared/cami_app_bar.dart';
import '/ui/shared/cami_app_footer.dart';
import '/ui/shared/check_up_chip.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_image_view.dart';

class CheckupOwnerScreen extends StatefulWidget {
  const CheckupOwnerScreen({
    super.key,
    required this.checkup,
  });

  final CheckUp checkup;

  @override
  CheckupOwnerScreenState createState() => CheckupOwnerScreenState();
}

class CheckupOwnerScreenState extends State<CheckupOwnerScreen>
    with TickerProviderStateMixin {
  CheckUp get checkup => widget.checkup;
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: const CamiAppBar(),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            primary: true,
            child: Column(
              children: [
                Breadcrumbs(checkup: checkup),
                SizedBox(height: 19.h),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 16.w),
                  child: Text(checkup.fullName!, style: textTheme.bodyMedium),
                ),
                SizedBox(height: 15.h),
                CustomImageView(
                  imagePath: checkup.thumbPath,
                  height: 171.h,
                  width: 361.w,
                ),
                SizedBox(height: 18.h),
                CheckUpChip(
                  onPressed: (context) {
                    // TODO: implement onPressed
                  },
                  checkupName: checkup.short!,
                ),
                SizedBox(height: 11.h),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 16.w),
                  child: Text(checkup.testname!,
                      style: textTheme.bodyLarge!.nanum),
                ),
                SizedBox(height: 10.h),
                CheckUpInfo(checkup: checkup),
                SizedBox(height: 7.h),
                CheckUpTestSummary(questions: checkup.questions!),
                SizedBox(height: 8.h),
                PriceInput(checkup: checkup),
                SizedBox(height: 8.h),
                CustomElevatedButton(
                  onPressed: (context) {
                    // TODO: implement onPressed
                  },
                  text: '구매하기'.tr(),
                  margin: EdgeInsets.symmetric(horizontal: 16.w),
                  buttonStyle: CustomButtonStyles.fillPrimary,
                  buttonTextStyle:
                      textTheme.bodyMedium!.colored(const Color(0xFF171717)),
                ),
                SizedBox(height: 48.h),
                CheckUpTapBox(tabController: tabviewController),
                SizedBox(height: 24.h),
                CustomImageView(
                  imagePath: Assets.images.tests.faq01.path,
                  height: 472.h,
                  width: 361.w,
                ),
                CustomImageView(
                  imagePath: Assets.images.tests.faq02.path,
                  height: 683.h,
                  width: 361.w,
                ),
                SizedBox(height: 24.h),
                Column(
                  children: checkup.detailImages!
                      .map((image) => CustomImageView(
                            imagePath: image.imagePath,
                            width: (image.width ?? 361).w,
                            height: image.height!.h,
                          ))
                      .toList(),
                ),
                SizedBox(height: 272.h),
                const CamiAppFooter(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
