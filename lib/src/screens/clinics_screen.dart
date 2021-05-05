import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:abutalib_clinic/src/widgets.dart';

class ClinicsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.cover),
          ),
          child: Column(children: [
            IconsBar(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10.0),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Image(
                            image: AssetImage('assets/images/clinics.png'),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                              alignment: Alignment.center,
                              color: Colors.grey.withOpacity(0.7),
                              child: Text(
                                'مجمع عيادات دكتور علي أبو طالب',
                                style: TextStyle(
                                  fontSize: 22.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Text(
                        'الحميدية، القريات ، المملكة العربية السعودية'
                        '\n'
                        '\n'
                        ': مواعيد العمل'
                        '\n'
                        'من 09:30 صباحا الى 12:30 ظهرا'
                        '\n'
                        'ومن 04:30 عصرا الى 09:30 مساء'
                        '\n',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.black54,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      padding: EdgeInsets.all(10.0),
                      color: Colors.white,
                      child: Text(
                        'للحجز والإستفسارات'
                        '\n'
                        '+966565271717',
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.black54,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
