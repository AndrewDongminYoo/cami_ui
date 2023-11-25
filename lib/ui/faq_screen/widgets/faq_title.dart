// 🐦 Flutter imports:
import 'package:flutter/cupertino.dart';

// 📦 Package imports:
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/gen/assets.gen.dart';
import '/routes/go_extensions.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/widgets/custom_image_view.dart';

class FAQTitle extends StatelessWidget {
  const FAQTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: Assets.svg.imgArrowLeft.path,
            height: 20.r,
            width: 20.r,
            onTap: () {
              context.safePop();
            },
          ),
          Padding(
            padding: EdgeInsets.only(left: 105.w),
            child: Text(
              '자주 묻는 질문'.tr(),
              style: textTheme.bodyLarge!.fSize(18),
            ),
          ),
        ],
      ),
    );
  }
}
