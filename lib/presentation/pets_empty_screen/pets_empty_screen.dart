import 'package:cami_lab/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class PetsEmptyScreen extends StatelessWidget {
  const PetsEmptyScreen({Key? key}) : super(key: key);

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
                  SizedBox(height: 57.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 15.h, right: 72.h),
                          child: Row(children: [
                            Container(
                                height: 100.adaptSize,
                                width: 100.adaptSize,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50.h),
                                    border: Border.all(
                                        color: appTheme.gray200, width: 1.h),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            ImageConstant.imgImage18),
                                        fit: BoxFit.cover))),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 24.h, top: 30.v, bottom: 25.v),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(children: [
                                        Text("lbl_andrew".tr,
                                            style: CustomTextStyles
                                                .bodyLargeGray900),
                                        Text("lbl118".tr,
                                            style: CustomTextStyles
                                                .bodyLargeGray900)
                                      ]),
                                      SizedBox(height: 3.v),
                                      Text("msg_ydm2790_naver_com".tr,
                                          style: CustomTextStyles
                                              .bodySmallGray50011)
                                    ])),
                            Container(
                                height: 32.adaptSize,
                                width: 32.adaptSize,
                                margin: EdgeInsets.only(
                                    left: 2.h, top: 26.v, bottom: 42.v),
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                              height: 32.adaptSize,
                                              width: 32.adaptSize,
                                              decoration: BoxDecoration(
                                                  color: appTheme.whiteA700,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          16.h)))),
                                      Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                              height: 16.adaptSize,
                                              width: 16.adaptSize,
                                              padding: EdgeInsets.all(2.h),
                                              child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgVectorBlack90012x11,
                                                        height: 12.v,
                                                        width: 11.h,
                                                        alignment:
                                                            Alignment.center),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgVectorBlack9004x4,
                                                        height: 4.adaptSize,
                                                        width: 4.adaptSize,
                                                        alignment:
                                                            Alignment.center)
                                                  ])))
                                    ]))
                          ]))),
                  SizedBox(height: 48.v),
                  _buildUserProfile(context),
                  SizedBox(height: 18.v),
                  _buildDoctorReviews(context),
                  SizedBox(height: 16.v),
                  _buildClientTestimonials(context),
                  SizedBox(height: 5.v),
                  _buildReviews(context),
                  SizedBox(height: 155.v),
                  _buildFooter(context)
                ])))));
  }

  /// Section Widget
  Widget _buildAppNavBar(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 2922.h),
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
                          child: SizedBox(
                              height: 50.v,
                              width: 361.h,
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                Align(
                                    alignment: Alignment.center,
                                    child:
                                        SizedBox(height: 50.v, width: 361.h)),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 13.v),
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
                                                        alignment: Alignment
                                                            .centerRight),
                                                    SizedBox(height: 1.v),
                                                    Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgVector,
                                                              height: 14.v,
                                                              width: 13.h),
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgVectorGray900,
                                                              height:
                                                                  14.adaptSize,
                                                              width:
                                                                  14.adaptSize),
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgVectorGray90014x23,
                                                              height: 14.v,
                                                              width: 23.h),
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
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
                                                                  ImageConstant
                                                                      .imgMenu),
                                                              fit: BoxFit
                                                                  .cover))))
                                            ])))
                              ])))
                    ])))));
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
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
                            child: _buildWidget(context,
                                userName: "lbl119".tr,
                                userAge: "lbl120".tr,
                                userGender: "lbl121".tr,
                                userLocation: "lbl122".tr,
                                userOccupation: "lbl121".tr,
                                userInterests: "lbl123".tr,
                                userHobbies: "lbl121".tr,
                                userFavouriteFood: "lbl124".tr,
                                userFavouriteDrink: "lbl121".tr))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildDoctorReviews(BuildContext context) {
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
                                    image: AssetImage(ImageConstant.imgImage20),
                                    fit: BoxFit.cover))),
                        Padding(
                            padding: EdgeInsets.only(left: 24.h),
                            child: _buildWidget(context,
                                userName: "lbl119".tr,
                                userAge: "lbl120".tr,
                                userGender: "lbl121".tr,
                                userLocation: "lbl122".tr,
                                userOccupation: "lbl121".tr,
                                userInterests: "lbl99".tr,
                                userHobbies: "lbl121".tr,
                                userFavouriteFood: "lbl124".tr,
                                userFavouriteDrink: "lbl121".tr))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildClientTestimonials(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
              height: 180.v,
              width: 175.h,
              child: Stack(alignment: Alignment.bottomCenter, children: [
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 180.v,
                        width: 175.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.h),
                            border: Border.all(
                                color: appTheme.gray90003, width: 1.h)))),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                        height: 112.v,
                        width: 138.h,
                        margin: EdgeInsets.only(bottom: 1.v),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage(ImageConstant.imgImage112x138),
                                fit: BoxFit.cover)))),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                        height: 32.v,
                        width: 149.h,
                        margin: EdgeInsets.only(bottom: 25.v),
                        decoration: BoxDecoration(
                            color: appTheme.blue50,
                            borderRadius: BorderRadius.circular(10.h)))),
                Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                        padding: EdgeInsets.only(top: 17.v),
                        child: Text("lbl125".tr,
                            style: theme.textTheme.bodyLarge))),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 30.v),
                        child: Text("lbl126".tr,
                            style: theme.textTheme.bodyMedium)))
              ])),
          Container(
              height: 180.v,
              width: 175.h,
              margin: EdgeInsets.only(left: 12.h),
              child: Stack(alignment: Alignment.bottomCenter, children: [
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 180.v,
                        width: 175.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.h),
                            border: Border.all(
                                color: appTheme.gray90003, width: 1.h)))),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: GestureDetector(
                        onTap: () {
                          onTapIMAGE1(context);
                        },
                        child: Container(
                            height: 112.v,
                            width: 138.h,
                            margin: EdgeInsets.only(bottom: 1.v),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(ImageConstant.imgImage21),
                                    fit: BoxFit.cover))))),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                        height: 32.v,
                        width: 149.h,
                        margin: EdgeInsets.only(bottom: 25.v),
                        decoration: BoxDecoration(
                            color: appTheme.blue50,
                            borderRadius: BorderRadius.circular(10.h)))),
                Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                        padding: EdgeInsets.only(top: 17.v),
                        child: Text("lbl127".tr,
                            style: theme.textTheme.bodyLarge))),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 30.v),
                        child: Text("lbl128".tr,
                            style: theme.textTheme.bodyMedium)))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildReviews(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 2941.h),
            child: IntrinsicWidth(
                child: Container(
                    padding: EdgeInsets.symmetric(vertical: 4.v),
                    child: Column(children: [
                      SizedBox(
                          height: 48.v,
                          width: 361.h,
                          child:
                              Stack(alignment: Alignment.centerLeft, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    height: 48.v,
                                    width: 361.h,
                                    decoration: BoxDecoration(
                                        color: appTheme.yellow400))),
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
                          child:
                              Stack(alignment: Alignment.centerLeft, children: [
                            Align(
                                alignment: Alignment.center,
                                child: GestureDetector(
                                    onTap: () {
                                      onTapView(context);
                                    },
                                    child: Container(
                                        height: 48.v,
                                        width: 361.h,
                                        decoration: BoxDecoration(
                                            color: appTheme.gray50)))),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 24.h),
                                    child: Text("lbl".tr,
                                        style: theme.textTheme.bodyLarge)))
                          ])),
                      SizedBox(
                          height: 48.v,
                          width: 361.h,
                          child:
                              Stack(alignment: Alignment.centerLeft, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    height: 48.v,
                                    width: 361.h,
                                    decoration:
                                        BoxDecoration(color: appTheme.gray50))),
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
                          child:
                              Stack(alignment: Alignment.centerLeft, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    height: 48.v,
                                    width: 361.h,
                                    decoration:
                                        BoxDecoration(color: appTheme.gray50))),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                    height: 18.adaptSize,
                                    width: 18.adaptSize,
                                    margin: EdgeInsets.only(left: 89.h),
                                    decoration: BoxDecoration(
                                        color: appTheme.black900,
                                        borderRadius:
                                            BorderRadius.circular(9.h)))),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 24.h),
                                    child: Text("lbl130".tr,
                                        style: theme.textTheme.bodyLarge))),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 94.h, top: 12.v),
                                    child: Text("lbl_0".tr,
                                        style: theme.textTheme.bodySmall)))
                          ])),
                      SizedBox(
                          height: 48.v,
                          width: 361.h,
                          child:
                              Stack(alignment: Alignment.centerLeft, children: [
                            Align(
                                alignment: Alignment.center,
                                child: GestureDetector(
                                    onTap: () {
                                      onTapView1(context);
                                    },
                                    child: Container(
                                        height: 48.v,
                                        width: 361.h,
                                        decoration: BoxDecoration(
                                            color: appTheme.gray50)))),
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
                          child:
                              Stack(alignment: Alignment.centerLeft, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    height: 48.v,
                                    width: 361.h,
                                    decoration:
                                        BoxDecoration(color: appTheme.gray50))),
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
                          child:
                              Stack(alignment: Alignment.centerLeft, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    height: 25.v,
                                    width: 361.h,
                                    decoration:
                                        BoxDecoration(color: appTheme.gray50))),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                    height: 1.v,
                                    width: 287.h,
                                    margin: EdgeInsets.only(left: 24.h),
                                    decoration: BoxDecoration(
                                        color: appTheme.gray20001)))
                          ])),
                      SizedBox(
                          height: 48.v,
                          width: 361.h,
                          child:
                              Stack(alignment: Alignment.centerLeft, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    height: 48.v,
                                    width: 361.h,
                                    decoration:
                                        BoxDecoration(color: appTheme.gray50))),
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
                          child:
                              Stack(alignment: Alignment.centerLeft, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    height: 48.v,
                                    width: 361.h,
                                    decoration:
                                        BoxDecoration(color: appTheme.gray50))),
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
                          child:
                              Stack(alignment: Alignment.centerLeft, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    height: 48.v,
                                    width: 361.h,
                                    decoration:
                                        BoxDecoration(color: appTheme.gray50))),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 24.h),
                                    child: Text("lbl12".tr,
                                        style: theme.textTheme.bodyLarge)))
                          ]))
                    ])))));
  }

  /// Section Widget
  Widget _buildFooter(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: IntrinsicWidth(
            child: Container(
                margin: EdgeInsets.only(right: 2.h),
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
                          padding: EdgeInsets.only(left: 2942.h),
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
                          padding: EdgeInsets.only(left: 2942.h),
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
    required String userAge,
    required String userGender,
    required String userLocation,
    required String userOccupation,
    required String userInterests,
    required String userHobbies,
    required String userFavouriteFood,
    required String userFavouriteDrink,
  }) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(userName,
          style: CustomTextStyles.bodyLargeGray500
              .copyWith(color: appTheme.gray500)),
      SizedBox(height: 7.v),
      Row(children: [
        Text(userAge,
            style: CustomTextStyles.bodyMediumGray500
                .copyWith(color: appTheme.gray500)),
        Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Text(userGender,
                style: CustomTextStyles.bodyMediumGray500
                    .copyWith(color: appTheme.gray500)))
      ]),
      SizedBox(height: 2.v),
      Row(children: [
        Text(userLocation,
            style: CustomTextStyles.bodyMediumGray500
                .copyWith(color: appTheme.gray500)),
        Padding(
            padding: EdgeInsets.only(left: 43.h),
            child: Text(userOccupation,
                style: CustomTextStyles.bodyMediumGray500
                    .copyWith(color: appTheme.gray500)))
      ]),
      SizedBox(height: 3.v),
      Row(children: [
        Text(userInterests,
            style: CustomTextStyles.bodyMediumGray500
                .copyWith(color: appTheme.gray500)),
        Padding(
            padding: EdgeInsets.only(left: 42.h),
            child: Text(userHobbies,
                style: CustomTextStyles.bodyMediumGray500
                    .copyWith(color: appTheme.gray500)))
      ]),
      SizedBox(height: 2.v),
      Row(children: [
        Text(userFavouriteFood,
            style: CustomTextStyles.bodyMediumGray500
                .copyWith(color: appTheme.gray500)),
        Padding(
            padding: EdgeInsets.only(left: 42.h),
            child: Text(userFavouriteDrink,
                style: CustomTextStyles.bodyMediumGray500
                    .copyWith(color: appTheme.gray500)))
      ])
    ]);
  }

  /// Navigates to the menuBarScreen when the action is triggered.
  onTapIMAGE(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.menuBarScreen);
  }

  /// Navigates to the newCatTabContainerScreen when the action is triggered.
  onTapIMAGE1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.newCatTabContainerScreen);
  }

  /// Navigates to the checkUpListScreen when the action is triggered.
  onTapView(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.checkUpListScreen);
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
