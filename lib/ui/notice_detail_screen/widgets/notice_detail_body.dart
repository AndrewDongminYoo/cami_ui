// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/theme/app_decoration.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';

class NoticeDetailBody extends StatelessWidget {
  const NoticeDetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Container(
        width: 361.w,
        margin: EdgeInsets.symmetric(horizontal: 16.w),
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 13.h),
        decoration: AppDecoration.fillGray50,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 327.w,
              margin: EdgeInsets.only(right: 9.w),
              child: Text(
                '서버 업데이트 과정에서 시스템 오류로 인해 2019년 11월 15일 이후 업로드한 반려인/반려견 프로필 사진이 삭제되었습니다.'
                    .tr(),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: textTheme.bodySmall!.tight,
              ),
            ),
            Container(
              width: 326.w,
              margin: EdgeInsets.only(right: 9.w),
              child: Text(
                '이에 따라 사진이 삭제된 유저분들은 필요에 따라 프로필 사진을 재등록하셔야 합니다.'.tr(),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: textTheme.bodySmall!.tight,
              ),
            ),
            Text('사이트 이용에 불편을 드려 죄송합니다.'.tr(), style: textTheme.bodySmall),
            SizedBox(height: 3.h),
            Container(
              width: 327.w,
              margin: EdgeInsets.only(right: 9.w),
              child: Text(
                '향후 이런 일이 재발하지 않도록 서버의 보안과 백업 정책을 강화하겠습니다.'.tr(),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: textTheme.bodySmall!.tight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
