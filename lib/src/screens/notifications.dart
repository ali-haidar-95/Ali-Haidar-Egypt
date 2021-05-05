import 'package:abutalib_clinic/src/util.dart';
import 'package:abutalib_clinic/src/widgets.dart';
import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  List<Widget> _notifications = [];

  @override
  void initState() {
    _notifications.clear();
    MySharedPreferences.instance.containsKey('totalCount').then((value) {
      if (value) {
        MySharedPreferences.instance
            .getIntegerValue('totalCount')
            .then((value) {
          if (value > 0) {
            for (var i = 1; i <= value; i++) {
              MySharedPreferences.instance.containsKey('$i').then((value) {
                if (value) {
                  MySharedPreferences.instance
                      .getStringValue('$i')
                      .then((value) {
                    setState(() {
                      _notifications.insert(
                          0,
                          NotificationItem(
                            message: value,
                          ));
                    });
                  });
                }
              });
            }
          }
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              IconsBar(),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          MySharedPreferences.instance.removeAll();
                          _notifications.clear();
                        });
                      },
                      child: Text(
                        'مسح التنبيهات',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.red,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Color(0xFF3750A2),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    child: _notifications != null && _notifications.length > 0
                        ? Column(
                            children: _notifications,
                          )
                        : Container(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
