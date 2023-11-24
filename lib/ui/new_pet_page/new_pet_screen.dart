// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/core/utils/logger.dart';
import '/core/utils/media_query.dart';
import '/gen/assets.gen.dart';
import '/routes/go_extensions.dart';
import '/theme/custom_button_style.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/ui/shared/cami_app_bar.dart';
import '/ui/shared/cami_app_footer.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_date_picker.dart';
import '/widgets/custom_drop_down_form_field.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_image_view.dart';
import '/widgets/custom_text_form_field.dart';
import 'data/cat_breeds.dart';
import 'widgets/chip_view_item_widget.dart';
import 'widgets/image_upload_form.dart';

class NewPetScreen extends StatefulWidget {
  const NewPetScreen({
    super.key,
    required this.type,
  });

  /// dog or cat
  final String type;

  @override
  State<NewPetScreen> createState() => NewPetScreenState();
}

class NewPetScreenState extends State<NewPetScreen> {
  bool neutered = true;
  bool isFemale = true;

  final yourPetsNameController = TextEditingController();
  final dogBreeds = petGroupList
      .where((pet) => pet.animalGroup1Id == 1)
      .map((dog) => dog.animalGroup2Name)
      .toList();
  final catBreeds = petGroupList
      .where((pet) => pet.animalGroup1Id == 2)
      .map((cat) => cat.animalGroup2Name)
      .toList();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        appBar: const CamiAppBar(),
        resizeToAvoidBottomInset: false,
        body: Scaffold(
          appBar: CustomAppBar(
            height: 50.h,
            leadingWidth: 56.w,
            leading: CustomImageView(
              imagePath: Assets.svg.imgArrowLeft.path,
              margin: EdgeInsets.all(14.h),
              height: 20.r,
              width: 20.r,
              onTap: () {
                context.safePop();
              },
            ),
            title: Text(
              '반려묘 등록하기 (1/2)'.tr(),
              style: textTheme.bodyLarge!.fSize(18),
            ),
            centerTitle: true,
          ),
          body: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              primary: true,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 21.h),
                  const ImageUploadForm(),
                  SizedBox(height: 25.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Text(
                      '반려묘 이름'.tr(),
                      style: textTheme.bodyMedium!
                          .colored(const Color(0xFF1F2937)),
                    ),
                  ),
                  SizedBox(height: 9.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: CustomTextFormField(
                      controller: yourPetsNameController,
                      textInputAction: TextInputAction.done,
                    ),
                  ),
                  SizedBox(height: 33.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Text(
                      '반려묘 생년월일'.tr(),
                      style: textTheme.bodyMedium!
                          .colored(const Color(0xFF1F2937)),
                    ),
                  ),
                  SizedBox(height: 21.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    child: DropdownDatePicker(startYear: 2000),
                  ),
                  SizedBox(height: 21.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Text(
                      '반려묘 입양일'.tr(),
                      style: textTheme.bodyMedium!
                          .colored(const Color(0xFF1F2937)),
                    ),
                  ),
                  SizedBox(height: 15.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    child: DropdownDatePicker(startYear: 2000),
                  ),
                  SizedBox(height: 27.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Text(
                      '반려묘 성별'.tr(),
                      style: textTheme.bodyMedium!
                          .colored(const Color(0xFF1F2937)),
                    ),
                  ),
                  SizedBox(height: 9.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ChipViewItemWidget(
                        labelText: '여아',
                        selected: isFemale,
                        onSelected: (value) {
                          setState(() {
                            isFemale = true;
                          });
                        },
                      ),
                      SizedBox(width: 8.w),
                      ChipViewItemWidget(
                        labelText: '남아',
                        selected: !isFemale,
                        onSelected: (value) {
                          setState(() {
                            isFemale = false;
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 33.h),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Text(
                      '묘종'.tr(),
                      style: textTheme.bodyMedium!
                          .colored(const Color(0xFF1F2937)),
                    ),
                  ),
                  SizedBox(height: 9.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: CustomDropDownFormField(
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 15.w, vertical: 10.h),
                      icon: Container(
                        padding: EdgeInsets.fromLTRB(30.w, 16.h, 11.w, 16.h),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF5F5F5),
                          borderRadius: BorderRadius.circular(8.w),
                        ),
                        child: CustomImageView(
                          imagePath: Assets.svg.imgArrowDown.path,
                          height: 8.h,
                          width: 12.w,
                        ),
                      ),
                      items: catBreeds,
                      onChanged: (value) {
                        logger.i('$value 🐈🐈‍⬛');
                      },
                    ),
                  ),
                  SizedBox(height: 33.h),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Text(
                      '중성화 수술 여부'.tr(),
                      style: textTheme.bodyMedium!
                          .colored(const Color(0xFF1F2937)),
                    ),
                  ),
                  SizedBox(height: 9.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ChipViewItemWidget(
                        labelText: '수술함',
                        selected: neutered,
                        onSelected: (value) {
                          setState(() {
                            neutered = true;
                          });
                        },
                      ),
                      SizedBox(width: 8.w),
                      ChipViewItemWidget(
                        labelText: '비수술',
                        selected: !neutered,
                        onSelected: (value) {
                          setState(() {
                            neutered = false;
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 64.h),
                  CustomElevatedButton(
                    onPressed: (BuildContext context) {
                      // TODO: 고양이 등록하기 (2/2) 화면으로 이동
                    },
                    text: '다음으로'.tr(),
                    margin: EdgeInsets.symmetric(horizontal: 16.w),
                    buttonStyle: CustomButtonStyles.fillPrimary,
                    buttonTextStyle:
                        textTheme.bodyMedium!.colored(const Color(0xFF171717)),
                  ),
                  SizedBox(height: 128.h),
                  const CamiAppFooter(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
