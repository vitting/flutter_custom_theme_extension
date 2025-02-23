import 'package:custom_theme/my_button_theme.dart';
import 'package:flutter/material.dart';

class MyCustomButton extends StatelessWidget {
  const MyCustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final MyCustomButtonTheme myCustomButtonTheme =
        Theme.of(context).extension<MyCustomButtonTheme>()!;
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: BeveledRectangleBorder(),
        backgroundColor: myCustomButtonTheme.backgroundColor,
        textStyle: myCustomButtonTheme.textStyle,
      ),
      child: const Text('Custom button'),
    );
  }
}
