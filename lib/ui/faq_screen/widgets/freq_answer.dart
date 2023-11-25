// 🐦 Flutter imports:
import 'package:flutter/cupertino.dart';

// 📦 Package imports:
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/theme/app_decoration.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';

class FreqAnswer extends StatelessWidget {
  const FreqAnswer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillGray50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 23.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Text(
              '결제가 되지 않는경우'.tr(),
              style: textTheme.bodyMedium,
            ),
          ),
          SizedBox(height: 10.h),
          Container(
            alignment: Alignment.center,
            width: 314.w,
            margin: EdgeInsets.symmetric(horizontal: 20.w),
            child: Text(
              '1. 웹 브라우저가 Explorer인 경우, 버전 10 이상인지 확인해야하며'.tr(),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: textTheme.bodyMedium!.relaxed,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Text(
              '되도록 크롬웹브라우저와 엣지를 추천드립니다.'.tr(),
              style: textTheme.bodyMedium,
            ),
          ),
          SizedBox(height: 10.h),
          Container(
            width: 307.w,
            margin: EdgeInsets.symmetric(horizontal: 20.w),
            child: Text(
              '2. 브라우저의 팝업 차단 설정이 해제되어 있어야 결제가 가능합니다.'.tr(),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: textTheme.bodyMedium!.relaxed,
            ),
          ),
          Container(
            width: 304.w,
            margin: EdgeInsets.symmetric(horizontal: 20.w),
            child: Text(
              '3. 다른 카드로 결제를 시도해보기 (체크카드의 경우 잔액부족으로, 신용카드는 카드사 오류로 안되는 경우가 종종 발생합니다.)'
                  .tr(),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: textTheme.bodyMedium!.relaxed,
            ),
          ),
          SizedBox(height: 29.h),
          Container(
            alignment: Alignment.center,
            width: 317.w,
            margin: EdgeInsets.symmetric(horizontal: 20.w),
            child: Text(
              '위 사항을 확인하신 후에도 결제가 되지 않는 경우, 현재 사용중인 웹브라우저의 종류와 버전, 그리고 기기 종류 (PC/모바일의 경우 기기 브랜드 필요)를 확인하여 문의주시면 빠르게 도와드리겠습니다.'
                  .tr(),
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: textTheme.bodyMedium!.relaxed,
            ),
          ),
          SizedBox(height: 24.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Text('감사합니다.'.tr(), style: textTheme.bodyMedium),
          ),
          SizedBox(height: 30.h),
        ],
      ),
    );
  }
}
