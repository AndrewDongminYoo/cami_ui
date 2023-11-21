// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/core/utils/media_query.dart';
import '/ui/shared/cami_app_footer.dart';
import '/ui/shared/check_up_item_widget.dart';
import '/ui/shared/check_up_list.dart';

class DogTab extends StatefulWidget {
  const DogTab({super.key});

  @override
  DogTabState createState() => DogTabState();
}

class DogTabState extends State<DogTab>
    with AutomaticKeepAliveClientMixin<DogTab> {
  @override
  bool get wantKeepAlive => true;

  final dogTestList = checkUpList.where((test) => test.type == '반려견').toList();

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
                        separatorBuilder: (context, index) {
                          return SizedBox(height: 16.h);
                        },
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          final item = dogTestList[index];
                          return CheckUpItemWidget(
                            thumbPath: item.thumbPath!,
                            short: item.short!,
                            nickname: item.nickname!,
                            description: item.description!,
                            location: item.location!,
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
