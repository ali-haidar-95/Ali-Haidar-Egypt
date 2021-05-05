import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:abutalib_clinic/src/screens.dart';
import 'package:abutalib_clinic/src/widgets.dart';

class IconsBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomCircularGestureDetector(
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                  '/home', (Route<dynamic> route) => false);
            },
            diameter: 60,
            imagePath: 'assets/icons/home.png',
          ),
          Row(
            children: [
              CustomCircularGestureDetector(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Notifications(),
                    ),
                  );
                },
                diameter: 60,
                imagePath: 'assets/icons/notifications.png',
              ),
              CustomCircularGestureDetector(
                onPressed: () {
                  Share.share(
                    'Abutalib Dental Clinics'
                    '\n'
                    '\n'
                    'مركز أبو طالب لعلاج وتركيبات الأسنان'
                    '\n'
                    'يرحب بكم ويتمنى للجميع السلامة والعافية ..'
                    '\n'
                    '\n'
                    'يمكنك من خلال التطبيق عمل التالي :'
                    '\n'
                    '\n'
                    '- حجز موعد عند أحد أطباء المركز'
                    '\n'
                    '- التحدث بالصوت والصورة مع أحد أطباء المركز'
                    '\n'
                    '- التحدث بدردشة خاصة داخل التطبيق مع طبيبك الخاص'
                    '\n'
                    '- رؤية ومتابعة مواعيد حجوزاتك'
                    '\n'
                    '- رؤية الروشتات الطبية الخاصة بزياراتك داخل المركز'
                    '\n'
                    '- رؤية التحاليل والفحوصات المطلوبة من أطبائك داخل المركز'
                    '\n'
                    '- رؤية التقارير الدورية للحالة العامة وامكانية طباعتها'
                    '\n'
                    '- التحكم بملفك الشخصي بالكامل'
                    '\n'
                    '- رؤية تفاصيل العيادة ومواعيد العمل'
                    '\n'
                    '- نظام الملاحة الخاص بخرائط جوجل ليقودك للتوجه للمركز'
                    '\n'
                    '- يمكنك ترك كتابة رأيك الشخصي بطبيبك المعالج وتقييمه بالنجوم'
                    '\n',
                  );
                },
                diameter: 60,
                imagePath: 'assets/icons/twitter.png',
              ),
              CustomCircularGestureDetector(
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
                diameter: 60,
                imagePath: 'assets/icons/clock.png',
              ),
              CustomCircularGestureDetector(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WebViewScreen(
                        url: 'https://dacatraonline.com/login',
                      ),
                    ),
                  );
                },
                diameter: 60,
                imagePath: 'assets/icons/profile.png',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
