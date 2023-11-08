import '../home_screen/widgets/liststack1_item_widget.dart';
import '../home_screen/widgets/liststack_item_widget.dart';
import 'package:cami_lab/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 50.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              width: double.maxFinite,
                              margin: EdgeInsets.only(bottom: 13.v),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 1727.v),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  _buildStackImage(context),
                                                  SizedBox(height: 232.v),
                                                  _buildHorizontalScrollRow(
                                                      context),
                                                  SizedBox(height: 60.v),
                                                  _buildListStack(context),
                                                  SizedBox(height: 59.v),
                                                  _buildHorizontalScrollRow1(
                                                      context),
                                                  SizedBox(height: 100.v),
                                                  _buildHorizontalScrollRow2(
                                                      context),
                                                  SizedBox(height: 289.v),
                                                  Container(
                                                      width: 21.h,
                                                      margin: EdgeInsets.only(
                                                          left: 372.h),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            _buildListStack1(
                                                                context),
                                                            Spacer(),
                                                            _buildHorizontalScrollRow3(
                                                                context),
                                                            _buildHorizontalScrollRow4(
                                                                context)
                                                          ]))
                                                ]))),
                                    _buildHorizontalScrollRow5(context)
                                  ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildStackImage(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: SizedBox(
            height: 587.v,
            width: 337.h,
            child: Stack(alignment: Alignment.bottomCenter, children: [
              Align(
                  alignment: Alignment.center,
                  child: Container(
                      height: 586.v,
                      width: 337.h,
                      decoration: BoxDecoration(
                          color: appTheme.yellow400,
                          borderRadius: BorderRadius.circular(20.h)))),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                      height: 320.v,
                      width: 337.h,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(ImageConstant.imgImage320x337),
                              fit: BoxFit.cover))))
            ])));
  }

  /// Section Widget
  Widget _buildHorizontalScrollRow(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 46.h),
        child: IntrinsicWidth(
            child: SizedBox(
                width: 347.h,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                          onTap: () {
                            onTapView(context);
                          },
                          child: Container(
                              height: 34.v,
                              width: 172.h,
                              margin: EdgeInsets.only(top: 6.v),
                              decoration: BoxDecoration(
                                  color: appTheme.black900,
                                  borderRadius: BorderRadius.circular(17.h),
                                  border: Border.all(
                                      color: appTheme.blueGray70001,
                                      width: 1.h)))),
                      Container(
                          height: 34.v,
                          width: 120.h,
                          margin: EdgeInsets.only(left: 9.h, top: 6.v),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(17.h),
                              border: Border.all(
                                  color: appTheme.blueGray70001, width: 1.h))),
                      Spacer(flex: 96),
                      Padding(
                          padding: EdgeInsets.only(bottom: 22.v),
                          child: Text("lbl61".tr,
                              style: theme.textTheme.bodySmall)),
                      Spacer(flex: 3),
                      Padding(
                          padding: EdgeInsets.only(bottom: 22.v),
                          child: Text("lbl62".tr,
                              style: CustomTextStyles.bodySmallBlack900))
                    ]))));
  }

  /// Section Widget
  Widget _buildListStack(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 28.h),
            child: ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 16.v);
                },
                itemCount: 3,
                itemBuilder: (context, index) {
                  return ListstackItemWidget();
                })));
  }

  /// Section Widget
  Widget _buildHorizontalScrollRow1(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 107.h),
        child: IntrinsicWidth(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              SizedBox(
                  height: 48.v,
                  width: 180.h,
                  child: Stack(alignment: Alignment.centerRight, children: [
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            height: 48.v,
                            width: 180.h,
                            decoration: BoxDecoration(
                                color: appTheme.gray50,
                                borderRadius: BorderRadius.circular(24.h)))),
                    CustomImageView(
                        imagePath: ImageConstant.imgArrowRight,
                        height: 10.v,
                        width: 6.h,
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(right: 29.h))
                  ])),
              Padding(
                  padding: EdgeInsets.only(left: 1236.h, bottom: 29.v),
                  child: Text("lbl63".tr,
                      style: CustomTextStyles.bodySmallGray90002))
            ])));
  }

  /// Section Widget
  Widget _buildHorizontalScrollRow2(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: IntrinsicWidth(
            child: SizedBox(
                width: double.maxFinite,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                          height: 180.v,
                          width: 337.h,
                          margin: EdgeInsets.only(top: 254.v, bottom: 176.v)),
                      Spacer(flex: 69),
                      SizedBox(
                          height: 610.v,
                          width: double.maxFinite,
                          child:
                              Stack(alignment: Alignment.bottomLeft, children: [
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                    height: 50.v,
                                    width: double.maxFinite,
                                    margin: EdgeInsets.only(bottom: 260.v),
                                    decoration: BoxDecoration(
                                        color: appTheme.whiteA700))),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 16.h, bottom: 274.v),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgVectorGray9004x4,
                                              height: 4.adaptSize,
                                              width: 4.adaptSize,
                                              alignment: Alignment.centerRight),
                                          SizedBox(height: 1.v),
                                          SizedBox(
                                              width: 63.h,
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgVector,
                                                        height: 14.v,
                                                        width: 13.h),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgVectorGray900,
                                                        height: 14.adaptSize,
                                                        width: 14.adaptSize),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgVectorGray90014x23,
                                                        height: 14.v,
                                                        width: 23.h),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgVectorGray9004x4,
                                                        height: 14.v,
                                                        width: 3.h)
                                                  ]))
                                        ]))),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                    margin: EdgeInsets.only(
                                        right: 16.h, bottom: 273.v),
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                ImageConstant.imgMenu),
                                            fit: BoxFit.cover)))),
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    height: 610.v,
                                    width: double.maxFinite,
                                    decoration:
                                        BoxDecoration(color: appTheme.blue50))),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                    height: 180.v,
                                    width: 337.h,
                                    margin: EdgeInsets.only(bottom: 189.v),
                                    decoration: BoxDecoration(
                                        color: appTheme.whiteA700,
                                        borderRadius:
                                            BorderRadius.circular(10.h),
                                        boxShadow: [
                                          BoxShadow(
                                              color: appTheme.blueGray1006b,
                                              spreadRadius: 2.h,
                                              blurRadius: 2.h,
                                              offset: Offset(0, 0))
                                        ]))),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                    height: 180.adaptSize,
                                    width: 180.adaptSize,
                                    margin: EdgeInsets.only(bottom: 189.v),
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                ImageConstant.imgImage180x180),
                                            fit: BoxFit.cover)))),
                            Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                    height: 16.v,
                                    width: 321.h,
                                    margin: EdgeInsets.only(top: 257.v))),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                    height: 124.v,
                                    width: 321.h,
                                    margin: EdgeInsets.only(bottom: 205.v))),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                    height: 59.v,
                                    width: 156.h,
                                    margin: EdgeInsets.only(bottom: 204.v))),
                            Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                    padding: EdgeInsets.only(top: 256.v),
                                    child: Text("lbl64".tr,
                                        style: CustomTextStyles
                                            .bodySmallGreen300))),
                            Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                    padding: EdgeInsets.only(top: 281.v),
                                    child: Text("lbl65".tr,
                                        style: CustomTextStyles
                                            .bodyLargeGray90004))),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                    width: 136.h,
                                    margin: EdgeInsets.only(bottom: 243.v),
                                    child: Text("lbl_n".tr,
                                        maxLines: null,
                                        overflow: TextOverflow.ellipsis,
                                        style: CustomTextStyles
                                            .bodySmallGray9000411
                                            .copyWith(height: 1.77)))),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                    width: 156.h,
                                    margin: EdgeInsets.only(bottom: 224.v),
                                    child: Text("msg23".tr,
                                        maxLines: null,
                                        overflow: TextOverflow.ellipsis,
                                        style: CustomTextStyles
                                            .bodySmallGray9000411
                                            .copyWith(height: 1.77)))),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                    width: 133.h,
                                    margin: EdgeInsets.only(bottom: 204.v),
                                    child: Text("msg_ebs".tr,
                                        maxLines: null,
                                        overflow: TextOverflow.ellipsis,
                                        style: CustomTextStyles
                                            .bodySmallGray9000411
                                            .copyWith(height: 1.77))))
                          ])),
                      Spacer(flex: 30),
                      Container(
                          height: 180.v,
                          width: 349.h,
                          margin: EdgeInsets.only(top: 241.v, bottom: 189.v),
                          child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        height: 180.v,
                                        width: 337.h,
                                        decoration: BoxDecoration(
                                            color: appTheme.whiteA700,
                                            borderRadius:
                                                BorderRadius.circular(10.h),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: appTheme.blueGray1006b,
                                                  spreadRadius: 2.h,
                                                  blurRadius: 2.h,
                                                  offset: Offset(0, 0))
                                            ]))),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                        height: 180.adaptSize,
                                        width: 180.adaptSize,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    ImageConstant.imgImage9),
                                                fit: BoxFit.cover)))),
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                        height: 16.v,
                                        width: 321.h,
                                        margin: EdgeInsets.only(top: 16.v))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        height: 124.v,
                                        width: 321.h,
                                        margin: EdgeInsets.only(bottom: 16.v))),
                                Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Container(
                                        height: 59.v,
                                        width: 161.h,
                                        margin: EdgeInsets.only(
                                            left: 16.h, bottom: 15.v))),
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 16.h, top: 15.v),
                                        child: Text("lbl66".tr,
                                            style: CustomTextStyles
                                                .bodySmallGreen300))),
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 16.h, top: 40.v),
                                        child: Text("lbl67".tr,
                                            style: CustomTextStyles
                                                .bodyLargeGray90004))),
                                Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Container(
                                        width: 140.h,
                                        margin: EdgeInsets.only(
                                            left: 16.h, bottom: 54.v),
                                        child: Text("msg_knollo".tr,
                                            maxLines: null,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .bodySmallGray9000411
                                                .copyWith(height: 1.77)))),
                                Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Container(
                                        width: 133.h,
                                        margin: EdgeInsets.only(
                                            left: 16.h, bottom: 35.v),
                                        child: Text("msg_kpa_professional".tr,
                                            maxLines: null,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .bodySmallGray90004
                                                .copyWith(height: 1.95)))),
                                Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Container(
                                        width: 161.h,
                                        margin: EdgeInsets.only(
                                            left: 16.h, bottom: 15.v),
                                        child: Text("msg_ebs2".tr,
                                            maxLines: null,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .bodySmallGray9000411
                                                .copyWith(height: 1.77))))
                              ])),
                      Container(
                          height: 180.v,
                          width: 349.h,
                          margin: EdgeInsets.only(
                              left: 8.h, top: 241.v, bottom: 189.v),
                          child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        height: 180.v,
                                        width: 337.h,
                                        decoration: BoxDecoration(
                                            color: appTheme.whiteA700,
                                            borderRadius:
                                                BorderRadius.circular(10.h),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: appTheme.blueGray1006b,
                                                  spreadRadius: 2.h,
                                                  blurRadius: 2.h,
                                                  offset: Offset(0, 0))
                                            ]))),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                        height: 180.adaptSize,
                                        width: 180.adaptSize,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    ImageConstant.imgImage10),
                                                fit: BoxFit.cover)))),
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                        height: 16.v,
                                        width: 321.h,
                                        margin: EdgeInsets.only(top: 16.v))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        height: 124.v,
                                        width: 321.h,
                                        margin: EdgeInsets.only(bottom: 16.v))),
                                Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Container(
                                        height: 39.v,
                                        width: 139.h,
                                        margin: EdgeInsets.only(
                                            left: 16.h, bottom: 16.v))),
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 16.h, top: 15.v),
                                        child: Text("lbl68".tr,
                                            style: CustomTextStyles
                                                .bodySmallGreen300))),
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 16.h, top: 40.v),
                                        child: Text("lbl69".tr,
                                            style: CustomTextStyles
                                                .bodyLargeGray90004))),
                                Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Container(
                                        width: 114.h,
                                        margin: EdgeInsets.only(
                                            left: 16.h, bottom: 35.v),
                                        child: Text("lbl70".tr,
                                            maxLines: null,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .bodySmallGray9000411
                                                .copyWith(height: 1.77)))),
                                Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Container(
                                        width: 139.h,
                                        margin: EdgeInsets.only(
                                            left: 16.h, bottom: 15.v),
                                        child: Text("lbl71".tr,
                                            maxLines: null,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .bodySmallGray9000411
                                                .copyWith(height: 1.77))))
                              ])),
                      Container(
                          height: 180.v,
                          width: 349.h,
                          margin: EdgeInsets.only(
                              left: 8.h, top: 241.v, bottom: 189.v),
                          child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        height: 180.v,
                                        width: 337.h,
                                        decoration: BoxDecoration(
                                            color: appTheme.whiteA700,
                                            borderRadius:
                                                BorderRadius.circular(10.h),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: appTheme.blueGray1006b,
                                                  spreadRadius: 2.h,
                                                  blurRadius: 2.h,
                                                  offset: Offset(0, 0))
                                            ]))),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                        height: 180.adaptSize,
                                        width: 180.adaptSize,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    ImageConstant.imgImage11),
                                                fit: BoxFit.cover)))),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 16.h),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("lbl72".tr,
                                                  style: CustomTextStyles
                                                      .bodySmallGreen300),
                                              SizedBox(height: 8.v),
                                              Text("lbl73".tr,
                                                  style: CustomTextStyles
                                                      .bodyLargeGray90004),
                                              SizedBox(height: 62.v),
                                              Text("lbl74".tr,
                                                  style: CustomTextStyles
                                                      .bodySmallGray9000411),
                                              SizedBox(height: 2.v),
                                              Text("lbl75".tr,
                                                  style: CustomTextStyles
                                                      .bodySmallGray9000411)
                                            ])))
                              ])),
                      Container(
                          height: 180.v,
                          width: 349.h,
                          margin: EdgeInsets.only(
                              left: 8.h, top: 241.v, bottom: 189.v),
                          child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        height: 180.v,
                                        width: 337.h,
                                        decoration: BoxDecoration(
                                            color: appTheme.whiteA700,
                                            borderRadius:
                                                BorderRadius.circular(10.h),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: appTheme.blueGray1006b,
                                                  spreadRadius: 2.h,
                                                  blurRadius: 2.h,
                                                  offset: Offset(0, 0))
                                            ]))),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                        height: 180.adaptSize,
                                        width: 180.adaptSize,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    ImageConstant.imgImage12),
                                                fit: BoxFit.cover)))),
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                        height: 16.v,
                                        width: 321.h,
                                        margin: EdgeInsets.only(top: 16.v))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        height: 124.v,
                                        width: 321.h,
                                        margin: EdgeInsets.only(bottom: 16.v))),
                                Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Container(
                                        height: 39.v,
                                        width: 125.h,
                                        margin: EdgeInsets.only(
                                            left: 16.h, bottom: 16.v))),
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 16.h, top: 15.v),
                                        child: Text("lbl76".tr,
                                            style: CustomTextStyles
                                                .bodySmallGreen300))),
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 16.h, top: 40.v),
                                        child: Text("lbl77".tr,
                                            style: CustomTextStyles
                                                .bodyLargeGray90004))),
                                Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Container(
                                        width: 121.h,
                                        margin: EdgeInsets.only(
                                            left: 16.h, bottom: 35.v),
                                        child: Text("msg_kpa_ctp_ccpdt_ka".tr,
                                            maxLines: null,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .bodySmallGray9000411
                                                .copyWith(height: 1.77)))),
                                Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Container(
                                        width: 125.h,
                                        margin: EdgeInsets.only(
                                            left: 16.h, bottom: 15.v),
                                        child: Text("lbl78".tr,
                                            maxLines: null,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .bodySmallGray9000411
                                                .copyWith(height: 1.77))))
                              ])),
                      Container(
                          height: 180.v,
                          width: 349.h,
                          margin: EdgeInsets.only(
                              left: 8.h, top: 241.v, bottom: 189.v),
                          child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        height: 180.v,
                                        width: 337.h,
                                        decoration: BoxDecoration(
                                            color: appTheme.whiteA700,
                                            borderRadius:
                                                BorderRadius.circular(10.h),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: appTheme.blueGray1006b,
                                                  spreadRadius: 2.h,
                                                  blurRadius: 2.h,
                                                  offset: Offset(0, 0))
                                            ]))),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                        height: 180.adaptSize,
                                        width: 180.adaptSize,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    ImageConstant.imgImage13),
                                                fit: BoxFit.cover)))),
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                        height: 16.v,
                                        width: 321.h,
                                        margin: EdgeInsets.only(top: 16.v))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        height: 124.v,
                                        width: 321.h,
                                        margin: EdgeInsets.only(bottom: 16.v))),
                                Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Container(
                                        height: 39.v,
                                        width: 144.h,
                                        margin: EdgeInsets.only(
                                            left: 16.h, bottom: 16.v))),
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 16.h, top: 15.v),
                                        child: Text("lbl79".tr,
                                            style: CustomTextStyles
                                                .bodySmallGreen300))),
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 16.h, top: 40.v),
                                        child: Text("lbl80".tr,
                                            style: CustomTextStyles
                                                .bodyLargeGray90004))),
                                Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Container(
                                        width: 120.h,
                                        margin: EdgeInsets.only(
                                            left: 16.h, bottom: 35.v),
                                        child: Text("lbl_12".tr,
                                            maxLines: null,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .bodySmallGray9000411
                                                .copyWith(height: 1.77)))),
                                Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Container(
                                        width: 144.h,
                                        margin: EdgeInsets.only(
                                            left: 16.h, bottom: 15.v),
                                        child: Text("msg24".tr,
                                            maxLines: null,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .bodySmallGray9000411
                                                .copyWith(height: 1.77))))
                              ]))
                    ]))));
  }

  /// Section Widget
  Widget _buildListStack1(BuildContext context) {
    return Expanded(
        child: SizedBox(
            height: 318.v,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(width: 7.h);
                },
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Liststack1ItemWidget();
                })));
  }

  /// Section Widget
  Widget _buildHorizontalScrollRow3(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(bottom: 32.v),
        child: IntrinsicWidth(
            child: SizedBox(
                height: 284.v,
                width: 342.h,
                child: Stack(alignment: Alignment.topLeft, children: [
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                          height: 256.v,
                          width: 329.h,
                          decoration: BoxDecoration(
                              color: appTheme.gray50,
                              borderRadius: BorderRadius.circular(20.h),
                              boxShadow: [
                                BoxShadow(
                                    color: appTheme.gray5004c,
                                    spreadRadius: 2.h,
                                    blurRadius: 2.h,
                                    offset: Offset(0, 0))
                              ]))),
                  CustomImageView(
                      imagePath: ImageConstant.imgVectorGray90004,
                      height: 12.v,
                      width: 16.h,
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(left: 24.h, top: 68.v)),
                  Align(
                      alignment: Alignment.topRight,
                      child: Container(
                          height: 84.adaptSize,
                          width: 84.adaptSize,
                          margin: EdgeInsets.only(top: 2.v, right: 1.h),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(ImageConstant.imgImage16),
                                  fit: BoxFit.cover)))),
                  CustomImageView(
                      imagePath: ImageConstant.imgVectorGray9000491x86,
                      height: 91.v,
                      width: 86.h,
                      alignment: Alignment.topRight),
                  Align(
                      alignment: Alignment.topRight,
                      child: Container(
                          height: 28.v,
                          width: 47.h,
                          margin: EdgeInsets.only(top: 50.v, right: 70.h),
                          decoration: BoxDecoration(
                              color: appTheme.yellow400,
                              borderRadius: BorderRadius.circular(12.h)))),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                          width: 219.h,
                          margin: EdgeInsets.only(left: 24.h, top: 97.v),
                          child: Text("msg40".tr.toUpperCase(),
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodySmallGray90004_1
                                  .copyWith(height: 1.33)))),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 24.h, bottom: 104.v),
                          child: Text("msg41".tr.toUpperCase(),
                              style: CustomTextStyles.bodySmallGray90004_1))),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                          width: 221.h,
                          margin: EdgeInsets.only(left: 24.h, bottom: 72.v),
                          child: Text("msg42".tr.toUpperCase(),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodySmallGray90004_1
                                  .copyWith(height: 1.33)))),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 24.h, bottom: 40.v),
                          child: Text("msg43".tr.toUpperCase(),
                              style: CustomTextStyles.bodySmallGray90004_1))),
                  Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                          padding: EdgeInsets.only(top: 53.v, right: 83.h),
                          child: Text("lbl84".tr.toUpperCase(),
                              style: CustomTextStyles.bodySmallGray90004_1)))
                ]))));
  }

  /// Section Widget
  Widget _buildHorizontalScrollRow4(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 7.h),
        child: IntrinsicWidth(
            child: SizedBox(
                height: 318.v,
                width: 342.h,
                child: Stack(alignment: Alignment.bottomLeft, children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(height: 318.v, width: 329.h)),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                          height: 288.v,
                          width: 329.h,
                          decoration: BoxDecoration(
                              color: appTheme.gray50,
                              borderRadius: BorderRadius.circular(20.h),
                              boxShadow: [
                                BoxShadow(
                                    color: appTheme.gray5004c,
                                    spreadRadius: 2.h,
                                    blurRadius: 2.h,
                                    offset: Offset(0, 0))
                              ]))),
                  CustomImageView(
                      imagePath: ImageConstant.imgVectorGray90004,
                      height: 12.v,
                      width: 16.h,
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(left: 24.h, top: 70.v)),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                          height: 144.v,
                          width: 234.h,
                          margin: EdgeInsets.only(left: 24.h, bottom: 72.v))),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                          height: 16.v,
                          width: 281.h,
                          margin: EdgeInsets.only(left: 24.h, bottom: 40.v))),
                  Align(
                      alignment: Alignment.topRight,
                      child: Container(
                          height: 84.adaptSize,
                          width: 84.adaptSize,
                          margin: EdgeInsets.only(top: 4.v, right: 1.h))),
                  Align(
                      alignment: Alignment.topRight,
                      child: Container(
                          height: 84.adaptSize,
                          width: 84.adaptSize,
                          margin: EdgeInsets.only(top: 4.v, right: 1.h),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(ImageConstant.imgImage17),
                                  fit: BoxFit.cover)))),
                  CustomImageView(
                      imagePath: ImageConstant.imgVectorGray9000491x86,
                      height: 91.v,
                      width: 86.h,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(top: 2.v)),
                  Align(
                      alignment: Alignment.topRight,
                      child: Container(
                          height: 28.v,
                          width: 47.h,
                          margin: EdgeInsets.only(top: 52.v, right: 70.h),
                          decoration: BoxDecoration(
                              color: appTheme.yellow400,
                              borderRadius: BorderRadius.circular(12.h)))),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                          width: 224.h,
                          margin: EdgeInsets.only(left: 24.h, top: 101.v),
                          child: Text("msg44".tr.toUpperCase(),
                              maxLines: null,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodySmallGray90004_1
                                  .copyWith(height: 1.33)))),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                          width: 227.h,
                          margin: EdgeInsets.only(left: 24.h, top: 133.v),
                          child: Text("msg45".tr.toUpperCase(),
                              maxLines: null,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodySmallGray90004_1
                                  .copyWith(height: 1.33)))),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                          width: 226.h,
                          margin: EdgeInsets.only(left: 24.h, bottom: 121.v),
                          child: Text("msg46".tr.toUpperCase(),
                              maxLines: null,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodySmallGray90004_1
                                  .copyWith(height: 1.33)))),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                          width: 227.h,
                          margin: EdgeInsets.only(left: 24.h, bottom: 73.v),
                          child: Text("msg47".tr.toUpperCase(),
                              maxLines: null,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodySmallGray90004_1
                                  .copyWith(height: 1.33)))),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 24.h, bottom: 41.v),
                          child: Text("msg48".tr.toUpperCase(),
                              style: CustomTextStyles.bodySmallGray90004_1))),
                  Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                          padding: EdgeInsets.only(top: 57.v, right: 82.h),
                          child: Text("lbl85".tr.toUpperCase(),
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.bodySmallGray90004_1)))
                ]))));
  }

  /// Section Widget
  Widget _buildHorizontalScrollRow5(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 994.h, top: 69.v),
        child: IntrinsicWidth(
            child: Column(children: [
          Text("lbl86".tr, style: theme.textTheme.headlineMedium),
          SizedBox(height: 10.v),
          Text("lbl87".tr, style: theme.textTheme.headlineLarge),
          SizedBox(height: 25.v),
          SizedBox(
              height: 41.v,
              width: 230.h,
              child: Stack(alignment: Alignment.bottomCenter, children: [
                Align(
                    alignment: Alignment.topCenter,
                    child: Text("msg49".tr, style: theme.textTheme.bodyMedium)),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Text("lbl88".tr, style: theme.textTheme.bodyMedium))
              ])),
          SizedBox(height: 457.v),
          Text("lbl44".tr, style: CustomTextStyles.bodyMediumGray90004),
          SizedBox(height: 11.v),
          SizedBox(
              height: 68.v,
              width: 163.h,
              child: Stack(alignment: Alignment.bottomCenter, children: [
                Align(
                    alignment: Alignment.topCenter,
                    child:
                        Text("lbl45".tr, style: theme.textTheme.headlineSmall)),
                Align(
                    alignment: Alignment.bottomCenter,
                    child:
                        Text("lbl46".tr, style: theme.textTheme.headlineSmall))
              ])),
          SizedBox(height: 311.v),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 51.h),
                  child: Text("lbl_dcsi_ii".tr,
                      style: CustomTextStyles.bodySmall10))),
          SizedBox(height: 16.v),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 43.h),
                  child: Text("lbl_mbti".tr,
                      style: CustomTextStyles.bodyMediumGray90004))),
          SizedBox(height: 7.v),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 43.h),
                  child: Text("msg_16_bti".tr,
                      style: CustomTextStyles.bodySmallGray800))),
          SizedBox(height: 39.v),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 43.h),
                  child: Text("lbl51".tr,
                      style: CustomTextStyles.bodySmallGray700))),
          SizedBox(height: 211.v),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 51.h),
                  child: Text("lbl_ccsi".tr,
                      style: CustomTextStyles.bodySmall10))),
          SizedBox(height: 16.v),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 43.h),
                  child: Text("lbl_mbti2".tr,
                      style: CustomTextStyles.bodyMediumGray90004))),
          SizedBox(height: 7.v),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 43.h),
                  child: Text("msg50".tr,
                      style: CustomTextStyles.bodySmallGray800))),
          SizedBox(height: 39.v),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 43.h),
                  child: Text("lbl51".tr,
                      style: CustomTextStyles.bodySmallGray700))),
          SizedBox(height: 211.v),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 51.h),
                  child: Text("lbl_dobi".tr,
                      style: CustomTextStyles.bodySmall10))),
          SizedBox(height: 15.v),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 43.h),
                  child: Text("lbl89".tr,
                      style: CustomTextStyles.bodyMediumGray90004))),
          SizedBox(height: 7.v),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 43.h),
                  child: Text("msg_1".tr,
                      style: CustomTextStyles.bodySmallGray800))),
          SizedBox(height: 39.v),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 43.h),
                  child: Text("lbl51".tr,
                      style: CustomTextStyles.bodySmallGray700))),
          SizedBox(height: 324.v),
          Text("lbl90".tr, style: CustomTextStyles.bodyMediumGray90004),
          SizedBox(height: 11.v),
          Text("lbl91".tr, style: theme.textTheme.headlineSmall),
          SizedBox(height: 7.v),
          Text("msg_cami".tr, style: CustomTextStyles.bodySmallGray90004_1),
          SizedBox(height: 273.v),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 141.h),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                    height: 8.adaptSize,
                    width: 8.adaptSize,
                    decoration: BoxDecoration(color: appTheme.black900)),
                Container(
                    height: 8.adaptSize,
                    width: 8.adaptSize,
                    margin: EdgeInsets.only(left: 8.h),
                    decoration: BoxDecoration(color: appTheme.black900)),
                Container(
                    height: 8.adaptSize,
                    width: 8.adaptSize,
                    margin: EdgeInsets.only(left: 8.h),
                    decoration: BoxDecoration(color: appTheme.black900)),
                Container(
                    height: 8.v,
                    width: 30.h,
                    margin: EdgeInsets.only(left: 8.h),
                    decoration: BoxDecoration(
                        color: appTheme.black900,
                        borderRadius: BorderRadius.circular(4.h))),
                Container(
                    height: 8.adaptSize,
                    width: 8.adaptSize,
                    margin: EdgeInsets.only(left: 8.h),
                    decoration: BoxDecoration(color: appTheme.black900)),
                Container(
                    height: 8.adaptSize,
                    width: 8.adaptSize,
                    margin: EdgeInsets.only(left: 8.h),
                    decoration: BoxDecoration(color: appTheme.black900))
              ])),
          SizedBox(height: 234.v),
          Text("lbl92".tr, style: CustomTextStyles.bodyMediumGray90004),
          SizedBox(height: 11.v),
          SizedBox(
              height: 67.v,
              width: 178.h,
              child: Stack(alignment: Alignment.topRight, children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Text("lbl_cami".tr,
                        style: theme.textTheme.headlineSmall)),
                Align(
                    alignment: Alignment.topRight,
                    child:
                        Text("lbl93".tr, style: theme.textTheme.headlineSmall)),
                Align(
                    alignment: Alignment.bottomCenter,
                    child:
                        Text("lbl94".tr, style: theme.textTheme.headlineSmall))
              ])),
          SizedBox(height: 6.v),
          Text("msg51".tr, style: CustomTextStyles.bodySmallGray90004_1),
          SizedBox(height: 428.v),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 149.h),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                    height: 8.adaptSize,
                    width: 8.adaptSize,
                    decoration: BoxDecoration(color: appTheme.black900)),
                Container(
                    height: 8.adaptSize,
                    width: 8.adaptSize,
                    margin: EdgeInsets.only(left: 8.h),
                    decoration: BoxDecoration(color: appTheme.black900)),
                Container(
                    height: 8.adaptSize,
                    width: 8.adaptSize,
                    margin: EdgeInsets.only(left: 8.h),
                    decoration: BoxDecoration(color: appTheme.black900)),
                Container(
                    height: 8.v,
                    width: 30.h,
                    margin: EdgeInsets.only(left: 8.h),
                    decoration: BoxDecoration(
                        color: appTheme.black900,
                        borderRadius: BorderRadius.circular(4.h))),
                Container(
                    height: 8.adaptSize,
                    width: 8.adaptSize,
                    margin: EdgeInsets.only(left: 8.h),
                    decoration: BoxDecoration(color: appTheme.black900))
              ])),
          SizedBox(height: 131.v),
          SizedBox(
              height: 916.v,
              width: double.maxFinite,
              child: Stack(alignment: Alignment.topCenter, children: [
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 916.v,
                        width: double.maxFinite,
                        decoration: BoxDecoration(color: appTheme.gray50))),
                Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                        padding:
                            EdgeInsets.only(left: 28.h, top: 59.v, right: 28.h),
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                          Text("lbl95".tr,
                              style: CustomTextStyles.bodyMediumGray90004),
                          SizedBox(height: 11.v),
                          Text("lbl18".tr,
                              style: theme.textTheme.headlineSmall),
                          SizedBox(height: 7.v),
                          Text("msg52".tr,
                              style: CustomTextStyles.bodySmallGray90004_1),
                          SizedBox(height: 60.v),
                          Container(
                              height: 242.v,
                              width: 337.h,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          ImageConstant.imgImage242x337),
                                      fit: BoxFit.cover)))
                        ]))),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                        height: 144.v,
                        width: 337.h,
                        margin: EdgeInsets.only(bottom: 255.v),
                        decoration: BoxDecoration(
                            color: appTheme.whiteA700,
                            borderRadius: BorderRadius.circular(20.h)))),
                Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                        height: 59.v,
                        width: 67.h,
                        margin: EdgeInsets.only(right: 44.h, bottom: 272.v),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(ImageConstant.imgImage59x67),
                                fit: BoxFit.cover)))),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                        height: 144.v,
                        width: 337.h,
                        margin: EdgeInsets.only(bottom: 99.v),
                        decoration: BoxDecoration(
                            color: appTheme.whiteA700,
                            borderRadius: BorderRadius.circular(20.h)))),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 44.h, right: 44.h, bottom: 116.v),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("lbl96".tr,
                                  style: theme.textTheme.bodyMedium),
                              SizedBox(height: 5.v),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(bottom: 63.v),
                                        child: Text("lbl97".tr,
                                            style: CustomTextStyles
                                                .bodySmallGray600)),
                                    Container(
                                        height: 67.adaptSize,
                                        width: 67.adaptSize,
                                        margin: EdgeInsets.only(top: 14.v),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(ImageConstant
                                                    .imgImage67x67),
                                                fit: BoxFit.cover)))
                                  ])
                            ]))),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 44.h, bottom: 335.v),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("lbl98".tr,
                                  style: theme.textTheme.bodyMedium),
                              SizedBox(height: 5.v),
                              Text("msg_vs".tr,
                                  style: CustomTextStyles.bodySmallGray600)
                            ])))
              ])),
          SizedBox(height: 129.v),
          Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 60.v),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: fs.Svg(ImageConstant.imgFooter),
                      fit: BoxFit.cover)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        height: 30.v,
                        width: 92.h,
                        child: Stack(alignment: Alignment.center, children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgVectorBlack90030x92,
                              height: 30.v,
                              width: 92.h,
                              alignment: Alignment.center),
                          Align(
                              alignment: Alignment.center,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgVectorYellow400,
                                        height: 6.adaptSize,
                                        width: 6.adaptSize,
                                        alignment: Alignment.centerRight),
                                    SizedBox(height: 2.v),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgVectorWhiteA700,
                                              height: 21.v,
                                              width: 19.h),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgVectorWhiteA70021x21,
                                              height: 21.adaptSize,
                                              width: 21.adaptSize),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgVectorWhiteA70020x33,
                                              height: 20.v,
                                              width: 33.h),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgVectorWhiteA70020x5,
                                              height: 20.v,
                                              width: 5.h)
                                        ])
                                  ]))
                        ])),
                    SizedBox(height: 37.v),
                    Padding(
                        padding: EdgeInsets.only(right: 175.h),
                        child: Row(children: [
                          GestureDetector(
                              onTap: () {
                                onTapTxtWidget(context);
                              },
                              child: Text("lbl10".tr,
                                  style: theme.textTheme.bodySmall)),
                          GestureDetector(
                              onTap: () {
                                onTapTxtWidget1(context);
                              },
                              child: Padding(
                                  padding: EdgeInsets.only(left: 17.h),
                                  child: Text("lbl11".tr,
                                      style: theme.textTheme.bodySmall))),
                          Padding(
                              padding: EdgeInsets.only(left: 17.h),
                              child: Text("lbl12".tr,
                                  style: theme.textTheme.bodySmall))
                        ])),
                    SizedBox(height: 9.v),
                    Padding(
                        padding: EdgeInsets.only(right: 19.h),
                        child: Row(children: [
                          GestureDetector(
                              onTap: () {
                                onTapTxtWidget2(context);
                              },
                              child: Text("lbl13".tr,
                                  style: CustomTextStyles.bodySmallGray500)),
                          Padding(
                              padding: EdgeInsets.only(left: 18.h),
                              child: Text("lbl14".tr,
                                  style: CustomTextStyles.bodySmallGray500)),
                          Padding(
                              padding: EdgeInsets.only(left: 16.h),
                              child: Text("lbl15".tr,
                                  style: CustomTextStyles.bodySmallGray500)),
                          Padding(
                              padding: EdgeInsets.only(left: 19.h),
                              child: Text("lbl16".tr,
                                  style: CustomTextStyles.bodySmallGray500))
                        ])),
                    SizedBox(height: 38.v),
                    Padding(
                        padding: EdgeInsets.only(right: 132.h),
                        child: Row(children: [
                          Text("lbl_address".tr,
                              style: theme.textTheme.bodySmall),
                          Padding(
                              padding: EdgeInsets.only(left: 131.h),
                              child: Text("lbl_contact".tr,
                                  style: theme.textTheme.bodySmall))
                        ])),
                    SizedBox(height: 9.v),
                    Padding(
                        padding: EdgeInsets.only(right: 72.h),
                        child: Row(children: [
                          SizedBox(
                              height: 34.v,
                              width: 160.h,
                              child: Stack(
                                  alignment: Alignment.bottomLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Text("msg_34".tr,
                                            style: theme.textTheme.bodySmall)),
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Text("msg_2_b101".tr,
                                            style: theme.textTheme.bodySmall))
                                  ])),
                          Container(
                              height: 32.v,
                              width: 109.h,
                              margin: EdgeInsets.only(left: 19.h),
                              child: Stack(
                                  alignment: Alignment.bottomLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Text("msg_business_cami_kr".tr,
                                            style: theme.textTheme.bodySmall)),
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Text("lbl_02_861_6828".tr,
                                            style:
                                                CustomTextStyles.bodySmall11))
                                  ]))
                        ])),
                    SizedBox(height: 45.v),
                    SizedBox(
                        height: 34.v,
                        width: 241.h,
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          Align(
                              alignment: Alignment.topLeft,
                              child: Text("lbl17".tr,
                                  style: theme.textTheme.bodySmall)),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Text("msg".tr,
                                  style: theme.textTheme.bodySmall))
                        ])),
                    SizedBox(height: 15.v),
                    Text("msg_copyright_2023".tr,
                        style: theme.textTheme.bodySmall),
                    SizedBox(height: 39.v),
                    Padding(
                        padding: EdgeInsets.only(right: 257.h),
                        child: Row(children: [
                          Container(
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          ImageConstant.imgImage24x24),
                                      fit: BoxFit.cover))),
                          Container(
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              margin: EdgeInsets.only(left: 16.h),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage(ImageConstant.imgImage2),
                                      fit: BoxFit.cover))),
                          Container(
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              margin: EdgeInsets.only(left: 16.h),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage(ImageConstant.imgImage3),
                                      fit: BoxFit.cover)))
                        ]))
                  ]))
        ])));
  }

  /// Navigates to the checkUpListScreen when the action is triggered.
  onTapView(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.checkUpListScreen);
  }

  /// Navigates to the noticesScreen when the action is triggered.
  onTapTxtWidget(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.noticesScreen);
  }

  /// Navigates to the faqScreen when the action is triggered.
  onTapTxtWidget1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.faqScreen);
  }

  /// Navigates to the contactUsRegisterScreen when the action is triggered.
  onTapTxtWidget2(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.contactUsRegisterScreen);
  }
}
