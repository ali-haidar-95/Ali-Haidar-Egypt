import 'package:flutter/material.dart';

class NotificationItem extends StatelessWidget {
  final String message;

  const NotificationItem({Key key, this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.black12,
            width: 1.0,
          ),
        ),
      ),
      child: Text(
        message,
        style: TextStyle(
          fontSize: 22.0,
          color: Colors.black,
        ),
      ),
    );
  }
}
