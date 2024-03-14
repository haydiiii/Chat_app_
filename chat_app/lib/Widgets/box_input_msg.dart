import 'package:flutter/material.dart';

class MessageInputBox extends StatefulWidget {
  @override
  _MessageInputBoxState createState() => _MessageInputBoxState();
}

class _MessageInputBoxState extends State<MessageInputBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Type your message...',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(width: 16.0),
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () {
            },
          ),
        ],
      ),
    );
  }
}
