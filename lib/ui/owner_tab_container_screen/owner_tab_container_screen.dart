// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/localization/app_localization.dart';
import '/theme/app_decoration.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/ui/cat_page/cat_page.dart';
import '/ui/dog_page/dog_page.dart';
import '/ui/owner_page/owner_page.dart';
import '/widgets/custom_image_view.dart';

class OwnerTabContainerScreen extends StatefulWidget {
  const OwnerTabContainerScreen({super.key});

  @override
  OwnerTabContainerScreenState createState() => OwnerTabContainerScreenState();
}

class OwnerTabContainerScreenState extends State<OwnerTabContainerScreen>
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
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildOwnerFrame(context),
                Text(
                  'lbl44'.tr,
                  style: CustomTextStyles.bodyMediumGray90002,
                ),
                SizedBox(height: 11.h),
                Text(
                  'lbl45'.tr,
                  style: theme.textTheme.headlineSmall,
                ),
                Text(
                  'lbl46'.tr,
                  style: theme.textTheme.headlineSmall,
                ),
                SizedBox(height: 39.h),
                SizedBox(
                  height: 32.h,
                  width: 205.w,
                  child: TabBar(
                    controller: tabviewController,
                    labelPadding: EdgeInsets.zero,
                    labelColor: theme.colorScheme.onPrimaryContainer,
                    labelStyle: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                    unselectedLabelColor: appTheme.black900,
                    unselectedLabelStyle: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                    indicator: BoxDecoration(
                      color: appTheme.black900,
                      borderRadius: BorderRadius.circular(16.w),
                    ),
                    tabs: [
                      Tab(
                        child: Text('lbl47'.tr),
                      ),
                      Tab(
                        child: Text('lbl48'.tr),
                      ),
                      Tab(
                        child: Text('lbl49'.tr),
                      ),
                      Tab(
                        child: Text('lbl3'.tr),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 1756.h,
                  child: TabBarView(
                    controller: tabviewController,
                    children: const [
                      OwnerPage(),
                      DogPage(),
                      CatPage(),
                      OwnerPage(),
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

  /// Section Widget
  Widget _buildOwnerFrame(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: CustomImageView(
            imagePath: Assets.images.imgAppNavBar.path,
            height: 50.h,
            width: 393.w));
  }
}
