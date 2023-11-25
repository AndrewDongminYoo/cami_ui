// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/core/utils/media_query.dart';
import '/ui/shared/cami_app_bar.dart';
import 'widgets/faq_title.dart';
import 'widgets/freq_answer.dart';
import 'widgets/freq_question.dart';

class FaqScreen extends StatefulWidget {
  const FaqScreen({super.key});

  @override
  State<FaqScreen> createState() => _FaqScreenState();
}

class _FaqScreenState extends State<FaqScreen> {
  bool isExpanded = true;

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
                FreqQuestion(question: '결제가 되지 않아요'.tr(), isFirst: true),
                const FreqAnswer(),
                const Divider(),
                FreqQuestion(
                    question: '결제 성공 후 검사를 바로 하지 못했는데 어떻게 해야 하나요?'.tr()),
                const Divider(),
                FreqQuestion(question: '검사를 다 끝내지 못했는데 이어서 하려면 어떻게 하나요?'.tr()),
                const Divider(),
                FreqQuestion(question: '어린 강아지도 심리검사를 받을 수 있나요?'.tr()),
                const Divider(),
                FreqQuestion(question: '구매한 쿠폰이 보이지 않아요.'.tr()),
                const Divider(),
                FreqQuestion(question: '회원 탈퇴는 어떻게 하나요?'.tr()),
                const Divider(),
                FreqQuestion(question: '결과보고서 인쇄 방법'.tr()),
                const Divider(),
                FreqQuestion(question: '결과보고서 다시보기'.tr()),
                const Divider(),
                SizedBox(height: 60.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
