// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/localization/app_localization.dart';
import '/theme/app_decoration.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_image_view.dart';

class CatPage extends StatefulWidget {
  const CatPage({super.key});

  @override
  CatPageState createState() => CatPageState();
}

class CatPageState extends State<CatPage>
    with AutomaticKeepAliveClientMixin<CatPage> {
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
                SizedBox(height: 60.h),
                Column(
                  children: [
                    _buildFrameColumn(context),
                    SizedBox(height: 128.h),
                    _buildFrameColumn1(context),
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
  Widget _buildFrameColumn(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: AppDecoration.outlineGray
          .copyWith(borderRadius: BorderRadiusStyle.circleBorder20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: AppDecoration.fillSecondaryContainer,
            child: CustomImageView(
              imagePath: Assets.images.imgImage164x346.path,
              height: 164.h,
              width: 346.w,
            ),
          ),
          SizedBox(height: 14.h),
          CustomElevatedButton(
            height: 24.h,
            width: 42.w,
            text: 'CCSI'.tr,
            margin: EdgeInsets.only(left: 14.w),
            buttonTextStyle: CustomTextStyles.bodySmall10,
          ),
          SizedBox(height: 11.h),
          Padding(
            padding: EdgeInsets.only(left: 14.w),
            child: Text(
              '고양이 MBTI'.tr,
              style: CustomTextStyles.bodyMediumGray90002,
            ),
          ),
          SizedBox(height: 7.h),
          Padding(
            padding: EdgeInsets.only(left: 14.w),
            child: Text(
              '알쏭달쏭 고양이 성격 알아채기! 집사 전용 냥BTI'.tr,
              style: CustomTextStyles.bodySmallPrimaryContainer,
            ),
          ),
          SizedBox(height: 39.h),
          Padding(
            padding: EdgeInsets.only(left: 14.w),
            child: Row(
              children: [
                Text(
                  '자세히 보기'.tr,
                  style: CustomTextStyles.bodySmallGray700,
                ),
                CustomImageView(
                  imagePath: Assets.svg.imgArrowdownGray700.path,
                  height: 10.h,
                  width: 6.w,
                  margin: EdgeInsets.only(
                    left: 9.w,
                    top: 6.h,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.h),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameColumn1(BuildContext context) {
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
          Row(
            children: [
              Text(
                '고객센터'.tr,
                style: CustomTextStyles.bodySmallGray500,
              ),
              Padding(
                padding: EdgeInsets.only(left: 21.w),
                child: Text(
                  '이용약관'.tr,
                  style: CustomTextStyles.bodySmallGray500,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: Text(
                  '개인정보취급방침'.tr,
                  style: CustomTextStyles.bodySmallGray500,
                ),
              ),
            ],
          ),
          SizedBox(height: 14.h),
          Text(
            '기관 제휴 및 구매 문의'.tr,
            style: CustomTextStyles.bodySmallGray500,
          ),
          SizedBox(height: 38.h),
          Padding(
            padding: EdgeInsets.only(right: 51.w),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 1.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Address'.tr,
                        style: theme.textTheme.bodySmall,
                      ),
                      SizedBox(height: 9.h),
                      Text(
                        '서울시 구로구 디지털로34길 55'.tr,
                        style: theme.textTheme.bodySmall,
                      ),
                      SizedBox(height: 1.h),
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
                        'Contact'.tr,
                        style: theme.textTheme.bodySmall,
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        'business@cami.kr'.tr,
                        style: theme.textTheme.bodySmall,
                      ),
                      Text(
                        '02-861-6828'.tr,
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
          SizedBox(height: 38.h),
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
