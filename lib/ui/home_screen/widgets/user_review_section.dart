// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// 🌎 Project imports:
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import 'user_review_item_widget.dart';

class UserReviewSection extends StatefulWidget {
  const UserReviewSection({super.key});

  @override
  State<UserReviewSection> createState() => _UserReviewSectionState();
}

class _UserReviewSectionState extends State<UserReviewSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '고마워요'.tr(),
          style: textTheme.bodyMedium!.colored(const Color(0xFF1F2020)),
        ),
        SizedBox(height: 11.h),
        SizedBox(
          height: 67.h,
          width: 183.w,
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  '심리검사로'.tr(),
                  style:
                      textTheme.headlineSmall!.colored(const Color(0xFF1F2020)),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'CAMI',
                  style:
                      textTheme.headlineSmall!.colored(const Color(0xFF1F2020)),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  '찾아온 기적'.tr(),
                  style:
                      textTheme.headlineSmall!.colored(const Color(0xFF1F2020)),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 6.h),
        Text(
          '실제 반려생활에 도움 받은 고객님들의 후기랍니다 🤍'.tr(),
          style: textTheme.bodySmall!.colored(const Color(0xFF1F2020)),
        ),
        SizedBox(height: 79.h),
        Container(
          alignment: Alignment.centerRight,
          height: 300.h,
          width: 361.w,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                height: 272.h,
                width: 12.w,
                alignment: Alignment.bottomRight,
              ),
              CarouselSlider.builder(
                options: CarouselOptions(
                  height: 284.h,
                  autoPlay: true,
                  viewportFraction: 1,
                  enableInfiniteScroll: false,
                  onPageChanged: (index, reason) {
                    // reviewSliderIdx.value = index;
                    // reviewSliderIdx.notifyListeners();
                  },
                ),
                itemCount: 2,
                itemBuilder: (context, index, realIndex) {
                  return const UserReviewItemWidget();
                },
              ),
            ],
          ),
        ),
        SizedBox(height: 56.h),
        SizedBox(
          height: 24.h,
          child: AnimatedSmoothIndicator(
            activeIndex: 0,
            count: 5,
            effect: ScrollingDotsEffect(
              activeDotColor: Colors.black,
              dotColor: Colors.black,
              dotHeight: 8.h,
              dotWidth: 8.w,
            ),
          ),
        ),
      ],
    );
  }
}
