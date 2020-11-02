import 'package:flutter/material.dart';
import 'package:messio_refresher/pages/conversation_page_list.dart';

void main() {
  runApp(Messio());
}

class Messio extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ConversationPageList(),
    );
  }
}
