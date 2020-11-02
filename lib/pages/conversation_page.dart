import 'package:flutter/material.dart';
import 'package:messio_refresher/widgets/chat_appbar.dart';
import 'package:messio_refresher/widgets/chat_list_widget.dart';
import 'package:messio_refresher/widgets/input_widget.dart';

class ConversationPage extends StatefulWidget {
  @override
  _ConversationPageState createState() => _ConversationPageState();
}

class _ConversationPageState extends State<ConversationPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: ChatAppBar(),
      body: ListView(
        shrinkWrap: true,
        children: [
          ChatListWidget(),
          InputWidget(),
        ],
      ),
    ));
  }
}
