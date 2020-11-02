import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:messio_refresher/config/palette.dart';

class ChatItemWidget extends StatelessWidget {
  final int index;

  const ChatItemWidget({Key key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (index % 2 == 0) {
      return Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  decoration: BoxDecoration(
                    color: Palette.selfMessageBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                      bottomLeft: Radius.circular(8),
                    ),
                  ),
                  margin: EdgeInsets.only(right: 10),
                  child: Text(
                    'This is a sent message',
                    style: TextStyle(color: Palette.selfMessageColor),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 5.0, top: 5.0, bottom: 5.0),
                  child: Text(
                    DateFormat('dd MMM kk:mm').format(
                        DateTime.fromMillisecondsSinceEpoch(1565888474278)),
                    style: TextStyle(
                        color: Palette.greyColor,
                        fontSize: 12.0,
                        fontStyle: FontStyle.normal),
                  ),
                )
              ],
            )
          ],
        ),
      );
    }else{
      // received message
      
    }
  }
}
