// 🐦 Flutter imports:
import 'package:flutter/cupertino.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/theme/app_decoration.dart';
import '/theme/theme_helper.dart';
import '/widgets/custom_drop_down_form_field.dart';

class ExpansionFAQ extends StatelessWidget {
  const ExpansionFAQ({
    super.key,
    required this.question,
    required this.answer,
    this.isFirst = false,
  });

  final String question;
  final String answer;
  final bool isFirst;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16.w, top: 9.h, bottom: 7.h),
      decoration: isFirst ? AppDecoration.fillGray100 : null,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.h),
            child: Text('Q.', style: textTheme.labelMedium),
          ),
          Expanded(
            child: CustomDropDownFormField(
              icon: Icon(
                CupertinoIcons.chevron_down,
                size: 16.w,
                weight: 3,
                color: const Color(0xFF5F6061),
              ),
              hintText: question,
              hintStyle: textTheme.labelMedium,
              items: const [],
              onChanged: (value) {
                // TODO: implement onChanged
              },
            ),
          ),
        ],
      ),
    );
  }
}
