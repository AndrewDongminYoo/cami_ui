import 'package:cami_lab/core/app_export.dart';
import 'package:cami_lab/presentation/cat_page/cat_page.dart';
import 'package:cami_lab/presentation/dog_page/dog_page.dart';
import 'package:cami_lab/presentation/owner_page/owner_page.dart';
import 'package:flutter/material.dart';

class OwnerTabContainerScreen extends StatefulWidget {
  const OwnerTabContainerScreen({Key? key})
      : super(
          key: key,
        );

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
                  "lbl44".tr,
                  style: CustomTextStyles.bodyMediumGray90002,
                ),
                SizedBox(height: 11.v),
                Text(
                  "lbl45".tr,
                  style: theme.textTheme.headlineSmall,
                ),
                Text(
                  "lbl46".tr,
                  style: theme.textTheme.headlineSmall,
                ),
                SizedBox(height: 39.v),
                Container(
                  height: 32.v,
                  width: 205.h,
                  child: TabBar(
                    controller: tabviewController,
                    labelPadding: EdgeInsets.zero,
                    labelColor: theme.colorScheme.onPrimaryContainer,
                    labelStyle: TextStyle(
                      fontSize: 12.fSize,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                    unselectedLabelColor: appTheme.black900,
                    unselectedLabelStyle: TextStyle(
                      fontSize: 12.fSize,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                    indicator: BoxDecoration(
                      color: appTheme.black900,
                      borderRadius: BorderRadius.circular(
                        16.h,
                      ),
                    ),
                    tabs: [
                      Tab(
                        child: Text(
                          "lbl47".tr,
                        ),
                      ),
                      Tab(
                        child: Text(
                          "lbl48".tr,
                        ),
                      ),
                      Tab(
                        child: Text(
                          "lbl49".tr,
                        ),
                      ),
                      Tab(
                        child: Text(
                          "lbl3".tr,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 622.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
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
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      decoration: AppDecoration.fillOnPrimaryContainer,
      child: CustomImageView(
        imagePath: ImageConstant.imgFrameGray900,
        height: 50.v,
        width: 361.h,
      ),
    );
  }
}
