import 'package:abutalib_clinic/src/screens.dart';
import 'package:abutalib_clinic/src/util.dart';
import 'package:abutalib_clinic/src/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  setSharedPreferences(String _notification) {
    MySharedPreferences.instance.containsKey('totalCount').then((value) {
      if (value) {
        MySharedPreferences.instance
            .getIntegerValue('totalCount')
            .then((value) {
          MySharedPreferences.instance.setIntegerValue('totalCount', value + 1);
          MySharedPreferences.instance
              .setStringValue('${value + 1}', _notification);
        });
      } else {
        MySharedPreferences.instance.setIntegerValue('totalCount', 1);
        MySharedPreferences.instance.setStringValue('1', _notification);
      }
    });
  }


  @override
  void initState() {
    setSharedPreferences('Test');
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
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
              SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height - 85,
                  child: GridView.count(
                    primary: false,
                    childAspectRatio: 1.0,
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
                        title: 'احجز موعد',
                        imagePath: 'assets/icons/reserve_appointment.png',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DoctorsScreen(
                                dr_1:
                                    'https://dacatraonline.com/user/schedule_doctor/MTI=',
                                dr_2:
                                    'https://dacatraonline.com/user/schedule_doctor/MTA=',
                                dr_3:
                                    'https://dacatraonline.com/user/schedule_doctor/Mjgz',
                                dr_4:
                                    'https://dacatraonline.com/user/schedule_doctor/Mjg0',
                                dr_5:
                                    'https://dacatraonline.com/user/schedule_doctor/Mjgy',
                              ),
                            ),
                          );
                        },
                      ),
                      CustomGestureDetector(
                        title: 'أطباء العيادات',
                        imagePath: 'assets/icons/clinic_doctors.png',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DoctorsScreen(
                                dr_1:
                                    'https://dacatraonline.com/doctor-profile/uname12',
                                dr_2:
                                    'https://dacatraonline.com/doctor-profile/uname10',
                                dr_3:
                                    'https://dacatraonline.com/doctor-profile/uname283',
                                dr_4:
                                    'https://dacatraonline.com/doctor-profile/uname284',
                                dr_5:
                                    'https://dacatraonline.com/doctor-profile/uname282',
                              ),
                            ),
                          );
                        },
                      ),
                      CustomGestureDetector(
                        title: 'إستشاراتك',
                        imagePath: 'assets/icons/advice.png',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => WebViewScreen(
                                url: 'https://dacatraonline.com/messages',
                              ),
                            ),
                          );
                        },
                      ),
                      CustomGestureDetector(
                        title: 'تقارير وروشتات',
                        imagePath: 'assets/icons/reports.png',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ReportsScreen(),
                            ),
                          );
                        },
                      ),
                      CustomGestureDetector(
                        title: 'ملفك الشخصي',
                        imagePath: 'assets/icons/personal_file.png',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PersonalFileScreen(),
                            ),
                          );
                        },
                      ),
                      CustomGestureDetector(
                        title: 'مواعيد المحادثات',
                        imagePath: 'assets/icons/conversations.png',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => WebViewScreen(
                                url: 'https://dacatraonline.com/conversations',
                              ),
                            ),
                          );
                        },
                      ),
                      CustomGestureDetector(
                        title: 'الملتقى الطبي',
                        imagePath: 'assets/icons/medical_forum.png',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => WebViewScreen(
                                url:
                                    'https://dacatraonline.com/category/dental_care',
                              ),
                            ),
                          );
                        },
                      ),
                      CustomGestureDetector(
                        title: 'العيادة',
                        imagePath: 'assets/icons/clinics.png',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ClinicsScreen(),
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
