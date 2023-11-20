import '../add_new_dog_page_screen/widgets/chipview2_item_widget.dart';import 'package:cami_lab/core/app_export.dart';import 'package:cami_lab/widgets/app_bar/appbar_leading_image.dart';import 'package:cami_lab/widgets/app_bar/appbar_trailing_image.dart';import 'package:cami_lab/widgets/app_bar/custom_app_bar.dart';import 'package:cami_lab/widgets/custom_elevated_button.dart';import 'package:cami_lab/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class AddNewDogPageScreen extends StatelessWidget {AddNewDogPageScreen({Key? key}) : super(key: key);

TextEditingController editTextController = TextEditingController();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: SizedBox(width: mediaQueryData.size.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 15.v), child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 16.h), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgArrowLeft, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(bottom: 6.v), onTap: () {onTapImgArrowLeft(context);}), Padding(padding: EdgeInsets.only(left: 77.h), child: Text("lbl_1_24".tr, style: CustomTextStyles.bodyLarge18))]))), SizedBox(height: 21.v), _buildImageRegistrationRow(context), SizedBox(height: 25.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 16.h), child: Text("lbl248".tr, style: CustomTextStyles.bodyMediumOnPrimary))), SizedBox(height: 9.v), _buildEditText(context), SizedBox(height: 33.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 16.h), child: Text("lbl249".tr, style: CustomTextStyles.bodyMediumOnPrimary))), SizedBox(height: 9.v), Padding(padding: EdgeInsets.symmetric(horizontal: 16.h), child: _buildVector(context)), SizedBox(height: 33.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 16.h), child: Text("lbl250".tr, style: CustomTextStyles.bodyMediumOnPrimary))), SizedBox(height: 9.v), Padding(padding: EdgeInsets.symmetric(horizontal: 16.h), child: _buildVector(context)), SizedBox(height: 33.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 16.h), child: Text("lbl251".tr, style: CustomTextStyles.bodyMediumOnPrimary))), SizedBox(height: 9.v), _buildChipView(context), SizedBox(height: 33.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 16.h), child: Text("lbl123".tr, style: CustomTextStyles.bodyMediumOnPrimary))), SizedBox(height: 9.v), _buildImageColumn(context), SizedBox(height: 32.v), Align(alignment: Alignment.centerLeft, child: Container(width: 100.h, margin: EdgeInsets.only(left: 16.h), child: Text("lbl100".tr, maxLines: null, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodyMediumOnPrimary.copyWith(height: 1.71)))), SizedBox(height: 8.v), _buildYesRow(context), SizedBox(height: 64.v), _buildColumn(context), SizedBox(height: 128.v), Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 60.v), decoration: AppDecoration.fillOnErrorContainer, child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgTicket, height: 30.v, width: 92.h), SizedBox(height: 39.v), Row(children: [Text("lbl10".tr, style: theme.textTheme.bodySmall), Padding(padding: EdgeInsets.only(left: 16.h), child: Text("lbl11".tr, style: theme.textTheme.bodySmall)), Padding(padding: EdgeInsets.only(left: 15.h), child: Text("lbl12".tr, style: theme.textTheme.bodySmall))]), SizedBox(height: 12.v), _buildRow(context), SizedBox(height: 40.v), Row(children: [Text("lbl_address".tr, style: theme.textTheme.bodySmall), Padding(padding: EdgeInsets.only(left: 130.h), child: Text("lbl_contact".tr, style: theme.textTheme.bodySmall))]), SizedBox(height: 12.v), Padding(padding: EdgeInsets.only(right: 72.h), child: Row(children: [Text("msg_34".tr, style: theme.textTheme.bodySmall), Padding(padding: EdgeInsets.only(left: 16.h), child: Text("msg_business_cami_kr".tr, style: theme.textTheme.bodySmall))])), Padding(padding: EdgeInsets.only(right: 105.h), child: Row(children: [Text("msg_2_b101".tr, style: theme.textTheme.bodySmall), Padding(padding: EdgeInsets.only(left: 34.h), child: Text("lbl_02_861_6828".tr, style: CustomTextStyles.bodySmall11))])), SizedBox(height: 48.v), Text("lbl17".tr, style: theme.textTheme.bodySmall), Text("msg".tr, style: theme.textTheme.bodySmall), SizedBox(height: 16.v), Text("msg_copyright_2023".tr, style: theme.textTheme.bodySmall), SizedBox(height: 41.v), Row(children: [CustomImageView(imagePath: ImageConstant.imgImage24x24, height: 24.adaptSize, width: 24.adaptSize), CustomImageView(imagePath: ImageConstant.imgImage3, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(left: 16.h)), CustomImageView(imagePath: ImageConstant.imgImage4, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(left: 16.h))])]))]))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 80.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgGroup, margin: EdgeInsets.only(left: 16.h, top: 15.v, bottom: 14.v)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgImage7, margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v))]); } 
/// Section Widget
Widget _buildImageRegistration(BuildContext context) { return CustomElevatedButton(height: 40.v, width: 121.h, text: "lbl105".tr, buttonStyle: CustomButtonStyles.fillBlueTL8, buttonTextStyle: CustomTextStyles.bodyMediumOnErrorContainer); } 
/// Section Widget
Widget _buildImageRegistrationRow(BuildContext context) { return Container(margin: EdgeInsets.symmetric(horizontal: 16.h), padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 16.v), decoration: AppDecoration.fillGray50.copyWith(borderRadius: BorderRadiusStyle.roundedBorder12), child: Row(crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.max, children: [CustomImageView(imagePath: ImageConstant.imgImage49, height: 128.v, width: 122.h, radius: BorderRadius.circular(61.h), margin: EdgeInsets.only(bottom: 28.v)), Padding(padding: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 4.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl104".tr, style: CustomTextStyles.bodyMediumBlack900_1), SizedBox(height: 1.v), SizedBox(width: 156.h, child: Text("msg53".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodySmallGray500_1.copyWith(height: 1.33))), SizedBox(height: 2.v), SizedBox(width: 145.h, child: Text("msg_9mb".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodySmallGray500_1.copyWith(height: 1.33))), SizedBox(height: 8.v), _buildImageRegistration(context)]))])); } 
/// Section Widget
Widget _buildEditText(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 16.h), child: CustomTextFormField(controller: editTextController, textInputAction: TextInputAction.done)); } 
/// Section Widget
Widget _buildChipView(BuildContext context) { return Wrap(runSpacing: 8.v, spacing: 8.h, children: List<Widget>.generate(2, (index) => Chipview2ItemWidget())); } 
/// Section Widget
Widget _buildImageColumn(BuildContext context) { return Container(margin: EdgeInsets.symmetric(horizontal: 16.h), padding: EdgeInsets.symmetric(horizontal: 108.h, vertical: 16.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: CustomImageView(imagePath: ImageConstant.imgVectorGray60002, height: 8.v, width: 144.h)); } 
/// Section Widget
Widget _buildYesButton(BuildContext context) { return CustomElevatedButton(width: 177.h, text: "lbl101".tr, buttonStyle: CustomButtonStyles.fillGrayTL82, buttonTextStyle: CustomTextStyles.bodyMediumBlack900_1); } 
/// Section Widget
Widget _buildNoButton(BuildContext context) { return CustomElevatedButton(width: 177.h, text: "lbl102".tr, margin: EdgeInsets.only(left: 8.h), buttonStyle: CustomButtonStyles.fillIndigo, buttonTextStyle: CustomTextStyles.bodyMediumBlack900_1); } 
/// Section Widget
Widget _buildYesRow(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 15.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildYesButton(context), _buildNoButton(context)])); } 
/// Section Widget
Widget _buildColumn(BuildContext context) { return Container(margin: EdgeInsets.symmetric(horizontal: 16.h), padding: EdgeInsets.symmetric(horizontal: 154.h, vertical: 8.v), decoration: AppDecoration.fillYellow.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: SizedBox(width: 53.h, child: Text("lbl103".tr, maxLines: null, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.bodyMediumOnErrorContainer.copyWith(height: 1.71)))); } 
/// Section Widget
Widget _buildRow(BuildContext context) { return Padding(padding: EdgeInsets.only(right: 16.h), child: Row(children: [Text("lbl13".tr, style: CustomTextStyles.bodySmallGray500_1), Padding(padding: EdgeInsets.only(left: 16.h), child: Text("lbl14".tr, style: CustomTextStyles.bodySmallGray500_1)), Padding(padding: EdgeInsets.only(left: 15.h), child: Text("lbl15".tr, style: CustomTextStyles.bodySmallGray500_1)), Padding(padding: EdgeInsets.only(left: 16.h), child: Text("lbl16".tr, style: CustomTextStyles.bodySmallGray500_1))])); } 
/// Common widget
Widget _buildVector(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [Container(height: 40.v, width: 110.h, padding: EdgeInsets.symmetric(horizontal: 33.h, vertical: 16.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: CustomImageView(imagePath: ImageConstant.imgVector, height: 8.v, width: 44.h, alignment: Alignment.center)), Container(height: 40.v, width: 110.h, margin: EdgeInsets.only(left: 16.h), padding: EdgeInsets.symmetric(horizontal: 33.h, vertical: 16.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: CustomImageView(imagePath: ImageConstant.imgVector, height: 8.v, width: 44.h, alignment: Alignment.center)), Container(height: 40.v, width: 110.h, margin: EdgeInsets.only(left: 15.h), padding: EdgeInsets.symmetric(horizontal: 33.h, vertical: 16.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: CustomImageView(imagePath: ImageConstant.imgVector, height: 8.v, width: 44.h, alignment: Alignment.center))]); } 

/// Navigates back to the previous screen.
onTapImgArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
