// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/core/utils/media_query.dart';
import '/data/models/check_up.dart';
import '/gen/assets.gen.dart';
import '/theme/app_decoration.dart';
import '/theme/custom_button_style.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/ui/checkup_details/widgets/check_up_tap_box.dart';
import '/ui/shared/cami_app_bar.dart';
import '/ui/shared/cami_app_footer.dart';
import '/ui/shared/stars.dart';
import '/widgets/app_bar/bread_crumb.dart';
import '/widgets/app_bar/custom_app_bar.dart';
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
  late TabController tabviewController;
  CheckUp get checkup => widget.checkup;

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
                _buildBreadcrumbs(context),
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
                _buildChipButton(context, checkup.short!),
                SizedBox(height: 11.h),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 16.w),
                  child: Text(checkup.testname!,
                      style: textTheme.bodyLarge!.nanum),
                ),
                SizedBox(height: 10.h),
                _buildInfo(context, checkup.reviewsCount!),
                SizedBox(height: 7.h),
                _buildTestSummary(context, checkup.questions!),
                SizedBox(height: 8.h),
                _buildPriceInfo(context),
                SizedBox(height: 8.h),
                _buildPurchaseButton(context),
                SizedBox(height: 48.h),
                CheckUpTapBox(tabController: tabviewController),
                SizedBox(height: 24.h),
                CustomImageView(
                  imagePath: Assets.images.imgImage472x361.path,
                  height: 472.h,
                  width: 361.w,
                ),
                SizedBox(height: 24.h),
                CustomImageView(
                  imagePath: Assets.images.imgImage683x361.path,
                  height: 683.h,
                  width: 361.w,
                ),
                SizedBox(height: 72.h),
                Column(
                  children: checkup.detailImages!
                      .map((image) => CustomImageView(
                            imagePath: image.imagePath,
                            width: (image.width ?? 361).w,
                            height: image.height!.h,
                          ))
                      .toList(),
                ),
                SizedBox(height: 177.h),
                const CamiAppFooter(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBreadcrumbs(BuildContext context) {
    return CustomAppBar(
      title: Padding(
        padding: EdgeInsets.only(left: 16.w),
        child: Row(
          children: [
            BreadCrumb(text: '심리검사'.tr()),
            BreadCrumb(
              text: '/',
              margin: EdgeInsets.only(left: 12.w),
            ),
            BreadCrumb(
              text: checkup.type!,
              margin: EdgeInsets.only(left: 8.w),
            ),
            BreadCrumb(
              text: '/',
              margin: EdgeInsets.only(left: 12.w),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildChipButton(BuildContext context, String checkupName) {
    return CustomElevatedButton(
      onPressed: (context) {
        // TODO: implement onPressed
      },
      height: 23.h,
      width: (checkupName.length * 5.75 + 16).w,
      text: checkupName,
      margin: EdgeInsets.only(left: 16.w),
      buttonTextStyle: textTheme.bodySmall!.fSize(10),
      alignment: Alignment.centerLeft,
    );
  }

  /// Section Widget
  Widget _buildInfo(BuildContext context, int reviews) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(left: 16.w),
      child: Row(
        children: [
          Stars(score: checkup.reviewRating!),
          Padding(
            padding: EdgeInsets.only(left: 8.w),
            child: Text('($reviews)', style: textTheme.bodyMedium),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTestSummary(BuildContext context, int questions) {
    return Container(
      width: 361.w,
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      padding: EdgeInsets.symmetric(
        horizontal: 36.w,
        vertical: 15.h,
      ),
      decoration: AppDecoration.fillGray
          .copyWith(borderRadius: BorderRadiusStyle.circleBorder12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text('문항'.tr(), style: textTheme.bodyMedium),
              SizedBox(width: 42.w),
              Text(
                '$questions 문항'.tr(),
                style: textTheme.bodyMedium!.colored(const Color(0xFF404040)),
              ),
            ],
          ),
          SizedBox(height: 3.h),
          Row(
            children: [
              Text('소요시간'.tr(), style: textTheme.bodyMedium),
              Padding(
                padding: EdgeInsets.only(left: 17.w),
                child: Text(
                  '약 20분'.tr(),
                  style: textTheme.bodyMedium!.colored(const Color(0xFF404040)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPriceInfo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 85.w,
            decoration: AppDecoration.fillGray
                .copyWith(borderRadius: BorderRadiusStyle.circleBorder16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomImageView(
                  imagePath: Assets.svg.imgFrameBlack900.path,
                  height: 32.r,
                  width: 32.r,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 4.h,
                    bottom: 3.h,
                  ),
                  child: Text('1', style: textTheme.bodyLarge),
                ),
                CustomImageView(
                  imagePath: Assets.svg.imgFrameBlack90032x32.path,
                  height: 32.r,
                  width: 32.r,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 4.h),
            child: Text(checkup.price!, style: textTheme.bodyLarge),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPurchaseButton(BuildContext context) {
    return CustomElevatedButton(
      onPressed: (context) {
        // TODO: implement onPressed
      },
      text: '구매하기'.tr(),
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      buttonStyle: CustomButtonStyles.fillPrimary,
      buttonTextStyle: textTheme.bodyMedium!.colored(const Color(0xFF171717)),
    );
  }
}
