// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';

// ignore: must_be_immutable
class CustomCheckboxButton extends StatelessWidget {
  CustomCheckboxButton({
    super.key,
    required this.onChange,
    this.decoration,
    this.alignment = Alignment.center,
    this.isRightCheck,
    this.iconSize,
    this.value,
    this.text,
    this.width,
    this.padding,
    this.textStyle,
    this.textAlignment,
    this.isExpandedText = false,
  });

  bool? value;
  final BoxDecoration? decoration;
  final Alignment alignment;
  final bool? isRightCheck;
  final double? iconSize;
  final Function(bool) onChange;
  final String? text;
  final double? width;
  final EdgeInsetsGeometry? padding;
  final TextStyle? textStyle;
  final TextAlign? textAlignment;
  final bool isExpandedText;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: buildCheckBoxWidget,
    );
  }

  Widget get buildCheckBoxWidget => InkWell(
        onTap: () {
          value = !value!;
          onChange(value!);
        },
        child: Container(
          decoration: decoration,
          width: width,
          child: (isRightCheck ?? false) ? rightSideCheckbox : leftSideCheckbox,
        ),
      );
  Widget get leftSideCheckbox => Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: checkboxWidget,
          ),
          if (isExpandedText) Expanded(child: textWidget) else textWidget,
        ],
      );
  Widget get rightSideCheckbox => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (isExpandedText) Expanded(child: textWidget) else textWidget,
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: checkboxWidget,
          ),
        ],
      );
  Widget get textWidget => Text(
        text ?? '',
        textAlign: textAlignment ?? TextAlign.center,
        style:
            textStyle ?? textTheme.bodySmall!.colored(const Color(0xFF6B7280)),
      );
  Widget get checkboxWidget => SizedBox(
        height: iconSize ?? 16.w,
        width: iconSize ?? 16.w,
        child: Checkbox(
          visualDensity: defaultDensity,
          value: value ?? false,
          checkColor: Colors.white,
          fillColor: MaterialStateColor.resolveWith((states) {
            if (states.contains(MaterialState.selected)) {
              return Colors.black;
            }
            return Colors.white;
          }),
          onChanged: (value) {
            onChange(value!);
          },
        ),
      );
}
