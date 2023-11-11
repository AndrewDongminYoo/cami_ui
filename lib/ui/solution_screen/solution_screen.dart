// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/localization/app_localization.dart';
import '/theme/app_decoration.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/ui/shared/cami_app_bar.dart';
import '/widgets/custom_image_view.dart';
import 'widgets/solution_list_item_widget.dart';

class SolutionScreen extends StatelessWidget {
  const SolutionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: const CamiAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildFrameColumn(context),
                Text(
                  '함께해요'.tr,
                  style: CustomTextStyles.bodyMediumGray90002,
                ),
                SizedBox(height: 17.h),
                Text(
                  '방문교육'.tr,
                  style: CustomTextStyles.headlineSmallNanumSquareNeoBlack900,
                ),
                SizedBox(height: 18.h),
                Text(
                  '준비된 반려인이'.tr,
                  style: theme.textTheme.bodyLarge,
                ),
                Text(
                  '되기 위한 첫걸음'.tr,
                  style: theme.textTheme.bodyLarge,
                ),
                SizedBox(height: 32.h),
                _buildFrameRow(context),
                SizedBox(height: 32.h),
                _buildFrameRow1(context),
                SizedBox(height: 130.h),
                Text(
                  '카미의 교육 서비스'.tr,
                  style: CustomTextStyles.titleLargeBlack90020,
                ),
                SizedBox(height: 34.h),
                _buildSolutionList(context),
                SizedBox(height: 128.h),
                _buildFrameColumn1(context),
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
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: AppDecoration.fillOnPrimaryContainer,
      child: const CamiAppBar(),
    );
  }

  /// Section Widget
  Widget _buildFrameRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 29.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 44.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '반려인과의 돈독한 관계 형성'.tr,
                  style: theme.textTheme.bodyLarge,
                ),
                SizedBox(height: 14.h),
                Text(
                  '그저 가르치는 것만을 목적으로 교육하지 않고'.tr,
                  style: CustomTextStyles.bodySmallBlack9009,
                ),
                Text(
                  '마음과 몸 모두가 건강한 반려생활을 지속할 수'.tr,
                  style: CustomTextStyles.bodySmallBlack9009,
                ),
                Text(
                  '있도록 도와드립니다.'.tr,
                  style: CustomTextStyles.bodySmallBlack9009,
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: Assets.images.imgImage167x130.path,
            height: 167.h,
            width: 130.w,
            margin: EdgeInsets.only(left: 15.w),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameRow1(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      padding: EdgeInsets.symmetric(horizontal: 21.w),
      decoration: AppDecoration.fillGray50
          .copyWith(borderRadius: BorderRadiusStyle.circleBorder8),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: Assets.images.imgImage128x142.path,
            height: 128.h,
            width: 142.w,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(12.w, 24.h, 8.w, 24.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '과학적으로 검증된 교육'.tr,
                  style: theme.textTheme.bodyLarge,
                ),
                SizedBox(height: 15.h),
                Text(
                  '반려동물의 긍정적인 반응을 활용하여'.tr,
                  style: CustomTextStyles.bodySmallBlack9009,
                ),
                Text(
                  '과학적으로 검증된 방법들을 위주로'.tr,
                  style: CustomTextStyles.bodySmallBlack9009,
                ),
                Text(
                  '교육을 진행합니다.'.tr,
                  style: CustomTextStyles.bodySmallBlack9009,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSolutionList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(height: 24.h);
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return const SolutionListItemWidget();
        },
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
                padding: EdgeInsets.only(left: 19.w),
                child: Text(
                  '자주 묻는 질문'.tr,
                  style: theme.textTheme.bodySmall,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 21.w),
                child: Text(
                  '이벤트'.tr,
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ],
          ),
          SizedBox(height: 9.h),
          Padding(
            padding: EdgeInsets.only(right: 9.w),
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
          SizedBox(height: 39.h),
          Padding(
            padding: EdgeInsets.only(right: 63.w),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Address',
                      style: CustomTextStyles.bodySmall11,
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
                Padding(
                  padding: EdgeInsets.only(left: 27.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Contact',
                        style: CustomTextStyles.bodySmall11,
                      ),
                      SizedBox(height: 9.h),
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
