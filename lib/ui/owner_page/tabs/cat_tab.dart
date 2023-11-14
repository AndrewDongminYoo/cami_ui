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

class CatTab extends StatefulWidget {
  const CatTab({super.key});

  @override
  CatTabState createState() => CatTabState();
}

class CatTabState extends State<CatTab>
    with AutomaticKeepAliveClientMixin<CatTab> {
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
                    /// Recognize Your Cat's Personality! Butler's Cat BTI
                    CheckupItemWidget(
                      imagePath: Assets.images.imgImage164x346.path,
                      short: 'CCSI',
                      title: '고양이 MBTI'.tr(),
                      description: '알쏭달쏭 고양이 성격 알아채기! 집사 전용 냥BTI'.tr(),
                      onPressed: (context) {
                        /// TODO: implement onPressed
                      },
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
