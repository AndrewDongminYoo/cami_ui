// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/core/utils/media_query.dart';
import '/ui/shared/cami_app_footer.dart';
import 'widgets/checkup_owner_item_widget.dart';

class OwnerTab extends StatefulWidget {
  const OwnerTab({super.key});

  @override
  OwnerTabState createState() => OwnerTabState();
}

class OwnerTabState extends State<OwnerTab>
    with AutomaticKeepAliveClientMixin<OwnerTab> {
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
                    _buildUserProfileFrameList(context),
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

  /// Section Widget
  Widget _buildUserProfileFrameList(BuildContext context) {
    return Padding(
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
        itemCount: 3,
        itemBuilder: (context, index) {
          return const CheckupOwnerItemWidget();
        },
      ),
    );
  }
}
