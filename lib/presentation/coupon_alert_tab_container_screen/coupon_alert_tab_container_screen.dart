import 'package:cami_lab/core/app_export.dart';import 'package:cami_lab/presentation/coupon_alert_page/coupon_alert_page.dart';import 'package:cami_lab/widgets/app_bar/appbar_image.dart';import 'package:cami_lab/widgets/app_bar/appbar_subtitle_one.dart';import 'package:cami_lab/widgets/app_bar/appbar_title.dart';import 'package:cami_lab/widgets/app_bar/appbar_trailing_image.dart';import 'package:cami_lab/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';class CouponAlertTabContainerScreen extends StatefulWidget {const CouponAlertTabContainerScreen({Key? key}) : super(key: key);

@override CouponAlertTabContainerScreenState createState() =>  CouponAlertTabContainerScreenState();

 }

// ignore_for_file: must_be_immutable
class CouponAlertTabContainerScreenState extends State<CouponAlertTabContainerScreen> with  TickerProviderStateMixin {late TabController tabviewController;

@override void initState() { super.initState(); tabviewController = TabController(length: 2, vsync: this); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: mediaQueryData.size.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 6.v), child: Column(children: [_buildTabview(context), SizedBox(height: 686.v, child: TabBarView(controller: tabviewController, children: [CouponAlertPage(), CouponAlertPage()]))]))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 104.v, centerTitle: true, title: Container(padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 7.v), decoration: BoxDecoration(color: appTheme.gray10002, borderRadius: BorderRadius.circular(8.h), boxShadow: [BoxShadow(color: theme.colorScheme.onPrimaryContainer, spreadRadius: 2.h, blurRadius: 2.h, offset: Offset(0, 0))]), child: Column(children: [Padding(padding: EdgeInsets.only(right: 4.h), child: Row(children: [Container(height: 27.120003.v, width: 64.h, margin: EdgeInsets.only(bottom: 1.v), child: Stack(alignment: Alignment.topCenter, children: [CustomImageView(imagePath: ImageConstant.imgGroup, height: 21.v, width: 64.h, alignment: Alignment.center, margin: EdgeInsets.only(bottom: 6.v)), CustomImageView(imagePath: ImageConstant.imgFrameBlack9001, height: 16.adaptSize, width: 16.adaptSize, alignment: Alignment.topCenter, margin: EdgeInsets.fromLTRB(4.h, 9.v, 44.h, 2.v)), Align(alignment: Alignment.topCenter, child: Padding(padding: EdgeInsets.only(left: 26.h, top: 7.v, right: 15.h), child: Text("lbl179".tr, style: CustomTextStyles.bodyMediumTeal900)))])), AppbarImage(imagePath: ImageConstant.imgFrameBlack9002, margin: EdgeInsets.only(left: 273.h, top: 9.v))])), SizedBox(height: 8.v), Container(height: 40.9.v, width: 342.h, margin: EdgeInsets.only(right: 19.h), child: Stack(alignment: Alignment.center, children: [AppbarImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(top: 13.v, right: 322.h, bottom: 7.v), onTap: () {onTapArrowLeft(context);}), AppbarSubtitleOne(text: "msg85".tr, margin: EdgeInsets.only(left: 4.h)), AppbarTitle(text: "lbl213".tr, margin: EdgeInsets.only(left: 144.h, top: 13.v, right: 125.h))])), SizedBox(height: 3.v)])), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgImage7, margin: EdgeInsets.fromLTRB(16.h, 13.v, 16.h, 67.v))]); } 
/// Section Widget
Widget _buildTabview(BuildContext context) { return SizedBox(height: 48.v, width: 362.h, child: TabBar(controller: tabviewController, labelPadding: EdgeInsets.zero, labelColor: appTheme.gray900, unselectedLabelColor: appTheme.gray500, tabs: [Tab(child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("lbl214".tr), Padding(padding: EdgeInsets.only(left: 12.h), child: Text("lbl_22".tr))])), Tab(child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("lbl215".tr), Padding(padding: EdgeInsets.only(left: 12.h), child: Text("lbl_102".tr))]))])); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
