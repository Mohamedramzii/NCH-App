import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../App/app_manager/fonts_manager.dart';

class Custom_ListTile_widget extends StatelessWidget {
  final String text;
  const Custom_ListTile_widget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: ListTile(
                leading: const Icon(Icons.circle, color: Colors.black),
                title: Text(
                 text,
                  style: Font_manager().getRegularText(),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                  size: 20.sp,
                ),
                contentPadding: const EdgeInsets.all(8),
              ),
            );
  }
}
