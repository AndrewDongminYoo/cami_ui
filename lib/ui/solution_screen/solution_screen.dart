// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/core/utils/media_query.dart';
import '/gen/assets.gen.dart';
import '/theme/app_decoration.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/ui/shared/cami_app_bar.dart';
import '/ui/shared/cami_app_footer.dart';
import '/widgets/custom_image_view.dart';
import 'widgets/solution_banner.dart';

class SolutionScreen extends StatelessWidget {
  const SolutionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: const CamiAppBar(),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            primary: true,
            child: Column(
              children: [
                Text(
                  '함께해요'.tr(),
                  style: textTheme.bodyMedium!.colored(const Color(0xFF1F2020)),
                ),
                SizedBox(height: 17.h),
                Text(
                  '방문교육'.tr(),
                  style: textTheme.headlineSmall,
                ),
                SizedBox(height: 18.h),
                Text('준비된 반려인이'.tr(), style: textTheme.bodyLarge),
                Text('되기 위한 첫걸음'.tr(), style: textTheme.bodyLarge),
                SizedBox(height: 32.h),
                _buildStrongRelationship(context),
                SizedBox(height: 32.h),
                _buildProvenSolution(context),
                SizedBox(height: 130.h),
                Text('카미의 교육 서비스'.tr(), style: textTheme.titleMedium),
                SizedBox(height: 34.h),
                _buildSolutionList(context),
                SizedBox(height: 128.h),
                const CamiAppFooter(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Foster a strong relationship with your pet
  Widget _buildStrongRelationship(BuildContext context) {
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
                Text('반려인과의 돈독한 관계 형성'.tr(), style: textTheme.bodyLarge),
                SizedBox(height: 14.h),
                Text(
                  '그저 가르치는 것만을 목적으로 교육하지 않고'.tr(),
                  style: textTheme.bodySmall!.fSize(9),
                ),
                Text(
                  '마음과 몸 모두가 건강한 반려생활을 지속할 수'.tr(),
                  style: textTheme.bodySmall!.fSize(9),
                ),
                Text('있도록 도와드립니다.'.tr(), style: textTheme.bodySmall!.fSize(9)),
              ],
            ),
          ),
          CustomImageView(
            imagePath: Assets.images.cami02.path,
            height: 167.h,
            width: 130.w,
            margin: EdgeInsets.only(left: 15.w),
          ),
        ],
      ),
    );
  }

  /// Scientifically proven training
  Widget _buildProvenSolution(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      padding: EdgeInsets.symmetric(horizontal: 21.w),
      decoration: AppDecoration.fillGray50
          .copyWith(borderRadius: BorderRadiusStyle.circleBorder8),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: Assets.images.cami01.path,
            height: 128.h,
            width: 142.w,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(12.w, 24.h, 8.w, 24.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('과학적으로 검증된 교육'.tr(), style: textTheme.bodyLarge),
                SizedBox(height: 15.h),
                Text(
                  '반려동물의 긍정적인 반응을 활용하여'.tr(),
                  style: textTheme.bodySmall!.fSize(9),
                ),
                Text(
                  '과학적으로 검증된 방법들을 위주로'.tr(),
                  style: textTheme.bodySmall!.fSize(9),
                ),
                Text('교육을 진행합니다.'.tr(), style: textTheme.bodySmall!.fSize(9)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSolutionList(BuildContext context) {
    final solutionImages = kIsWeb
        ? [
            Assets.images.onePointPc.path,
            Assets.images.questionPc.path,
          ]
        : [
            Assets.images.onePointMo.path,
            Assets.images.questionMo.path,
          ];
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 24.h);
        },
        itemCount: solutionImages.length,
        itemBuilder: (context, index) {
          return SolutionBanner(
            imagePath: solutionImages[index],
          );
        },
      ),
    );
  }
}
