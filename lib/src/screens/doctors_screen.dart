import 'package:flutter/material.dart';
import 'package:abutalib_clinic/src/screens.dart';
import 'package:abutalib_clinic/src/widgets.dart';

class DoctorsScreen extends StatefulWidget {
  final String dr_1;
  final String dr_2;
  final String dr_3;
  final String dr_4;
  final String dr_5;

  const DoctorsScreen(
      {Key key, this.dr_1, this.dr_2, this.dr_3, this.dr_4, this.dr_5})
      : super(key: key);

  @override
  _DoctorsScreenState createState() => _DoctorsScreenState();
}

class _DoctorsScreenState extends State<DoctorsScreen> {
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
                    childAspectRatio: 0.9,
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
                        title: 'د.محمد عضيبات',
                        imagePath: 'assets/icons/clinics.png',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => WebViewScreen(
                                url: widget.dr_1,
                              ),
                            ),
                          );
                        },
                      ),
                      CustomGestureDetector(
                        title: 'د.سامر الكيلاني',
                        imagePath: 'assets/icons/clinics.png',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => WebViewScreen(
                                url: widget.dr_2,
                              ),
                            ),
                          );
                        },
                      ),
                      CustomGestureDetector(
                        title: 'د. أحمد الشافعى',
                        imagePath: 'assets/icons/clinics.png',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => WebViewScreen(
                                url: widget.dr_3,
                              ),
                            ),
                          );
                        },
                      ),
                      CustomGestureDetector(
                        title: 'د. عمر عصام العيتانى',
                        imagePath: 'assets/icons/clinics.png',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => WebViewScreen(
                                url: widget.dr_4,
                              ),
                            ),
                          );
                        },
                      ),
                      CustomGestureDetector(
                        title: 'د.دانية إبراهيم الفراهيد',
                        imagePath: 'assets/icons/clinics.png',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => WebViewScreen(
                                url: widget.dr_5,
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
