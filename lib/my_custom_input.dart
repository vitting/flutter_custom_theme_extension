import 'package:custom_theme/my_theme.dart';
import 'package:flutter/material.dart';

class MyCustomWidget extends StatelessWidget {
  MyCustomWidget({super.key});

  final _textEditController = TextEditingController(
    text: 'Some text for this input field',
  );
  @override
  Widget build(BuildContext context) {
    final MyCustomInputTheme myCustomInputTheme =
        Theme.of(context).extension<MyCustomInputTheme>()!;
    return Container(
      width: double.infinity,
      height: 100,
      color: myCustomInputTheme.backgroundColor,
      child: TextField(
        style: TextStyle(
          color: myCustomInputTheme.inputTextColor,
          fontSize: myCustomInputTheme.inputFontSize,
        ),
        decoration: InputDecoration(
          label: Text('Label for input'),
          labelStyle: TextStyle(
            color: myCustomInputTheme.labelColor,
            fontSize: myCustomInputTheme.labelFontSize,
          ),
        ),
        controller: _textEditController,
      ),
    );
  }
}
