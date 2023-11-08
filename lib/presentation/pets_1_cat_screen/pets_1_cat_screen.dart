import '../pets_1_cat_screen/widgets/userprofile_item_widget.dart';
import 'package:cami_lab/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class Pets1CatScreen extends StatelessWidget {
  const Pets1CatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: Column(children: [
                  _buildAppNavBar(context),
                  SizedBox(height: 42.v),
                  _buildAndrew(context),
                  SizedBox(height: 61.v),
                  _buildEightyNine(context),
                  SizedBox(height: 18.v),
                  _buildNinety(context),
                  SizedBox(height: 16.v),
                  _buildUserProfile(context),
                  SizedBox(height: 18.v),
                  _buildMyPet(context),
                  SizedBox(height: 142.v),
                  _buildPets1Cat(context)
                ])))));
  }

  /// Section Widget
  Widget _buildAppNavBar(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 3439.h),
            child: IntrinsicWidth(
                child: SizedBox(
                    height: 50.v,
                    width: double.maxFinite,
                    child: Stack(alignment: Alignment.center, children: [
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              height: 50.v,
                              width: double.maxFinite,
                              decoration:
                                  BoxDecoration(color: appTheme.whiteA700))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.h, vertical: 13.v),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: 2.v, bottom: 1.v),
                                        child: Column(children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgVectorGray9004x4,
                                              height: 4.adaptSize,
                                              width: 4.adaptSize,
                                              alignment: Alignment.centerRight),
                                          SizedBox(height: 1.v),
                                          Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                CustomImageView(
                                                    imagePath:
                                                        ImageConstant.imgVector,
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
                                              ])
                                        ])),
                                    GestureDetector(
                                        onTap: () {
                                          onTapIMAGE(context);
                                        },
                                        child: Container(
                                            height: 24.adaptSize,
                                            width: 24.adaptSize,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        ImageConstant.imgMenu),
                                                    fit: BoxFit.cover))))
                                  ])))
                    ])))));
  }

  /// Section Widget
  Widget _buildAndrew(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 3455.h),
            child: IntrinsicWidth(
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                  height: 100.adaptSize,
                  width: 100.adaptSize,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.h),
                      border: Border.all(color: appTheme.gray200, width: 1.h),
                      image: DecorationImage(
                          image: AssetImage(ImageConstant.imgImage18),
                          fit: BoxFit.cover))),
              Expanded(
                  child: Padding(
                      padding:
                          EdgeInsets.only(left: 24.h, top: 30.v, bottom: 25.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(children: [
                              Text("lbl_andrew".tr,
                                  style: CustomTextStyles.bodyLargeGray900),
                              Text("lbl118".tr,
                                  style: CustomTextStyles.bodyLargeGray900)
                            ]),
                            SizedBox(height: 3.v),
                            Text("msg_ydm2790_naver_com".tr,
                                style: CustomTextStyles.bodySmallGray50011)
                          ]))),
              Container(
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                  margin: EdgeInsets.only(left: 2.h, top: 26.v, bottom: 42.v),
                  child: Stack(alignment: Alignment.center, children: [
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            height: 32.adaptSize,
                            width: 32.adaptSize,
                            decoration: BoxDecoration(
                                color: appTheme.whiteA700,
                                borderRadius: BorderRadius.circular(16.h)))),
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            padding: EdgeInsets.all(2.h),
                            child:
                                Stack(alignment: Alignment.center, children: [
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.imgVectorBlack90012x11,
                                  height: 12.v,
                                  width: 11.h,
                                  alignment: Alignment.center),
                              CustomImageView(
                                  imagePath: ImageConstant.imgVectorBlack9004x4,
                                  height: 4.adaptSize,
                                  width: 4.adaptSize,
                                  alignment: Alignment.center)
                            ])))
                  ]))
            ]))));
  }

  /// Section Widget
  Widget _buildEightyNine(BuildContext context) {
    return SizedBox(
        height: 186.v,
        width: 359.h,
        child: Stack(alignment: Alignment.topLeft, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  height: 186.v,
                  width: 359.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.h),
                      border:
                          Border.all(color: appTheme.gray90003, width: 1.h)))),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 17.h, top: 25.v),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 84.adaptSize,
                            width: 84.adaptSize,
                            margin: EdgeInsets.only(top: 17.v, bottom: 22.v),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(42.h),
                                image: DecorationImage(
                                    image: AssetImage(ImageConstant.imgImage19),
                                    fit: BoxFit.cover))),
                        Padding(
                            padding: EdgeInsets.only(left: 24.h),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("lbl119".tr,
                                      style: CustomTextStyles.bodyLargeGray500),
                                  SizedBox(height: 7.v),
                                  _buildWidget(context,
                                      userName: "lbl120".tr,
                                      userText: "lbl121".tr),
                                  SizedBox(height: 2.v),
                                  _buildWidget(context,
                                      userName: "lbl122".tr,
                                      userText: "lbl121".tr),
                                  SizedBox(height: 2.v),
                                  _buildWidget(context,
                                      userName: "lbl123".tr,
                                      userText: "lbl121".tr),
                                  SizedBox(height: 2.v),
                                  _buildWidget(context,
                                      userName: "lbl124".tr,
                                      userText: "lbl121".tr)
                                ]))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildNinety(BuildContext context) {
    return SizedBox(
        height: 186.v,
        width: 359.h,
        child: Stack(alignment: Alignment.topLeft, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  height: 186.v,
                  width: 359.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.h),
                      border:
                          Border.all(color: appTheme.gray90003, width: 1.h)))),
          Align(
              alignment: Alignment.topLeft,
              child: Container(
                  height: 84.adaptSize,
                  width: 84.adaptSize,
                  margin: EdgeInsets.only(left: 17.h, top: 25.v),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(42.h),
                      image: DecorationImage(
                          image: AssetImage(ImageConstant.imgImage100x100),
                          fit: BoxFit.cover)))),
          Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                  height: 20.v,
                  width: 58.h,
                  margin: EdgeInsets.only(left: 30.h, bottom: 41.v),
                  decoration: BoxDecoration(
                      color: appTheme.gray10001,
                      borderRadius: BorderRadius.circular(10.h)))),
          Align(
              alignment: Alignment.topRight,
              child: Container(
                  height: 20.v,
                  width: 120.h,
                  margin: EdgeInsets.only(top: 28.v, right: 75.h),
                  decoration: BoxDecoration(
                      color: appTheme.yellow400,
                      borderRadius: BorderRadius.circular(8.h)))),
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 36.h, bottom: 43.v),
                  child: Text("lbl132".tr,
                      style: CustomTextStyles.bodySmallBlack900))),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 125.h, top: 25.v),
                  child: Text("lbl36".tr, style: theme.textTheme.bodyLarge))),
          Align(
              alignment: Alignment.topRight,
              child: Padding(
                  padding: EdgeInsets.only(top: 27.v, right: 86.h),
                  child: Text("lbl133".tr,
                      style: CustomTextStyles.bodySmallBlack900))),
          Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                  padding: EdgeInsets.only(right: 82.h, bottom: 36.v),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(children: [
                          Text("lbl120".tr, style: theme.textTheme.bodyMedium),
                          Padding(
                              padding: EdgeInsets.only(left: 16.h),
                              child: Text("lbl_2018_08_12".tr,
                                  style: theme.textTheme.bodyMedium))
                        ]),
                        SizedBox(height: 2.v),
                        Row(children: [
                          Text("lbl122".tr, style: theme.textTheme.bodyMedium),
                          Padding(
                              padding: EdgeInsets.only(left: 43.h),
                              child: Text("lbl_5_2".tr,
                                  style: theme.textTheme.bodyMedium))
                        ]),
                        SizedBox(height: 2.v),
                        Row(children: [
                          Text("lbl99".tr, style: theme.textTheme.bodyMedium),
                          Padding(
                              padding: EdgeInsets.only(left: 42.h),
                              child: Text("lbl134".tr,
                                  style: theme.textTheme.bodyMedium))
                        ]),
                        SizedBox(height: 2.v),
                        Row(children: [
                          Text("lbl124".tr, style: theme.textTheme.bodyMedium),
                          Padding(
                              padding: EdgeInsets.only(left: 42.h),
                              child: Text("lbl135".tr,
                                  style: theme.textTheme.bodyMedium))
                        ])
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return SizedBox(
        height: 180.v,
        child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 15.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 12.h);
            },
            itemCount: 2,
            itemBuilder: (context, index) {
              return UserprofileItemWidget(onTapView: () {
                onTapView(context);
              });
            }));
  }

  /// Section Widget
  Widget _buildMyPet(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16.h),
        padding: EdgeInsets.symmetric(vertical: 4.v),
        child: Column(children: [
          SizedBox(
              height: 48.v,
              width: 361.h,
              child: Stack(alignment: Alignment.centerLeft, children: [
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 48.v,
                        width: 361.h,
                        decoration: BoxDecoration(color: appTheme.yellow400))),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 24.h),
                        child: Text("lbl129".tr,
                            style: theme.textTheme.bodyLarge)))
              ])),
          SizedBox(
              height: 48.v,
              width: 361.h,
              child: Stack(alignment: Alignment.centerLeft, children: [
                Align(
                    alignment: Alignment.center,
                    child: GestureDetector(
                        onTap: () {
                          onTapView(context);
                        },
                        child: Container(
                            height: 48.v,
                            width: 361.h,
                            decoration:
                                BoxDecoration(color: appTheme.gray50)))),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 24.h),
                        child:
                            Text("lbl".tr, style: theme.textTheme.bodyLarge)))
              ])),
          SizedBox(
              height: 48.v,
              width: 361.h,
              child: Stack(alignment: Alignment.centerLeft, children: [
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 48.v,
                        width: 361.h,
                        decoration: BoxDecoration(color: appTheme.gray50))),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 24.h),
                        child: Text("lbl115".tr,
                            style: theme.textTheme.bodyLarge)))
              ])),
          SizedBox(
              height: 48.v,
              width: 361.h,
              child: Stack(alignment: Alignment.centerLeft, children: [
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 48.v,
                        width: 361.h,
                        decoration: BoxDecoration(color: appTheme.gray50))),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                        height: 18.adaptSize,
                        width: 18.adaptSize,
                        margin: EdgeInsets.only(left: 89.h),
                        decoration: BoxDecoration(
                            color: appTheme.black900,
                            borderRadius: BorderRadius.circular(9.h)))),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 24.h),
                        child: Text("lbl130".tr,
                            style: theme.textTheme.bodyLarge))),
                Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 94.h, top: 12.v),
                        child:
                            Text("lbl_0".tr, style: theme.textTheme.bodySmall)))
              ])),
          SizedBox(
              height: 48.v,
              width: 361.h,
              child: Stack(alignment: Alignment.centerLeft, children: [
                Align(
                    alignment: Alignment.center,
                    child: GestureDetector(
                        onTap: () {
                          onTapView1(context);
                        },
                        child: Container(
                            height: 48.v,
                            width: 361.h,
                            decoration:
                                BoxDecoration(color: appTheme.gray50)))),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 24.h),
                        child: Text("lbl_1_12".tr,
                            style: theme.textTheme.bodyLarge)))
              ])),
          SizedBox(
              height: 48.v,
              width: 361.h,
              child: Stack(alignment: Alignment.centerLeft, children: [
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 48.v,
                        width: 361.h,
                        decoration: BoxDecoration(color: appTheme.gray50))),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 24.h),
                        child: Text("lbl117".tr,
                            style: theme.textTheme.bodyLarge)))
              ])),
          SizedBox(
              height: 25.v,
              width: 361.h,
              child: Stack(alignment: Alignment.centerLeft, children: [
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 25.v,
                        width: 361.h,
                        decoration: BoxDecoration(color: appTheme.gray50))),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                        height: 1.v,
                        width: 287.h,
                        margin: EdgeInsets.only(left: 24.h),
                        decoration: BoxDecoration(color: appTheme.gray20001)))
              ])),
          SizedBox(
              height: 48.v,
              width: 361.h,
              child: Stack(alignment: Alignment.centerLeft, children: [
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 48.v,
                        width: 361.h,
                        decoration: BoxDecoration(color: appTheme.gray50))),
                Align(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                        onTap: () {
                          onTapTxtWidget(context);
                        },
                        child: Padding(
                            padding: EdgeInsets.only(left: 24.h),
                            child: Text("lbl131".tr,
                                style: theme.textTheme.bodyLarge))))
              ])),
          SizedBox(
              height: 48.v,
              width: 361.h,
              child: Stack(alignment: Alignment.centerLeft, children: [
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 48.v,
                        width: 361.h,
                        decoration: BoxDecoration(color: appTheme.gray50))),
                Align(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                        onTap: () {
                          onTapTxtWidget1(context);
                        },
                        child: Padding(
                            padding: EdgeInsets.only(left: 24.h),
                            child: Text("lbl10".tr,
                                style: theme.textTheme.bodyLarge))))
              ])),
          SizedBox(
              height: 48.v,
              width: 361.h,
              child: Stack(alignment: Alignment.centerLeft, children: [
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 48.v,
                        width: 361.h,
                        decoration: BoxDecoration(color: appTheme.gray50))),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 24.h),
                        child:
                            Text("lbl12".tr, style: theme.textTheme.bodyLarge)))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildPets1Cat(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: IntrinsicWidth(
            child: Container(
                padding: EdgeInsets.symmetric(vertical: 60.v),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: fs.Svg(ImageConstant.imgFooter),
                        fit: BoxFit.cover)),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 16.h),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant
                                            .imgVectorBlack90030x92,
                                        height: 30.v,
                                        width: 92.h,
                                        margin: EdgeInsets.only(bottom: 13.v)),
                                    Padding(
                                        padding: EdgeInsets.only(bottom: 13.v),
                                        child: Column(children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgVectorYellow400,
                                              height: 6.adaptSize,
                                              width: 6.adaptSize,
                                              alignment: Alignment.centerRight),
                                          SizedBox(height: 2.v),
                                          SizedBox(
                                              width: 91.h,
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
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
                                                  ]))
                                        ]))
                                  ]))),
                      SizedBox(height: 24.v),
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                        GestureDetector(
                            onTap: () {
                              onTapTxtWidget2(context);
                            },
                            child: Text("lbl10".tr,
                                style: theme.textTheme.bodySmall)),
                        GestureDetector(
                            onTap: () {
                              onTapTxtWidget3(context);
                            },
                            child: Padding(
                                padding: EdgeInsets.only(left: 17.h),
                                child: Text("lbl11".tr,
                                    style: theme.textTheme.bodySmall))),
                        Padding(
                            padding: EdgeInsets.only(left: 17.h),
                            child: Text("lbl12".tr,
                                style: theme.textTheme.bodySmall))
                      ]),
                      SizedBox(height: 9.v),
                      Padding(
                          padding: EdgeInsets.only(left: 3455.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtWidget4(context);
                                    },
                                    child: Text("lbl13".tr,
                                        style:
                                            CustomTextStyles.bodySmallGray500)),
                                Padding(
                                    padding: EdgeInsets.only(left: 18.h),
                                    child: Text("lbl14".tr,
                                        style:
                                            CustomTextStyles.bodySmallGray500)),
                                Padding(
                                    padding: EdgeInsets.only(left: 16.h),
                                    child: Text("lbl15".tr,
                                        style:
                                            CustomTextStyles.bodySmallGray500)),
                                Padding(
                                    padding: EdgeInsets.only(left: 19.h),
                                    child: Text("lbl16".tr,
                                        style:
                                            CustomTextStyles.bodySmallGray500))
                              ])),
                      SizedBox(height: 38.v),
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                        Text("lbl_address".tr,
                            style: theme.textTheme.bodySmall),
                        Padding(
                            padding: EdgeInsets.only(left: 131.h),
                            child: Text("lbl_contact".tr,
                                style: theme.textTheme.bodySmall))
                      ]),
                      SizedBox(height: 9.v),
                      Padding(
                          padding: EdgeInsets.only(left: 3455.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(
                                    height: 34.v,
                                    width: 160.h,
                                    child: Stack(
                                        alignment: Alignment.bottomLeft,
                                        children: [
                                          Align(
                                              alignment: Alignment.topCenter,
                                              child: Text("msg_34".tr,
                                                  style: theme
                                                      .textTheme.bodySmall)),
                                          Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Text("msg_2_b101".tr,
                                                  style: theme
                                                      .textTheme.bodySmall))
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
                                              child: Text(
                                                  "msg_business_cami_kr".tr,
                                                  style: theme
                                                      .textTheme.bodySmall)),
                                          Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Text("lbl_02_861_6828".tr,
                                                  style: CustomTextStyles
                                                      .bodySmall11))
                                        ]))
                              ])),
                      SizedBox(height: 45.v),
                      SizedBox(
                          height: 34.v,
                          width: 241.h,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
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
                      SizedBox(height: 38.v),
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                        Container(
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage(ImageConstant.imgImage24x24),
                                    fit: BoxFit.cover))),
                        Container(
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(left: 16.h),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(ImageConstant.imgImage2),
                                    fit: BoxFit.cover))),
                        Container(
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(left: 16.h),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(ImageConstant.imgImage3),
                                    fit: BoxFit.cover)))
                      ]),
                      SizedBox(height: 13.v)
                    ]))));
  }

  /// Common widget
  Widget _buildWidget(
    BuildContext context, {
    required String userName,
    required String userText,
  }) {
    return Row(children: [
      Text(userName,
          style: CustomTextStyles.bodyMediumGray500
              .copyWith(color: appTheme.gray500)),
      Padding(
          padding: EdgeInsets.only(left: 43.h),
          child: Text(userText,
              style: CustomTextStyles.bodyMediumGray500
                  .copyWith(color: appTheme.gray500)))
    ]);
  }

  /// Navigates to the newCatTabContainerScreen when the action is triggered.
  onTapView(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.newCatTabContainerScreen);
    Navigator.pushNamed(context, AppRoutes.checkUpListScreen);
  }

  /// Navigates to the menuBarScreen when the action is triggered.
  onTapIMAGE(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.menuBarScreen);
  }

  /// Navigates to the contactUsRegisterScreen when the action is triggered.
  onTapView1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.contactUsRegisterScreen);
  }

  /// Navigates to the faqScreen when the action is triggered.
  onTapTxtWidget(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.faqScreen);
  }

  /// Navigates to the noticesScreen when the action is triggered.
  onTapTxtWidget1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.noticesScreen);
  }

  /// Navigates to the noticesScreen when the action is triggered.
  onTapTxtWidget2(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.noticesScreen);
  }

  /// Navigates to the faqScreen when the action is triggered.
  onTapTxtWidget3(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.faqScreen);
  }

  /// Navigates to the contactUsRegisterScreen when the action is triggered.
  onTapTxtWidget4(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.contactUsRegisterScreen);
  }
}
