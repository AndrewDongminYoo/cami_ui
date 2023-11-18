// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/core/utils/media_query.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/ui/shared/cami_app_bar.dart';
import 'tabs/cat_tab.dart';
import 'tabs/dog_tab.dart';
import 'tabs/owner_tab.dart';

class OwnerScreen extends StatefulWidget {
  const OwnerScreen({super.key});

  @override
  OwnerScreenState createState() => OwnerScreenState();
}

class OwnerScreenState extends State<OwnerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: const CamiAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            primary: true,
            child: Column(
              children: [
                Text(
                  '찾아봐요'.tr(),
                  style: textTheme.bodyMedium!.colored(const Color(0xFF1F2020)),
                ),
                SizedBox(height: 11.h),
                Text(
                  '우리에게 필요한'.tr(),
                  style:
                      textTheme.headlineSmall!.colored(const Color(0xFF1F2020)),
                ),
                Text(
                  '심리검사는?'.tr(),
                  style:
                      textTheme.headlineSmall!.colored(const Color(0xFF1F2020)),
                ),
                SizedBox(height: 39.h),
                SizedBox(
                  height: 32.h,
                  width: 205.w,
                  child: TabBar(
                    controller: tabviewController,
                    labelPadding: EdgeInsets.zero,
                    labelColor: Colors.white,
                    labelStyle: textTheme.bodySmall!.colored(Colors.white),
                    unselectedLabelColor: Colors.black,
                    unselectedLabelStyle:
                        textTheme.bodySmall!.colored(Colors.white),
                    indicator: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(16.w),
                    ),
                    tabs: [
                      Tab(child: Text('전체'.tr())),
                      Tab(child: Text('반려견'.tr())),
                      Tab(child: Text('반려묘'.tr())),
                      Tab(child: Text('반려인'.tr())),
                    ],
                  ),
                ),
                SizedBox(
                  height: 1756.h,
                  child: TabBarView(
                    controller: tabviewController,
                    children: const [
                      OwnerTab(),
                      DogTab(),
                      CatTab(),
                      OwnerTab(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
