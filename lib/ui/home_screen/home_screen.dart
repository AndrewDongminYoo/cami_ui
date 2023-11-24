// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/ui/shared/check_up_item_widget.dart';
import '/core/utils/media_query.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/ui/shared/cami_app_bar.dart';
import '/ui/shared/cami_app_footer.dart';
import '/ui/shared/check_up_list.dart';
import '/widgets/custom_outlined_button.dart';
import 'widgets/cami_expert_board.dart';
import 'widgets/cami_home_hero.dart';
import 'widgets/quick_test_banner_section.dart';
import 'widgets/see_more_button.dart';
import 'widgets/user_review_section.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with ChangeNotifier {
  final checkupFilter = ValueNotifier('popular');
  final popularList =
      checkUpList.where((test) => test.popular ?? false).toList();
  final featuredList =
      checkUpList.where((test) => test.featured ?? false).toList();

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
                const CamiHomeHero(),
                SizedBox(height: 99.h),
                Text(
                  '찾아봐요'.tr(),
                  style: textTheme.bodyMedium!.colored(const Color(0xFF1F2020)),
                ),
                SizedBox(height: 11.h),
                Text(
                  '우리에게 필요한'.tr(),
                  style: textTheme.headlineSmall!.extraBold,
                ),
                Text('심리검사는?'.tr(), style: textTheme.headlineSmall!.extraBold),
                SizedBox(height: 39.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomOutlinedButton(
                        onPressed: (context) {
                          updateFilter('popular');
                        },
                        width: 178.w,
                        text: '많은 분들이 찾은 인기 검사'.tr(),
                        buttonStyle: checkupFilter.value == 'popular'
                            ? selected
                            : unselected,
                        buttonTextStyle: textTheme.bodySmall!.colored(
                            checkupFilter.value == 'popular'
                                ? Colors.white
                                : Colors.black),
                      ),
                      SizedBox(width: 10.w),
                      CustomOutlinedButton(
                        onPressed: (context) {
                          updateFilter('featured');
                        },
                        width: 124.w,
                        text: '수의사 추천 검사'.tr(),
                        buttonStyle: checkupFilter.value == 'featured'
                            ? selected
                            : unselected,
                        buttonTextStyle: textTheme.bodySmall!.colored(
                            checkupFilter.value == 'featured'
                                ? Colors.white
                                : Colors.black),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 60.h),
                ValueListenableBuilder(
                  valueListenable: checkupFilter,
                  builder: (_, filter, child) {
                    final items = filter == 'popular' ? popularList : featuredList;
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 28.w),
                      child: ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return SizedBox(height: 15.h);
                        },
                        itemCount: items.length,
                        itemBuilder: (context, index) {
                          return CheckUpItemWidget(
                            thumbPath: items[index].thumbPath!,
                            short: items[index].short!,
                            nickname: items[index].nickname!,
                            description: items[index].description!,
                            location: items[index].location!,
                          );
                        },
                      ),
                    );
                  },
                ),
                SizedBox(height: 60.h),
                const SeeMoreButton(),
                SizedBox(height: 100.h),
                const CamiExpertBoard(),
                SizedBox(height: 99.h),
                const UserReviewSection(),
                SizedBox(height: 124.h),
                const QuickTestBannerSection(),
                SizedBox(height: 128.h),
                const CamiAppFooter(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  final unselected = OutlinedButton.styleFrom(
    backgroundColor: Colors.transparent,
    side: const BorderSide(color: Color(0xFF525252)),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(17.w),
    ),
  );
  final selected = OutlinedButton.styleFrom(
    backgroundColor: const Color(0xFF000000),
    side: const BorderSide(color: Color(0xFF525252)),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(17.w),
    ),
  );

  void updateFilter(String filter) {
    setState(() {
      checkupFilter.value = filter;
    });
    checkupFilter.notifyListeners();
  }
}
