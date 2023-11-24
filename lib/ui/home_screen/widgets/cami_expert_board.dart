// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// 🌎 Project imports:
import '../data/advisor_list.dart';
import '/theme/app_decoration.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import 'expert_advisor_card.dart';

class CamiExpertBoard extends StatefulHookConsumerWidget {
  const CamiExpertBoard({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CamiExpertBoardState();
}

class _CamiExpertBoardState extends ConsumerState<CamiExpertBoard>
    with ChangeNotifier {
  final expertSliderIdx = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 99.h,
      ),
      decoration: AppDecoration.fillBlue50,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '함께해요'.tr(),
            style: textTheme.bodyMedium!.colored(const Color(0xFF1F2020)),
          ),
          SizedBox(height: 11.h),
          Text(
            '누가 만들었을까요?'.tr(),
            style: textTheme.headlineSmall!.colored(const Color(0xFF1F2020)),
          ),
          SizedBox(height: 7.h),
          Text(
            '올바른 반려 생활을 위해 CAMI 자문위원단이 모였어요.'.tr(),
            style: textTheme.bodySmall!.colored(const Color(0xFF1F2020)),
          ),
          SizedBox(height: 60.h),
          CarouselSlider.builder(
            options: CarouselOptions(
              height: 180.h,
              autoPlay: true,
              viewportFraction: 1,
              enableInfiniteScroll: false,
              onPageChanged: (index, reason) {
                expertSliderIdx.value = index;
                expertSliderIdx.notifyListeners();
              },
            ),
            itemCount: advisors.length,
            itemBuilder: (context, index, realIndex) {
              final advisor = advisors[realIndex];
              return ExpertAdvisorCard(advisor: advisor);
            },
          ),
          SizedBox(height: 24.h),
          SizedBox(
            height: 24.h,
            child: ValueListenableBuilder(
              valueListenable: expertSliderIdx,
              builder: (_, expertIndex, child) {
                return AnimatedSmoothIndicator(
                  activeIndex: expertIndex,
                  count: advisors.length,
                  effect: ScrollingDotsEffect(
                    activeDotColor: Colors.black,
                    dotColor: Colors.black,
                    dotHeight: 8.h,
                    dotWidth: 8.w,
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 28.h),
        ],
      ),
    );
  }
}
