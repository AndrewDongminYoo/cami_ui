// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/ui/shared/cami_app_footer.dart';
import 'widgets/user_profile_view_list_item_widget.dart';

class DogPage extends StatefulWidget {
  const DogPage({super.key});

  @override
  DogPageState createState() => DogPageState();
}

class DogPageState extends State<DogPage>
    with AutomaticKeepAliveClientMixin<DogPage> {
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
                          return const UserProfileViewListItemWidget();
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
