// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/localization/app_localization.dart';
import '/theme/app_decoration.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/widgets/custom_image_view.dart';

class CheckupOwnerPage extends StatefulWidget {
  const CheckupOwnerPage({super.key});

  @override
  CheckupOwnerPageState createState() => CheckupOwnerPageState();
}

class CheckupOwnerPageState extends State<CheckupOwnerPage>
    with AutomaticKeepAliveClientMixin<CheckupOwnerPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 24.h),
                Column(
                  children: [
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
                    CustomImageView(
                      imagePath: Assets.images.imgImage681x361.path,
                      height: 681.h,
                      width: 361.w,
                    ),
                    CustomImageView(
                      imagePath: Assets.images.imgImage1235x361.path,
                      height: 1235.h,
                      width: 361.w,
                    ),
                    CustomImageView(
                      imagePath: Assets.images.imgImage1056x361.path,
                      height: 1056.h,
                      width: 361.w,
                    ),
                    CustomImageView(
                      imagePath: Assets.images.imgImage719x361.path,
                      height: 719.h,
                      width: 361.w,
                    ),
                    CustomImageView(
                      imagePath: Assets.images.imgImage552x361.path,
                      height: 552.h,
                      width: 361.w,
                    ),
                    CustomImageView(
                      imagePath: Assets.images.imgImage1037x361.path,
                      height: 1037.h,
                      width: 361.w,
                    ),
                    SizedBox(height: 177.h),
                    _buildTicketSection(context),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTicketSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 60.h,
      ),
      decoration: AppDecoration.fillOnErrorContainer,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: Assets.svg.imgTicket.path,
            height: 30.h,
            width: 92.w,
          ),
          SizedBox(height: 37.h),
          Row(
            children: [
              Text(
                'lbl10'.tr,
                style: theme.textTheme.bodySmall,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: Text(
                  'lbl11'.tr,
                  style: theme.textTheme.bodySmall,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 22.w),
                child: Text(
                  'lbl12'.tr,
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'lbl13'.tr,
                  style: CustomTextStyles.bodySmallGray500,
                ),
                Text(
                  'lbl14'.tr,
                  style: CustomTextStyles.bodySmallGray500,
                ),
                Text(
                  'lbl15'.tr,
                  style: CustomTextStyles.bodySmallGray500,
                ),
                Text(
                  'lbl16'.tr,
                  style: CustomTextStyles.bodySmallGray500,
                ),
              ],
            ),
          ),
          SizedBox(height: 38.h),
          Padding(
            padding: EdgeInsets.only(right: 64.w),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 1.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'lbl_address'.tr,
                        style: theme.textTheme.bodySmall,
                      ),
                      SizedBox(height: 9.h),
                      Text(
                        'msg_34'.tr,
                        style: theme.textTheme.bodySmall,
                      ),
                      Text(
                        'msg_2_b101'.tr,
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 28.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'lbl_contact'.tr,
                        style: theme.textTheme.bodySmall,
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        'msg_business_cami_kr'.tr,
                        style: theme.textTheme.bodySmall,
                      ),
                      Text(
                        'lbl_02_861_6828'.tr,
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 45.h),
          Text(
            'lbl17'.tr,
            style: theme.textTheme.bodySmall,
          ),
          Text(
            'msg'.tr,
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 15.h),
          Text(
            'msg_copyright_2023'.tr,
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 39.h),
          Row(
            children: [
              CustomImageView(
                imagePath: Assets.images.imgImage.path,
                height: 24.r,
                width: 24.r,
              ),
              CustomImageView(
                imagePath: Assets.images.imgImage.path,
                height: 24.r,
                width: 24.r,
                margin: EdgeInsets.only(left: 16.w),
              ),
              CustomImageView(
                imagePath: Assets.images.imgImage.path,
                height: 24.r,
                width: 24.r,
                margin: EdgeInsets.only(left: 16.w),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
