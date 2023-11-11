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
                '공지사항'.tr,
                style: theme.textTheme.bodySmall,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: Text(
                  '자주 묻는 질문'.tr,
                  style: theme.textTheme.bodySmall,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 22.w),
                child: Text(
                  '이벤트'.tr,
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
                  '고객센터'.tr,
                  style: CustomTextStyles.bodySmallGray500,
                ),
                Text(
                  '이용약관'.tr,
                  style: CustomTextStyles.bodySmallGray500,
                ),
                Text(
                  '개인정보취급방침'.tr,
                  style: CustomTextStyles.bodySmallGray500,
                ),
                Text(
                  '기관 제휴 및 구매 문의'.tr,
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
                        'Address',
                        style: theme.textTheme.bodySmall,
                      ),
                      SizedBox(height: 9.h),
                      Text(
                        '서울시 구로구 디지털로34길 55'.tr,
                        style: theme.textTheme.bodySmall,
                      ),
                      Text(
                        '코오롱싸이언스밸리2차 B101'.tr,
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
                        'Contact',
                        style: theme.textTheme.bodySmall,
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        'business@cami.kr',
                        style: theme.textTheme.bodySmall,
                      ),
                      Text(
                        '02-861-6828',
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
            '주식회사 카미랩'.tr,
            style: theme.textTheme.bodySmall,
          ),
          Text(
            '대표: 조윤수 | 사업자등록번호 : 539-81-02640'.tr,
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 15.h),
          Text(
            'Copyright ⓒ 2023 CAMI Labs. All rights reserved.'.tr,
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
