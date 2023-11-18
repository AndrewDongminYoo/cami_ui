// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

// 🌎 Project imports:
import '/routes/app_routes.dart';
import '/theme/app_decoration.dart';
import 'my_pet_menu_item.dart';

class MyPetMenu extends StatelessWidget {
  const MyPetMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          MyPetMenuItem(
              text: '나의 반려친구'.tr(), decoration: AppDecoration.fillPrimary),
          MyPetMenuItem(text: '심리검사'.tr()),
          MyPetMenuItem(text: '방문교육'.tr()),
          MyPetMenuItem(text: '보유쿠폰'.tr(), count: 0),
          MyPetMenuItem(
            text: '1:1 문의'.tr(),
            onPressed: () {
              context.pushNamed(AppRoutes.contactUsRegisterScreen);
            },
          ),
          MyPetMenuItem(text: '로그아웃'.tr()),
          Container(
            width: 361.w,
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
            decoration: AppDecoration.fillGray50,
            child: Divider(color: const Color(0xFFEEEEEE), endIndent: 26.w),
          ),
          MyPetMenuItem(
            text: '자주묻는질문'.tr(),
            onPressed: () {
              context.pushNamed(AppRoutes.faqScreen);
            },
          ),
          MyPetMenuItem(text: '공지사항'.tr()),
          MyPetMenuItem(text: '이벤트'.tr()),
        ],
      ),
    );
  }
}
