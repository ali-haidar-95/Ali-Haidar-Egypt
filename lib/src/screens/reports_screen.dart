import 'package:flutter/material.dart';
import 'package:abutalib_clinic/src/screens.dart';
import 'package:abutalib_clinic/src/widgets.dart';

class ReportsScreen extends StatefulWidget {
  @override
  _ReportsScreenState createState() => _ReportsScreenState();
}

class _ReportsScreenState extends State<ReportsScreen> {
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
              SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height - 85,
                  child: GridView.count(
                    childAspectRatio: 1.0,
                    primary: false,
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.13,
                      top: MediaQuery.of(context).size.height * 0.02,
                      right: MediaQuery.of(context).size.width * 0.13,
                      bottom: MediaQuery.of(context).size.width * 0.1,
                    ),
                    crossAxisSpacing: MediaQuery.of(context).size.width * 0.01,
                    mainAxisSpacing: MediaQuery.of(context).size.width * 0.01,
                    crossAxisCount: 2,
                    children: <Widget>[
                      CustomGestureDetector(
                        title: 'التقارير الطبية',
                        imagePath: 'assets/icons/reports.png',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => WebViewScreen(
                                url:
                                    'https://dacatraonline.com/patient-medical-records',
                              ),
                            ),
                          );
                        },
                      ),
                      CustomGestureDetector(
                        title: 'الروشتات الطبية',
                        imagePath: 'assets/icons/reports.png',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => WebViewScreen(
                                url:
                                    'https://dacatraonline.com/patient-prescription',
                              ),
                            ),
                          );
                        },
                      ),
                    ],
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
