// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/core/utils/media_query.dart';
import '/core/utils/snack_bar.dart';
import '/gen/assets.gen.dart';
import '/routes/go_extensions.dart';
import '/theme/app_decoration.dart';
import '/theme/custom_button_style.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/ui/shared/cami_app_bar.dart';
import '/ui/shared/cami_app_footer.dart';
import '/widgets/custom_drop_down_form_field.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_image_view.dart';
import '/widgets/custom_text_form_field.dart';

class ContactUsRegisterScreen extends StatelessWidget {
  ContactUsRegisterScreen({super.key});

  final inquiryType = TextEditingController();
  final inquiryContent = TextEditingController();
  final List<String> items = [
    '주문/결제'.tr(), // Ordering/Payment
    '심리검사'.tr(), // Testings
    '서비스이용'.tr(), // Services
    '와디즈관련'.tr(), // Funding
  ];

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        appBar: const CamiAppBar(),
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            primary: true,
            child: Column(children: [
              SizedBox(height: 15.h),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: Assets.svg.imgArrowLeft.path,
                      height: 20.r,
                      width: 20.r,
                      margin: EdgeInsets.only(bottom: 6.h),
                      onTap: () {
                        context.safePop();
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 132.w),
                      child: Text(
                        '1:1 문의'.tr(),
                        style: textTheme.bodyLarge!.fSize(18),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40.h),
              Divider(color: Colors.black, indent: 16.w, endIndent: 16.w),
              SizedBox(height: 17.h),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 32.w),
                child: Text('1:1 문의하기'.tr(), style: textTheme.bodyLarge),
              ),
              SizedBox(height: 16.h),
              Divider(
                color: const Color(0xFFA3A3A3),
                indent: 16.w,
                endIndent: 16.w,
              ),
              SizedBox(height: 22.h),
              Padding(
                padding: EdgeInsets.only(left: 28.w, right: 16.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 14.w),
                      width: 44.w,
                      child: Text(
                        '문의유형'.tr(),
                        maxLines: 2,
                        style: textTheme.bodyLarge!.snug,
                      ),
                    ),
                    CustomDropDownFormField(
                      items: items,
                      height: 40.h,
                      width: 291.w,
                      borderDecoration: OutlineInputBorder(
                        borderRadius: BorderRadiusStyle.circleBorder8,
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 15.w, vertical: 10.h),
                      icon: CustomImageView(
                        imagePath: Assets.svg.imgArrowDown.path,
                        height: 8.h,
                        width: 12.w,
                      ),
                      onChanged: (value) {
                        inquiryType.text = value;
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 23.h),
              Padding(
                padding: EdgeInsets.only(left: 28.w, right: 16.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 43.w,
                      margin: EdgeInsets.only(top: 3.h, bottom: 43.h),
                      child: Text(
                        '문의내용'.tr(),
                        maxLines: 2,
                        style: textTheme.bodyLarge!.snug,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w),
                        child: CustomTextFormField(
                          controller: inquiryContent,
                          maxLines: 5,
                          textInputType: TextInputType.multiline,
                          textInputAction: TextInputAction.done,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 28.h),
              CustomElevatedButton(
                onPressed: (BuildContext context) {
                  // TODO: 문의 내용 서버로 업데이트하기
                  context.showSnackBar(
                    backgroundColor: const Color(0xFFF0803D),
                    content:
                        Text('[${inquiryType.text}] ${inquiryContent.text}'),
                  );
                },
                text: '문의하기'.tr(),
                margin: EdgeInsets.symmetric(horizontal: 16.w),
                buttonStyle: CustomButtonStyles.fillBlackTL12,
              ),
              SizedBox(height: 128.h),
              const CamiAppFooter(),
            ]),
          ),
        ),
      ),
    );
  }
}
