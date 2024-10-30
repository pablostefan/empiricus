import 'package:empiricus/shared/theme/app_colors.dart';
import 'package:empiricus/shared/theme/typography/font_size.dart';
import 'package:empiricus/shared/theme/typography/font_weight.dart';
import 'package:empiricus/shared/theme/typography/line_height.dart';
import 'package:flutter/material.dart';

extension TypographyExtension on Text {
  Text bodyLargeRegular({TextStyle? style}) {
    TextStyle defaultStyle = _buildTextStyle(
        fontSize: TypographyFontSize.large,
        fontWeight: TypographyFontWeight.regular,
        height: TypographyLineHeight.body,
        mergeStyle: style);

    return _applyTextStyle(defaultStyle);
  }

  Text bodyLargeSemiBold({TextStyle? style}) {
    TextStyle defaultStyle = _buildTextStyle(
        fontSize: TypographyFontSize.large,
        fontWeight: TypographyFontWeight.semiBold,
        height: TypographyLineHeight.body,
        mergeStyle: style);

    return _applyTextStyle(defaultStyle);
  }

  Text bodyMediumSemiBold({TextStyle? style}) {
    TextStyle defaultStyle = _buildTextStyle(
        fontSize: TypographyFontSize.medium,
        fontWeight: TypographyFontWeight.semiBold,
        height: TypographyLineHeight.body,
        mergeStyle: style);

    return _applyTextStyle(defaultStyle);
  }

  Text bodyBaseRegular({TextStyle? style}) {
    TextStyle defaultStyle = _buildTextStyle(
        fontSize: TypographyFontSize.base,
        fontWeight: TypographyFontWeight.regular,
        height: TypographyLineHeight.body,
        mergeStyle: style);

    return _applyTextStyle(defaultStyle);
  }

  Text bodySmallRegular({TextStyle? style}) {
    TextStyle defaultStyle = _buildTextStyle(
        fontSize: TypographyFontSize.small,
        fontWeight: TypographyFontWeight.regular,
        height: TypographyLineHeight.body,
        mergeStyle: style);

    return _applyTextStyle(defaultStyle);
  }

  Text bodySmallSemiBold({TextStyle? style}) {
    TextStyle defaultStyle = _buildTextStyle(
        fontSize: TypographyFontSize.small,
        fontWeight: TypographyFontWeight.semiBold,
        height: TypographyLineHeight.body,
        mergeStyle: style);

    return _applyTextStyle(defaultStyle);
  }

  Text _applyTextStyle(TextStyle textStyle) {
    return Text(data!,
        style: textStyle,
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  TextStyle _buildTextStyle({
    required double fontSize,
    required FontWeight fontWeight,
    required double height,
    double? letterSpacing,
    TextStyle? mergeStyle,
  }) {
    return TextStyle(
      fontSize: fontSize,
      fontStyle: FontStyle.normal,
      height: height,
      color: AppColors.monoBlack,
      letterSpacing: letterSpacing,
      fontWeight: fontWeight,
    ).merge(mergeStyle);
  }

  Text color(Color color) {
    return Text(data!,
        style: style!.copyWith(color: color),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }
}
