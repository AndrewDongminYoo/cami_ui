// 🐦 Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/core/utils/media_query.dart';
import '/gen/assets.gen.dart';
import '/routes/go_extensions.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/ui/shared/cami_app_bar.dart';
import '/ui/shared/cami_app_footer.dart';
import '/widgets/custom_drop_down_form_field.dart';
import '/widgets/custom_image_view.dart';

class Faq1Screen extends StatelessWidget {
  Faq1Screen({super.key});

  // TODO: ExpansionPanel 위젯으로 변경해야 함
  final dropdownItemList0 = <String>[];
  final dropdownItemList1 = <String>[];
  final dropdownItemList2 = <String>[];
  final dropdownItemList3 = <String>[];
  final dropdownItemList4 = <String>[];
  final dropdownItemList5 = <String>[];
  final dropdownItemList6 = <String>[];
  final dropdownItemList7 = <String>[];

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        appBar: const CamiAppBar(),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            primary: true,
            child: Column(children: [
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Row(children: [
                  CustomImageView(
                    imagePath: Assets.svg.imgArrowLeft.path,
                    height: 28.h,
                    width: 20.w,
                    onTap: () {
                      context.safePop();
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 106.w),
                    child: Text(
                      '자주 묻는 질문'.tr(),
                      style: textTheme.bodyLarge!.fSize(18),
                    ),
                  ),
                ]),
              ),
              SizedBox(height: 15.h),
              Divider(indent: 16.w, endIndent: 16.w),
              SizedBox(height: 9.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.h),
                      child: Text('Q.', style: textTheme.labelMedium),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 10.w),
                        child: CustomDropDownFormField(
                          icon: Container(
                            margin: EdgeInsets.only(left: 30.w),
                            child: rightChevronIcon(),
                          ),
                          hintText: '결제가 되지 않아요'.tr(),
                          items: dropdownItemList0,
                          onChanged: (value) {
                            // TODO: implement onChanged
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 7.h),
              Divider(indent: 16.w, endIndent: 16.w),
              SizedBox(height: 9.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.h),
                      child: Text('Q.', style: textTheme.labelMedium),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 10.w),
                        child: CustomDropDownFormField(
                          icon: Container(
                            margin: EdgeInsets.only(left: 30.w),
                            child: rightChevronIcon(),
                          ),
                          hintText: '회원 탈퇴는 어떻게 하나요?'.tr(),
                          items: dropdownItemList1,
                          onChanged: (value) {
                            // TODO: implement onChanged
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 7.h),
              Divider(indent: 16.w, endIndent: 16.w),
              SizedBox(height: 10.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10.h, bottom: 14.h),
                      child: Text('Q.', style: textTheme.labelMedium),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 10.w),
                        child: CustomDropDownFormField(
                          icon: Container(
                            margin: EdgeInsets.only(left: 18.w),
                            child: rightChevronIcon(),
                          ),
                          hintText: '검사를 다 끝내지 못했는데 이어서 하려면 어떻게 하나요?'.tr(),
                          items: dropdownItemList2,
                          onChanged: (value) {
                            // TODO: implement onChanged
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.h),
              Divider(indent: 16.w, endIndent: 16.w),
              SizedBox(height: 10.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 11.h, bottom: 13.h),
                      child: Text('Q.', style: textTheme.labelMedium),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 10.w),
                        child: CustomDropDownFormField(
                          icon: Container(
                            margin: EdgeInsets.only(left: 15.w),
                            child: rightChevronIcon(),
                          ),
                          hintText: '결제 성공 후 검사를 바로 하지 못했는데 어떻게 해야 하나요?'.tr(),
                          items: dropdownItemList3,
                          onChanged: (value) {
                            // TODO: implement onChanged
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.h),
              Divider(indent: 16.w, endIndent: 16.w),
              SizedBox(height: 9.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.h),
                      child: Text('Q.', style: textTheme.labelMedium),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 10.w),
                        child: CustomDropDownFormField(
                          icon: Container(
                            margin: EdgeInsets.only(left: 30.w),
                            child: rightChevronIcon(),
                          ),
                          hintText: '어린 강아지도 심리검사를 받을 수 있나요?'.tr(),
                          items: dropdownItemList4,
                          onChanged: (value) {
                            // TODO: implement onChanged
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 7.h),
              Divider(indent: 16.w, endIndent: 16.w),
              SizedBox(height: 9.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.h),
                      child: Text('Q.', style: textTheme.labelMedium),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 10.w),
                        child: CustomDropDownFormField(
                          icon: Container(
                            margin: EdgeInsets.only(left: 30.w),
                            child: rightChevronIcon(),
                          ),
                          hintText: '결과보고서 인쇄 방법'.tr(),
                          items: dropdownItemList5,
                          onChanged: (value) {
                            // TODO: implement onChanged
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 7.h),
              Divider(indent: 16.w, endIndent: 16.w),
              SizedBox(height: 9.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.h),
                      child: Text('Q.', style: textTheme.labelMedium),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 10.w),
                        child: CustomDropDownFormField(
                          icon: Container(
                            margin: EdgeInsets.only(left: 30.w),
                            child: rightChevronIcon(),
                          ),
                          hintText: '결과보고서 다시보기'.tr(),
                          items: dropdownItemList6,
                          onChanged: (value) {
                            // TODO: implement onChanged
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 7.h),
              Divider(indent: 16.w, endIndent: 16.w),
              SizedBox(height: 9.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.h),
                      child: Text('Q.', style: textTheme.labelMedium),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 10.w),
                        child: CustomDropDownFormField(
                          icon: Container(
                            margin: EdgeInsets.only(left: 30.w),
                            child: rightChevronIcon(),
                          ),
                          hintText: '구매한 쿠폰이 보이지 않아요.'.tr(),
                          items: dropdownItemList7,
                          onChanged: (value) {
                            // TODO: implement onChanged
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 136.h),
              const CamiAppFooter(),
            ]),
          ),
        ),
      ),
    );
  }

  Icon rightChevronIcon() {
    return Icon(
      CupertinoIcons.right_chevron,
      size: 30.w,
      weight: 3,
      color: const Color(0xFF5F6061),
    );
  }
}
