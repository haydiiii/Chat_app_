import 'package:chat_app/chat/chat_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
        )),
        debugShowCheckedModeBanner: false,
        home: const ChatView());
  }
}
