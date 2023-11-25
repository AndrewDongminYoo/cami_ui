// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/core/utils/media_query.dart';
import '/ui/shared/cami_app_bar.dart';
import 'data/faq_list.dart';
import 'widgets/faq_title.dart';
import 'widgets/freq_answer.dart';
import 'widgets/freq_question.dart';

class FaqScreen extends StatefulWidget {
  const FaqScreen({super.key});

  @override
  State<FaqScreen> createState() => _FaqScreenState();
}

class _FaqScreenState extends State<FaqScreen> {
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        appBar: const CamiAppBar(),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 16.w),
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            primary: true,
            child: Column(
              children: [
                const FAQTitle(),
                SizedBox(height: 16.h),
                const Divider(),
                ExpansionPanelList(
                  elevation: 0,
                  materialGapSize: 0,
                  expandedHeaderPadding: EdgeInsets.zero,
                  animationDuration: const Duration(milliseconds: 400),
                  expansionCallback: (int index, bool isExpanded) {
                    setState(() {
                      faqList[index].isExpanded = isExpanded;
                    });
                  },
                  children: faqList.map<ExpansionPanel>((FAQ faq) {
                    return ExpansionPanel(
                      canTapOnHeader: true,
                      backgroundColor: const Color(0xFFFAFAFA),
                      isExpanded: faq.isExpanded,
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return FreqQuestion(faq);
                      },
                      body: FreqAnswer(faq),
                    );
                  }).toList(),
                ),
                SizedBox(height: 60.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
