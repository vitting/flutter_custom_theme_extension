import 'package:flutter/material.dart';

@immutable
class MyCustomButtonTheme extends ThemeExtension<MyCustomButtonTheme> {
  final TextStyle? textStyle;
  final Color? backgroundColor;

  const MyCustomButtonTheme({
    required this.textStyle,
    required this.backgroundColor,
  });

  @override
  ThemeExtension<MyCustomButtonTheme> copyWith({
    TextStyle? textStyle,
    Color? backgroundColor,
  }) {
    return MyCustomButtonTheme(
      textStyle: textStyle ?? this.textStyle,
      backgroundColor: backgroundColor ?? this.backgroundColor,
    );
  }

  @override
  ThemeExtension<MyCustomButtonTheme> lerp(
    covariant ThemeExtension<MyCustomButtonTheme>? other,
    double t,
  ) {
    if (other is! MyCustomButtonTheme) {
      return this;
    }
    return MyCustomButtonTheme(
      textStyle: TextStyle.lerp(textStyle, other.textStyle, t),
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t),
    );
  }
}
