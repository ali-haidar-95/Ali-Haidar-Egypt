import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomGestureDetector extends StatelessWidget {
  final GestureTapCallback onPressed;
  final String title;
  final String imagePath;

  CustomGestureDetector({
    @required this.onPressed,
    this.title,
    this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: GestureDetector(
        onTap: onPressed,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 5.0, right: 5.0),
                child: Center(
                  child: Text(title,
                      style: Theme.of(context).textTheme.bodyText1,
                      textAlign: TextAlign.center),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
