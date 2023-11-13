// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/widgets/custom_image_view.dart';

class SliderItemWidget extends StatelessWidget {
  const SliderItemWidget({
    super.key,
    required this.current,
    required this.items,
  });

  final ValueNotifier<int> current;
  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        height: 186.h,
        autoPlay: true,
        viewportFraction: 1,
        enableInfiniteScroll: false,
        onPageChanged: (index, reason) {
          current.value = index;
        },
      ),
      itemCount: items.length,
      itemBuilder: (context, index, realIndex) {
        return CustomImageView(
          imagePath: items[realIndex],
          height: 186.h,
          width: 329.w,
          margin: EdgeInsets.symmetric(horizontal: 10.w),
        );
      },
    );
  }
}
