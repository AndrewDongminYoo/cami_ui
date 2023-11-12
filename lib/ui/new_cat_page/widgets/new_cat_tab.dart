// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '../data/cat_breeds.dart';
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/localization/app_localization.dart';
import '/routes/app_routes.dart';
import '/theme/custom_button_style.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/ui/shared/cami_app_footer.dart';
import '/widgets/custom_drop_down.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_image_view.dart';
import 'chipview_item_widget.dart';

class NewCatTab extends StatefulWidget {
  const NewCatTab({super.key});

  @override
  NewCatTabState createState() => NewCatTabState();
}

class NewCatTabState extends State<NewCatTab>
    with AutomaticKeepAliveClientMixin<NewCatTab> {
  @override
  bool get wantKeepAlive => true;

  final catBreeds = petGroupList
      .where((pet) => pet.animalGroup1Id == 2)
      .map((cat) => cat.animalGroup2Name)
      .toList();

  @override
  Widget build(BuildContext context) {
    super.build(context);
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 33.h),
                Column(children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 16.w),
                      child: Text('묘종'.tr,
                          style: CustomTextStyles.bodyMediumOnPrimary),
                    ),
                  ),
                  SizedBox(height: 9.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: CustomDropDown(
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 15.w, vertical: 10.h),
                      icon: Container(
                        padding: EdgeInsets.fromLTRB(30.w, 16.h, 11.w, 16.h),
                        decoration: BoxDecoration(
                          color: appTheme.gray10001,
                          borderRadius: BorderRadius.circular(8.w),
                        ),
                        child: CustomImageView(
                            imagePath: Assets.svg.imgArrowDown.path,
                            height: 8.h,
                            width: 12.w),
                      ),
                      items: catBreeds,
                      onChanged: (value) {
                        print('$value 🐈🐈‍⬛');
                      },
                    ),
                  ),
                  SizedBox(height: 33.h),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 16.w),
                      child: Text('중성화 수술 여부'.tr,
                          style: CustomTextStyles.bodyMediumOnPrimary),
                    ),
                  ),
                  SizedBox(height: 9.h),
                  _buildChipView(context),
                  SizedBox(height: 64.h),
                  CustomElevatedButton(
                      text: '다음으로'.tr,
                      margin: EdgeInsets.symmetric(horizontal: 16.w),
                      buttonStyle: CustomButtonStyles.fillPrimary,
                      buttonTextStyle:
                          CustomTextStyles.bodyMediumOnErrorContainer),
                  SizedBox(height: 128.h),
                  const CamiAppFooter()
                ])
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildChipView(BuildContext context) {
    return Wrap(
      runSpacing: 8.h,
      spacing: 8.w,
      children: List<Widget>.generate(
        2,
        (index) => const ChipviewItemWidget(),
      ),
    );
  }

  void onTapTxtWidget(BuildContext context) {
    // TODO: implement Actions
  }

  /// Navigates to the faqScreen when the action is triggered.
  void onTapTxtWidget1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.faqScreen);
  }

  /// Navigates to the contactUsRegisterScreen when the action is triggered.
  void onTapTxtWidget2(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.contactUsRegisterScreen);
  }
}
