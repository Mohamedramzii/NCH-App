// ignore_for_file: non_constant_identifier_names, camel_case_types

// class Main_Model {
//   final Categories categories;
//   // final List<Charity_Category_data> charity_Category_data;
//   Main_Model({
//     required this.categories,
//     // required this.charity_Category_data,
//   });
// }

class Category {
  final String category_name;
  final String category_icon;
  // final Widget screenPath;
  final String screenPathname;

  Category({
    required this.category_name,
    required this.category_icon,
    // required this.screenPath,
    required this.screenPathname,
  });
}

class Charity_data {
  String charity_sub_category;
  // String charity_details_header;
  String charity_details_body;
  String image;
  Charity_data({
    required this.charity_sub_category,
    // required this.charity_details_header,
    required this.charity_details_body,
    required this.image,
  });
}

class Branches_data {
  String branche_name;
  String branch_details;
  // String image;
  // String branche_number;
  // String branche_location;
  Branches_data({
    required this.branche_name,
    required this.branch_details,
  });
}

class Charity_work_data {

  String title;
  List<String> body;
  Charity_work_data({
    required this.title,
    required this.body,
  });
}
