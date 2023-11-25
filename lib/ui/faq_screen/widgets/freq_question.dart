// 🐦 Flutter imports:
import 'package:flutter/cupertino.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '../data/faq_list.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';

class FreqQuestion extends StatefulWidget {
  const FreqQuestion(this.faq, {super.key});

  final FAQ faq;

  @override
  State<FreqQuestion> createState() => _FreqQuestionState();
}

class _FreqQuestionState extends State<FreqQuestion> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.w),
      decoration:
          widget.faq.isExpanded ? const BoxDecoration(color: Color(0xFFF3F4F6)) : null,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 8.h, bottom: 7.h),
            child: Text(
              'Q.',
              style: textTheme.bodyMedium!.nanum,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 9.w,
                top: 7.h,
                bottom: 8.h,
              ),
              child: Text(
                widget.faq.question,
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                style: textTheme.bodyMedium!.nanum,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
