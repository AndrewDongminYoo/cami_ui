// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/core/utils/media_query.dart';
import '/gen/assets.gen.dart';
import '/ui/shared/cami_app_footer.dart';
import '/ui/shared/checkup_item_widget.dart';

class DogTab extends StatefulWidget {
  const DogTab({super.key});

  @override
  DogTabState createState() => DogTabState();
}

class DogTabState extends State<DogTab>
    with AutomaticKeepAliveClientMixin<DogTab> {
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
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (
                          context,
                          index,
                        ) {
                          return SizedBox(height: 16.h);
                        },
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return CheckupItemWidget(
                            imagePath: Assets.images.imgImage15.path,
                            short: 'DCSI-II',
                            title: '강아지 MBTI'.tr(),
                            description:
                                '16가지의 성격 유형, 멍BTI로 내 강아지의 성격 바로 알기'.tr(),
                            onPressed: (context) {
                              // TODO: implement onPressed
                            },
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 128.h),
                    const CamiAppFooter(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
