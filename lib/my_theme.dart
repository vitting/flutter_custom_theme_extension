import 'package:flutter/material.dart';

@immutable
class MyCustomInputTheme extends ThemeExtension<MyCustomInputTheme> {
  final Color? backgroundColor;
  final Color? labelColor;
  final Color? inputTextColor;
  final double? labelFontSize;
  final double? inputFontSize;

  const MyCustomInputTheme({
    required this.backgroundColor,
    required this.labelColor,
    required this.inputTextColor,
    required this.labelFontSize,
    required this.inputFontSize,
  });

  @override
  MyCustomInputTheme copyWith({
    Color? backgroundColor,
    Color? labelColor,
    Color? inputTextColor,
    double? labelFontSize,
    double? inputFontSize,
  }) {
    return MyCustomInputTheme(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      labelColor: labelColor ?? this.labelColor,
      inputTextColor: inputTextColor ?? this.inputTextColor,
      labelFontSize: labelFontSize ?? this.labelFontSize,
      inputFontSize: inputFontSize ?? this.inputFontSize,
    );
  }

  @override
  MyCustomInputTheme lerp(MyCustomInputTheme? other, double t) {
    if (other is! MyCustomInputTheme) {
      return this;
    }
    return MyCustomInputTheme(
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t),
      labelColor: Color.lerp(labelColor, other.labelColor, t),
      inputTextColor: Color.lerp(inputTextColor, other.inputTextColor, t),
      inputFontSize: null,
      labelFontSize: null,
    );
  }

  // Optional
  @override
  String toString() =>
      'MyCustomInputTheme(backgroundColor: $backgroundColor, danger: $labelColor, inputTextColor: $inputTextColor, inputFontSize: $inputFontSize, labelFontSize: $labelFontSize,)';
}
