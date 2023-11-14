// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/core/utils/media_query.dart';
import '/ui/shared/cami_app_footer.dart';
import '/ui/shared/check_up_list.dart';
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

  final catTestList = checkUpList.where((test) => test.type == 'cat').toList();

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
                    ...catTestList.map((catTest) {
                      return CheckupItemWidget(
                        imagePath: catTest.imagePath!,
                        short: catTest.shortTitle!,
                        title: catTest.title!,
                        description: catTest.description!,
                        location: catTest.location!,
                      );
                    }).toList(),
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
