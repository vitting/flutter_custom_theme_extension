import 'package:custom_theme/bloc/cubit/some_cubit.dart';
import 'package:custom_theme/my_button_theme.dart';
import 'package:custom_theme/my_custom_button.dart';
import 'package:custom_theme/my_custom_input.dart';
import 'package:custom_theme/my_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SomeCubit(),
      child: Builder(
        builder: (context) {
          return BlocBuilder<SomeCubit, bool>(
            builder: (context, state) {
              return MaterialApp(
                title: 'Flutter Demo',
                theme: ThemeData(
                  extensions: [
                    MyCustomInputTheme(
                      backgroundColor: state ? Colors.yellow : Colors.green,
                      labelColor: state ? Colors.greenAccent : Colors.blue,
                      inputTextColor: state ? Colors.pinkAccent : Colors.orange,
                      inputFontSize: state ? 22 : 18,
                      labelFontSize: state ? 18 : 14,
                    ),
                    MyCustomButtonTheme(
                      backgroundColor: state ? Colors.amber : Colors.redAccent,
                      textStyle:
                          state
                              ? TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              )
                              : TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                              ),
                    ),
                  ],
                  colorScheme: ColorScheme.fromSeed(
                    seedColor: Colors.deepPurple,
                  ),
                ),
                home: const MyHomePage(title: 'Flutter Demo Home Page'),
              );
            },
          );
        },
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                context.read<SomeCubit>().setToTrue();
              },
              child: Text('Theme 1'),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<SomeCubit>().setToFalse();
              },
              child: Text('Theme 2'),
            ),
            MyCustomWidget(),
            MyCustomButton(),
          ],
        ),
      ),
    );
  }
}
