import 'package:flutter/material.dart';
import 'package:up_test/Utitilities/utilites.dart';

import '../../Utitilities/colors.dart';

Widget TitleCard(
    {required Size size,
    required String title,
    required int tapIndex,
    required bool isActive,
    required VoidCallback onTap}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      padding: EdgeInsets.all(size.width * 0.035),
      decoration: BoxDecoration(
          color: isActive ? Colors.white : Colors.transparent,
          borderRadius: BorderRadius.circular(size.width * 0.03)),
      child: Center(
          child: Text(
        title,
        style: TextStyle(color: isActive ? AppColor.deepColor : Colors.white),
      )),
    ),
  );
}

Widget IconTexButton(
    {required Size size, IconData? icon, required String title}) {
  return Container(
    height: size.height * 0.045,
    padding: EdgeInsets.symmetric(horizontal: size.width * 0.035),
    decoration: BoxDecoration(
        color: AppColor.greyColor.withOpacity(0.7),
        borderRadius: BorderRadius.circular(size.width * 0.06)),
    child: Row(children: <Widget>[
      icon == null
          ? SizedBox()
          : Icon(
              icon,
              size: size.height * 0.02,
              color: Colors.black,
            ),
      SizedBox(
        width: size.width * 0.01,
      ),
      Text(
        title,
        style: Utilities.header1(),
      )
    ]),
  );
}
