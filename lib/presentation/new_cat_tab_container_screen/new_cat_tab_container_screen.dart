import 'package:cami_lab/core/app_export.dart';
import 'package:cami_lab/presentation/new_cat_page/new_cat_page.dart';
import 'package:cami_lab/widgets/app_bar/appbar_leading_image.dart';
import 'package:cami_lab/widgets/app_bar/appbar_title_image.dart';
import 'package:cami_lab/widgets/app_bar/custom_app_bar.dart';
import 'package:cami_lab/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class NewCatTabContainerScreen extends StatefulWidget {
  const NewCatTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  NewCatTabContainerScreenState createState() =>
      NewCatTabContainerScreenState();
}

class NewCatTabContainerScreenState extends State<NewCatTabContainerScreen>
    with TickerProviderStateMixin {
  TextEditingController editTextController = TextEditingController();

  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 15.v),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgVectorBlack90012x6,
                          height: 12.v,
                          width: 6.h,
                          margin: EdgeInsets.only(
                            top: 4.v,
                            bottom: 10.v,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 84.h),
                          child: Text(
                            "lbl_1_22".tr,
                            style: CustomTextStyles.bodyLarge18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 21.v),
                _buildViewStack(context),
                SizedBox(height: 25.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Text(
                      "lbl106".tr,
                      style: CustomTextStyles.bodyMediumBluegray900,
                    ),
                  ),
                ),
                SizedBox(height: 9.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: CustomTextFormField(
                    controller: editTextController,
                    textInputAction: TextInputAction.done,
                  ),
                ),
                SizedBox(height: 31.v),
                _buildDateTimeField(context),
                SizedBox(height: 26.v),
                _buildHorizontalScroll(context),
                SizedBox(height: 40.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Text(
                      "lbl112".tr,
                      style: CustomTextStyles.bodyMediumBluegray900,
                    ),
                  ),
                ),
                SizedBox(height: 9.v),
                _buildTabview(context),
                SizedBox(
                  height: 945.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      NewCatPage(),
                      NewCatPage(),
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
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 29.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgVector,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 21.v,
          bottom: 14.v,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 2.h),
        child: Column(
          children: [
            AppbarTitleImage(
              imagePath: ImageConstant.imgVectorGray9004x4,
              margin: EdgeInsets.only(left: 44.h),
            ),
            SizedBox(height: 2.v),
            Row(
              children: [
                AppbarTitleImage(
                  imagePath: ImageConstant.imgVectorGray900,
                ),
                AppbarTitleImage(
                  imagePath: ImageConstant.imgVectorGray90014x23,
                  margin: EdgeInsets.only(left: 4.h),
                ),
                AppbarTitleImage(
                  imagePath: ImageConstant.imgVectorGray9004x4,
                  margin: EdgeInsets.only(left: 3.h),
                ),
              ],
            ),
          ],
        ),
      ),
      actions: [
        Container(
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 13.v,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgMenu,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildViewStack(BuildContext context) {
    return SizedBox(
      height: 188.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 50.v,
              width: double.maxFinite,
              margin: EdgeInsets.only(bottom: 31.v),
              decoration: BoxDecoration(
                color: appTheme.whiteA700,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                bottom: 45.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgVectorGray9004x4,
                    height: 4.adaptSize,
                    width: 4.adaptSize,
                    alignment: Alignment.centerRight,
                  ),
                  SizedBox(height: 2.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgVector,
                        height: 14.v,
                        width: 13.h,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgVectorGray900,
                        height: 14.adaptSize,
                        width: 14.adaptSize,
                        margin: EdgeInsets.only(left: 2.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgVectorGray90014x23,
                        height: 14.v,
                        width: 23.h,
                        margin: EdgeInsets.only(left: 4.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgVectorGray9004x4,
                        height: 14.v,
                        width: 3.h,
                        margin: EdgeInsets.only(left: 3.h),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(
                right: 16.h,
                bottom: 44.v,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgMenu,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 188.v,
              width: 361.h,
              decoration: BoxDecoration(
                color: appTheme.gray50,
                borderRadius: BorderRadius.circular(
                  12.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 128.v,
              width: 122.h,
              margin: EdgeInsets.only(
                left: 28.h,
                top: 16.v,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  61.h,
                ),
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgImage100x100,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 40.v,
              width: 121.h,
              margin: EdgeInsets.only(
                right: 98.h,
                bottom: 20.v,
              ),
              decoration: BoxDecoration(
                color: appTheme.blue50,
                borderRadius: BorderRadius.circular(
                  8.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(
                top: 27.v,
                right: 57.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl104".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                  SizedBox(height: 1.v),
                  SizedBox(
                    width: 156.h,
                    child: Text(
                      "msg53".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodySmallGray500.copyWith(
                        height: 1.33,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              width: 145.h,
              margin: EdgeInsets.only(
                right: 74.h,
                bottom: 68.v,
              ),
              child: Text(
                "msg_9mb".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodySmallGray500.copyWith(
                  height: 1.33,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(
                right: 113.h,
                bottom: 29.v,
              ),
              child: Text(
                "lbl105".tr,
                style: CustomTextStyles.bodyMediumGray90001,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDateTimeField(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(left: 16.h),
      child: IntrinsicWidth(
        child: _buildWidget(
          context,
          widget: "lbl107".tr,
          widget1: "lbl108".tr,
          widget2: "lbl109".tr,
          widget3: "lbl110".tr,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHorizontalScroll(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(left: 16.h),
      child: IntrinsicWidth(
        child: _buildWidget(
          context,
          widget: "lbl111".tr,
          widget1: "lbl108".tr,
          widget2: "lbl109".tr,
          widget3: "lbl110".tr,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 36.v,
      width: 362.h,
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        tabs: [
          Tab(
            child: Text(
              "lbl113".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl114".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildWidget(
    BuildContext context, {
    required String widget,
    required String widget1,
    required String widget2,
    required String widget3,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 8.v,
            bottom: 42.v,
          ),
          child: Text(
            widget,
            style: CustomTextStyles.bodyMediumBluegray900.copyWith(
              color: appTheme.blueGray900,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 1821.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  height: 40.v,
                  width: 91.h,
                  margin: EdgeInsets.only(top: 32.v),
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.h,
                    vertical: 16.v,
                  ),
                  decoration: AppDecoration.fillGray.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgArrowDown,
                    height: 8.v,
                    width: 12.h,
                    alignment: Alignment.centerRight,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 3.h,
                    top: 39.v,
                    bottom: 8.v,
                  ),
                  child: Text(
                    widget1,
                    style: theme.textTheme.bodyLarge!.copyWith(
                      color: appTheme.black900,
                    ),
                  ),
                ),
                Container(
                  height: 40.v,
                  width: 91.h,
                  margin: EdgeInsets.only(
                    left: 17.h,
                    top: 32.v,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.h,
                    vertical: 16.v,
                  ),
                  decoration: AppDecoration.fillGray.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgArrowDown,
                    height: 8.v,
                    width: 12.h,
                    alignment: Alignment.centerRight,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 3.h,
                    top: 39.v,
                    bottom: 8.v,
                  ),
                  child: Text(
                    widget2,
                    style: theme.textTheme.bodyLarge!.copyWith(
                      color: appTheme.black900,
                    ),
                  ),
                ),
                Container(
                  height: 40.v,
                  width: 91.h,
                  margin: EdgeInsets.only(
                    left: 16.h,
                    top: 32.v,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.h,
                    vertical: 16.v,
                  ),
                  decoration: AppDecoration.fillGray.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgArrowDown,
                    height: 8.v,
                    width: 12.h,
                    alignment: Alignment.centerRight,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 4.h,
                    top: 39.v,
                    bottom: 8.v,
                  ),
                  child: Text(
                    widget3,
                    style: theme.textTheme.bodyLarge!.copyWith(
                      color: appTheme.black900,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
