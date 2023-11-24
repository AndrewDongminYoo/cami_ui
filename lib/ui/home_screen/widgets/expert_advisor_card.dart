// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/data/models/advisor.dart';
import '/theme/app_decoration.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/widgets/custom_image_view.dart';

class ExpertAdvisorCard extends StatelessWidget {
  const ExpertAdvisorCard({
    super.key,
    required this.advisor,
  });

  final Advisor advisor;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.symmetric(horizontal: 8.w),
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.circleBorder8,
      ),
      child: Container(
        height: 180.h,
        width: 337.w,
        padding: EdgeInsets.only(left: 16.w),
        decoration: AppDecoration.outlineBlueGray
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder8),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(top: 13.h),
              child: Text(advisor.jobTitle.tr(),
                  style: textTheme.bodySmall!
                      .colored(const Color(0xFF6FD574))
                      .bold),
            ),
            Container(
              alignment: Alignment.center,
              height: 180.h,
              width: 321.w,
              child: Stack(
                alignment: Alignment.centerRight,
                children: [
                  CustomImageView(
                    imagePath: advisor.image,
                    height: 180.h,
                    fit: BoxFit.cover,
                    alignment: Alignment.centerRight,
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.only(bottom: 16.h),
                    child: Text(
                      advisor.description.tr(),
                      maxLines: 4,
                      overflow: TextOverflow.visible,
                      style:
                          textTheme.bodySmall!.colored(const Color(0xFF1F2020)),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(top: 39.h),
                    child: Text(advisor.name.tr(),
                        style: textTheme.bodyLarge!
                            .colored(const Color(0xFF1F2020))
                            .thick),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
