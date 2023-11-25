// ignore_for_file: depend_on_referenced_packages

// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_emoji/flutter_emoji.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:markdown/markdown.dart' as md;

// 🌎 Project imports:
import '../data/faq_list.dart';
import '/theme/theme_helper.dart';

class FreqAnswer extends StatelessWidget {
  const FreqAnswer(this.faq, {super.key});

  final FAQ faq;

  @override
  Widget build(BuildContext context) {
    final markdownStyleSheet = MarkdownStyleSheet.fromTheme(theme);
    return Container(
      decoration: const BoxDecoration(color: Color(0xFFFAFAFA)),
      padding: EdgeInsets.symmetric(vertical: 23.h, horizontal: 20.w),
      child: MarkdownBody(
        data: faq.answer,
        extensionSet: md.ExtensionSet.gitHubWeb,
        styleSheetTheme: MarkdownStyleSheetBaseTheme.cupertino,
        styleSheet: markdownStyleSheet,
        builders: {
          'p': ParagraphBuilder(),
        },
      ),
    );
  }
}

class ParagraphBuilder implements MarkdownElementBuilder {
  @override
  Widget? visitElementAfterWithContext(
    BuildContext context,
    md.Element element,
    TextStyle? preferredStyle,
    TextStyle? parentStyle,
  ) {
    return buildRichText(element.textContent, preferredStyle);
  }

  @override
  Widget? visitElementAfter(md.Element element, TextStyle? preferredStyle) {
    return buildRichText(element.textContent, preferredStyle);
  }

  @override
  void visitElementBefore(md.Element element) {}

  @override
  Widget? visitText(md.Text text, TextStyle? preferredStyle) {
    return buildRichText(text.text, preferredStyle);
  }
}

RichText buildRichText(String markdownText, TextStyle? textStyle) {
  // 이모지 Parser
  final parser = EmojiParser();

  // TextSpan 위젯을 저장할 목록
  final textSpans = <TextSpan>[];
  // 문자열 세그먼트
  final segments = markdownText.split(' ');

  // 세그먼트 반복
  for (final segment in segments) {
    if (parser.hasEmoji(segment)) {
      // 이모티콘 텍스트 세그먼트 추가 (Noto Color Emoji의 공백 문자 너비가 넓어 공백은 따로 추가)
      textSpans.add(TextSpan(
        text: segment, // 이모티콘
        style: GoogleFonts.notoColorEmoji(textStyle: textStyle),
      ));
      textSpans.add(TextSpan(text: ' ', style: textStyle));
    } else {
      // 일반 텍스트 세그먼트 추가
      textSpans.add(TextSpan(text: '$segment ', style: textStyle));
    }
  }

  // RichText 위젯 반환
  return RichText(text: TextSpan(children: textSpans));
}
