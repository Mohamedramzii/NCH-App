// ignore_for_file: non_constant_identifier_names

import 'package:nasr_city_hospital/App/routes/routes.dart';

import '../model/Main_model.dart';

class Main_db {
  static List<Category> category_data = [
    Category(
      category_name: 'الجمعية',
      category_icon: 'first icon',
      // screenPath: const Association_Screen(),
      screenPathname: Routes.charityScreen,
    ),
    Category(
        category_name: 'الفروع',
        category_icon: 'second icon',
        // screenPath: const Branches_Screen(),
        screenPathname: Routes.branchesScreen),
  ];

  static List<Charity_data> charity_category_data = [
    Charity_data(
        charity_sub_category: 'اهداف الجمعية',
        // charity_details_header: 'details bla',
        image: 'image',
        charity_details_body:
            'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. الهدف من استخدام لوريم إيبسوم هو أنه يحتوي على توزيع طبيعي -إلى حد ما- للأحرف ، بدلاً من استخدام "هنا يوجد محتوى نصي ، هنا يوجد محتوى نصي" ، مما يجعلها تبدو وكأنها إنجليزية قابلة للقراءة. تستخدم العديد من حزم النشر المكتبي ومحرري صفحات الويب الآن Lorem Ipsum كنموذج افتراضي للنموذج ، وسيكشف البحث عن "lorem ipsum" عن العديد من مواقع الويب التي لا تزال في مهدها. تطورت إصدارات مختلفة على مر السنين ، أحيانًا عن طريق الصدفة ، وأحيانًا عن قصد (روح الدعابة المحقونة وما شابه ذلك).'),
    Charity_data(
        charity_sub_category: 'رسالة الجمعية',
        // charity_details_header: 'details bla bla',
        image: 'image',
        charity_details_body:
            'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. الهدف من استخدام لوريم إيبسوم هو أنه يحتوي على توزيع طبيعي -إلى حد ما- للأحرف ، بدلاً من استخدام "هنا يوجد محتوى نصي ، هنا يوجد محتوى نصي" ، مما يجعلها تبدو وكأنها إنجليزية قابلة للقراءة. تستخدم العديد من حزم النشر المكتبي ومحرري صفحات الويب الآن Lorem Ipsum كنموذج افتراضي للنموذج ، وسيكشف البحث عن "lorem ipsum" عن العديد من مواقع الويب التي لا تزال في مهدها. تطورت إصدارات مختلفة على مر السنين ، أحيانًا عن طريق الصدفة ، وأحيانًا عن قصد (روح الدعابة المحقونة وما شابه ذلك).'),
    Charity_data(
        charity_sub_category: 'روتين الجمعية',
        // charity_details_header: 'details bla bla bla',
        image: 'image',
        charity_details_body:
            'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. الهدف من استخدام لوريم إيبسوم هو أنه يحتوي على توزيع طبيعي -إلى حد ما- للأحرف ، بدلاً من استخدام "هنا يوجد محتوى نصي ، هنا يوجد محتوى نصي" ، مما يجعلها تبدو وكأنها إنجليزية قابلة للقراءة. تستخدم العديد من حزم النشر المكتبي ومحرري صفحات الويب الآن Lorem Ipsum كنموذج افتراضي للنموذج ، وسيكشف البحث عن "lorem ipsum" عن العديد من مواقع الويب التي لا تزال في مهدها. تطورت إصدارات مختلفة على مر السنين ، أحيانًا عن طريق الصدفة ، وأحيانًا عن قصد (روح الدعابة المحقونة وما شابه ذلك).'),
    // Charity_data(
    //     charity_sub_category: 'fourth category',
    //     charity_details: 'details bla bla bla bla',
    //     image: 'image'),
  ];

  static List<Branches_data> branch_data = [
    Branches_data(
      branche_name: 'فرع مدينة نصر',
      branch_details: 'Bla nasr city',
    ),
    Branches_data(
      branche_name: 'فرع التبة',
      branch_details: 'Bla tabba city',
    ),
    Branches_data(
      branche_name: 'فرع الزيتون',
      branch_details: 'Bla zatoun city',
    ),
    Branches_data(
        branche_name: 'فرع التجمع الاول',
        branch_details: 'Bla settelment city'),
    Branches_data(
        branche_name: 'فرع التجمع الثالث',
        branch_details: 'Bla settelment city'),
  ];

  static List<Charity_work_data> charity_work_data = [
    Charity_work_data(
      title: 'كفالة اليتيم',
      body: [
        'اعانات شهرية لعدد في حدود 150 اسرة (متوسط عدد الافراد 4 للاسرة) ',
        'اعانات موسمية لعدد في حدود 120 للاسرة'
      ],
    ),
    Charity_work_data(
      title: 'كفالة اليتيم',
      body: [
        'اعانات شهرية لعدد في حدود 140 اسرة (متوسط عدد الافراد 4 للاسرة) ',
        'اعانات موسمية لعدد في حدود 120 للاسرة'
      ],
    ),
    Charity_work_data(
      title: 'كفالة اليتيم',
      body: [
        'اعانات شهرية لعدد في حدود 130 اسرة (متوسط عدد الافراد 4 للاسرة) ',
        'اعانات موسمية لعدد في حدود 120 للاسرة'
      ],
    ),
    Charity_work_data(
      title: 'كفالة اليتيم',
      body: [
        'اعانات شهرية لعدد في حدود 130 اسرة (متوسط عدد الافراد 4 للاسرة) ',
        'اعانات موسمية لعدد في حدود 120 للاسرة'
      ],
    ),
    Charity_work_data(
      title: 'كفالة اليتيم',
      body: [
        'اعانات شهرية لعدد في حدود 130 اسرة (متوسط عدد الافراد 4 للاسرة) ',
        'اعانات موسمية لعدد في حدود 120 للاسرة'
      ],
    ),
    Charity_work_data(
      title: 'كفالة اليتيم',
      body: [
        'اعانات شهرية لعدد في حدود 130 اسرة (متوسط عدد الافراد 4 للاسرة) ',
        'اعانات موسمية لعدد في حدود 120 للاسرة'
      ],
    ),
    Charity_work_data(
      title: 'كفالة اليتيم',
      body: [
        'اعانات شهرية لعدد في حدود 130 اسرة (متوسط عدد الافراد 4 للاسرة) ',
        'اعانات موسمية لعدد في حدود 120 للاسرة'
      ],
    ),
    Charity_work_data(
      title: 'كفالة اليتيم',
      body: [
        'اعانات شهرية لعدد في حدود 130 اسرة (متوسط عدد الافراد 4 للاسرة) ',
        'اعانات موسمية لعدد في حدود 120 للاسرة'
      ],
    ),
    Charity_work_data(
      title: 'كفالة اليتيم',
      body: [
        'اعانات شهرية لعدد في حدود 130 اسرة (متوسط عدد الافراد 4 للاسرة) ',
        'اعانات موسمية لعدد في حدود 120 للاسرة'
      ],
    ),
    Charity_work_data(
      title: 'كفالة اليتيم',
      body: [
        'اعانات شهرية لعدد في حدود 130 اسرة (متوسط عدد الافراد 4 للاسرة) ',
        'اعانات موسمية لعدد في حدود 120 للاسرة'
      ],
    ),
    Charity_work_data(
      title: ' اليتيم',
      body: [
        'اعانات شهرية لعدد في حدود 130 اسرة (متوسط عدد الافراد 4 للاسرة) ',
        'اعانات موسمية لعدد في حدود 120 للاسرة'
      ],
    ),
  ];
}
