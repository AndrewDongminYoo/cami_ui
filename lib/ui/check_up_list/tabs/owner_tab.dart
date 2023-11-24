// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/core/utils/media_query.dart';
import '/ui/shared/cami_app_footer.dart';
import '/ui/shared/check_up_item_widget.dart';
import '/ui/shared/check_up_list.dart';

/// 심리검사: 반려인
class OwnerTab extends StatefulWidget {
  const OwnerTab({super.key});

  @override
  OwnerTabState createState() => OwnerTabState();
}

class OwnerTabState extends State<OwnerTab>
    with AutomaticKeepAliveClientMixin<OwnerTab> {
  @override
  bool get wantKeepAlive => true;

  final ownerTestList =
      checkUpList.where((test) => test.type == '반려인').toList();

  @override
  Widget build(BuildContext context) {
    super.build(context);
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(children: [
              SizedBox(height: 60.h),
              Column(children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 16.h);
                    },
                    itemCount: ownerTestList.length,
                    itemBuilder: (context, index) {
                      final item = ownerTestList[index];
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
              ]),
            ]),
          ),
        ),
      ),
    );
  }
}
