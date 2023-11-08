import 'package:cami_lab/core/app_export.dart';
import 'package:cami_lab/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class QuckTestScreen extends StatelessWidget {
  const QuckTestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 52.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Column(children: [
                    Text("lbl18".tr,
                        style: CustomTextStyles
                            .headlineSmallNanumSquareNeoBlack900),
                    SizedBox(height: 66.v),
                    CustomImageView(
                        imagePath: ImageConstant.imgImage257x241,
                        height: 257.v,
                        width: 241.h),
                    SizedBox(height: 34.v),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 53.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("lbl19".tr,
                                  style: CustomTextStyles
                                      .headlineSmallNanumSquareNeoOnErrorContainer),
                              Padding(
                                  padding: EdgeInsets.only(left: 8.h),
                                  child: Text("lbl20".tr,
                                      style: theme.textTheme.titleLarge))
                            ])),
                    SizedBox(height: 18.v),
                    _buildClientTestimonials(context),
                    SizedBox(height: 30.v),
                    Container(
                        width: 296.h,
                        margin: EdgeInsets.symmetric(horizontal: 48.h),
                        child: Text("msg3".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.bodyMediumBlack900
                                .copyWith(height: 1.43))),
                    SizedBox(height: 2.v),
                    Container(
                        width: 345.h,
                        margin: EdgeInsets.symmetric(horizontal: 23.h),
                        child: Text("msg4".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.bodyMediumBlack900
                                .copyWith(height: 1.43))),
                    SizedBox(height: 15.v),
                    CustomElevatedButton(
                        width: 117.h,
                        text: "lbl22".tr,
                        buttonStyle: CustomButtonStyles.fillBlack),
                    SizedBox(height: 64.v),
                    CustomImageView(
                        imagePath: ImageConstant.imgImage1,
                        height: 257.v,
                        width: 241.h),
                    SizedBox(height: 35.v),
                    Text("lbl23".tr,
                        style: CustomTextStyles.titleLargeOnErrorContainer),
                    SizedBox(height: 18.v),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text("lbl24".tr,
                          style: CustomTextStyles.bodyMediumBlack900),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("lbl25".tr,
                              style: CustomTextStyles.bodyMediumBlack900)),
                      Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Text("lbl26".tr,
                              style: CustomTextStyles.bodyMediumBlack900))
                    ]),
                    SizedBox(height: 30.v),
                    Container(
                        width: 347.h,
                        margin: EdgeInsets.symmetric(horizontal: 22.h),
                        child: Text("msg5".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.bodyMediumBlack900
                                .copyWith(height: 1.43))),
                    SizedBox(height: 2.v),
                    Container(
                        width: 315.h,
                        margin: EdgeInsets.only(left: 39.h, right: 38.h),
                        child: Text("msg6".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.bodyMediumBlack900
                                .copyWith(height: 1.43))),
                    SizedBox(height: 15.v),
                    CustomElevatedButton(
                        width: 117.h,
                        text: "lbl22".tr,
                        buttonStyle: CustomButtonStyles.fillBlack,
                        onPressed: () {
                          onTaptf(context);
                        }),
                    SizedBox(height: 64.v),
                    CustomImageView(
                        imagePath: ImageConstant.imgImage2,
                        height: 257.v,
                        width: 241.h),
                    SizedBox(height: 34.v),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text("lbl27".tr,
                          style: CustomTextStyles
                              .headlineSmallNanumSquareNeoOnErrorContainer),
                      Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Text("lbl28".tr,
                              style: CustomTextStyles
                                  .headlineSmallNanumSquareNeoErrorContainer)),
                      Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Text("lbl29".tr,
                              style: CustomTextStyles
                                  .headlineSmallNanumSquareNeoOnErrorContainer)),
                      Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Text("lbl30".tr,
                              style: theme.textTheme.titleLarge)),
                      Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Text("lbl29".tr,
                              style: CustomTextStyles
                                  .headlineSmallNanumSquareNeoOnErrorContainer))
                    ]),
                    SizedBox(height: 18.v),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 39.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(bottom: 20.v),
                                  child: Text("lbl31".tr,
                                      style:
                                          CustomTextStyles.bodyMediumBlack900)),
                              Container(
                                  width: 185.h,
                                  margin: EdgeInsets.only(left: 6.h),
                                  child: Text("msg7".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles
                                          .bodyMediumErrorContainer
                                          .copyWith(height: 1.43)))
                            ])),
                    SizedBox(height: 30.v),
                    Container(
                        width: 350.h,
                        margin: EdgeInsets.only(left: 21.h, right: 20.h),
                        child: Text("msg8".tr,
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.bodyMediumBlack900
                                .copyWith(height: 1.43))),
                    SizedBox(height: 9.v),
                    CustomElevatedButton(
                        height: 36.v,
                        width: 117.h,
                        text: "lbl22".tr,
                        buttonStyle: CustomButtonStyles.fillBlack),
                    SizedBox(height: 122.v),
                    _buildFooter(context)
                  ])))
                ]))));
  }

  /// Section Widget
  Widget _buildClientTestimonials(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 28.h, right: 32.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("lbl21".tr, style: CustomTextStyles.bodyMediumErrorContainer),
          Padding(
              padding: EdgeInsets.only(left: 7.h),
              child:
                  Text("msg2".tr, style: CustomTextStyles.bodyMediumBlack900))
        ]));
  }

  /// Section Widget
  Widget _buildFooter(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 60.v),
        decoration: AppDecoration.fillOnErrorContainer,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              imagePath: ImageConstant.imgTicket, height: 30.v, width: 92.h),
          SizedBox(height: 37.v),
          Row(children: [
            GestureDetector(
                onTap: () {
                  onTapTxtWidget(context);
                },
                child: Text("lbl10".tr, style: theme.textTheme.bodySmall)),
            GestureDetector(
                onTap: () {
                  onTapTxtWidget1(context);
                },
                child: Padding(
                    padding: EdgeInsets.only(left: 17.h),
                    child: Text("lbl11".tr, style: theme.textTheme.bodySmall))),
            Padding(
                padding: EdgeInsets.only(left: 17.h),
                child: Text("lbl12".tr, style: theme.textTheme.bodySmall))
          ]),
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
          Row(children: [
            Text("lbl_address".tr, style: theme.textTheme.bodySmall),
            Padding(
                padding: EdgeInsets.only(left: 131.h),
                child: Text("lbl_contact".tr, style: theme.textTheme.bodySmall))
          ]),
          SizedBox(height: 9.v),
          Padding(
              padding: EdgeInsets.only(right: 72.h),
              child: Row(children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text("msg_34".tr, style: theme.textTheme.bodySmall),
                  Text("msg_2_b101".tr, style: theme.textTheme.bodySmall)
                ]),
                Padding(
                    padding: EdgeInsets.only(left: 19.h),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("msg_business_cami_kr".tr,
                              style: theme.textTheme.bodySmall),
                          Text("lbl_02_861_6828".tr,
                              style: CustomTextStyles.bodySmall11)
                        ]))
              ])),
          SizedBox(height: 45.v),
          Text("lbl17".tr, style: theme.textTheme.bodySmall),
          Text("msg".tr, style: theme.textTheme.bodySmall),
          SizedBox(height: 15.v),
          Text("msg_copyright_2023".tr, style: theme.textTheme.bodySmall),
          SizedBox(height: 39.v),
          Row(children: [
            CustomImageView(
                imagePath: ImageConstant.imgImage24x24,
                height: 24.adaptSize,
                width: 24.adaptSize),
            CustomImageView(
                imagePath: ImageConstant.imgImage3,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(left: 16.h)),
            CustomImageView(
                imagePath: ImageConstant.imgImage4,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(left: 16.h))
          ])
        ]));
  }

  /// Navigates to the namingScreen when the action is triggered.
  onTaptf(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.namingScreen);
  }

  onTapTxtWidget(BuildContext context) {
    // TODO: implement Actions
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
