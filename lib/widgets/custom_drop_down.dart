// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';

class CustomDropDown extends StatelessWidget {
  const CustomDropDown({
    super.key,
    this.alignment,
    this.height,
    this.width,
    this.focusNode,
    this.icon,
    this.autofocus = false,
    this.textStyle,
    this.hintText,
    this.hintStyle,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.filled = true,
    this.validator,
    required this.items,
    required this.onChanged,
  });

  final Alignment? alignment;
  final double? height;
  final double? width;
  final FocusNode? focusNode;
  final Widget? icon;
  final bool autofocus;
  final TextStyle? textStyle;
  final List<String> items;
  final String? hintText;
  final TextStyle? hintStyle;
  final Widget? prefix;
  final BoxConstraints? prefixConstraints;
  final Widget? suffix;
  final BoxConstraints? suffixConstraints;
  final EdgeInsets? contentPadding;
  final InputBorder? borderDecoration;
  final Color? fillColor;
  final bool? filled;
  final FormFieldValidator<String>? validator;
  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: dropDownWidget,
          )
        : dropDownWidget;
  }

  Widget get dropDownWidget => SizedBox(
        height: height ?? 40.h,
        width: width ?? double.maxFinite,
        child: DropdownButtonFormField(
          elevation: 0,
          focusNode: focusNode ?? FocusNode(),
          icon: icon,
          autofocus: autofocus,
          style: textStyle ?? CustomTextStyles.bodyMediumNanumSquareNeoBlack900,
          items: items.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                overflow: TextOverflow.ellipsis,
                style: hintStyle ??
                    CustomTextStyles.bodyMediumNanumSquareNeoBlack900,
              ),
            );
          }).toList(),
          decoration: decoration,
          validator: validator,
          onChanged: (value) {
            onChanged(value.toString());
          },
        ),
      );
  InputDecoration get decoration => InputDecoration(
        hintText: hintText ?? '',
        hintStyle:
            hintStyle ?? CustomTextStyles.bodyMediumNanumSquareNeoBlack900,
        prefixIcon: prefix,
        prefixIconConstraints: prefixConstraints,
        suffixIcon: suffix,
        suffixIconConstraints: suffixConstraints,
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
        fillColor: fillColor ?? appTheme.gray10001,
        filled: filled,
        border: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.w),
              borderSide: BorderSide.none,
            ),
        enabledBorder: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.w),
              borderSide: BorderSide.none,
            ),
        focusedBorder: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.w),
              borderSide: BorderSide.none,
            ),
      );
}
