import 'package:flutter/material.dart';
import 'package:abutalib_clinic/src/screens.dart';
import 'package:abutalib_clinic/src/widgets.dart';

class PersonalFileScreen extends StatefulWidget {
  @override
  _PersonalFileScreenState createState() => _PersonalFileScreenState();
}

class _PersonalFileScreenState extends State<PersonalFileScreen> {
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
                        title: 'جدول المواعيد',
                        imagePath: 'assets/icons/schedule.png',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => WebViewScreen(
                                url: 'https://dacatraonline.com/calendar',
                              ),
                            ),
                          );
                        },
                      ),
                      CustomGestureDetector(
                        title: 'المفضلة',
                        imagePath: 'assets/icons/clinics.png',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => WebViewScreen(
                                url: 'https://dacatraonline.com/reading-list',
                              ),
                            ),
                          );
                        },
                      ),
                      CustomGestureDetector(
                        title: 'تعديل بياناتك',
                        imagePath: 'assets/icons/edite.png',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => WebViewScreen(
                                url:
                                    'https://dacatraonline.com/user/edit_profile',
                              ),
                            ),
                          );
                        },
                      ),
                      CustomGestureDetector(
                        title: 'تغيير كلمة المرور',
                        imagePath: 'assets/icons/password.png',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => WebViewScreen(
                                url:
                                    'https://dacatraonline.com/user/change_password_view',
                              ),
                            ),
                          );
                        },
                      ),
                      CustomGestureDetector(
                        title: 'فواتيرك',
                        imagePath: 'assets/icons/pills.png',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => WebViewScreen(
                                url:
                                    'https://dacatraonline.com/patient-billing',
                              ),
                            ),
                          );
                        },
                      ),
                      CustomGestureDetector(
                        title: 'حجوزاتك',
                        imagePath: 'assets/icons/your_reservations.png',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => WebViewScreen(
                                url:
                                    'https://dacatraonline.com/patient-appointments',
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
