import 'package:flutter/material.dart';

import '../../Utitilities/colors.dart';
import '../../Utitilities/utilites.dart';

class TimeCard extends StatelessWidget {
  TimeCard(
      {super.key,
      required this.isLading,
      required this.mainTitle,
      required this.title,
      this.leading,
      required this.subTitle});

  bool isLading;
  String mainTitle, title, subTitle;
  Widget? leading;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(size.width * 0.03),
      decoration: BoxDecoration(
          color: AppColor.greyColor,
          borderRadius: BorderRadius.circular(size.width * 0.03)),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              mainTitle,
              style: Utilities.header2(),
            ),
            SizedBox(
              height: size.width * 0.03,
            ),
            ListTile(
              contentPadding: EdgeInsets.all(0),
              leading: leading,
              title: Text(
                title,
                style: Utilities.header2(),
              ),
              subtitle: Text(
                subTitle,
                style: Utilities.header1(),
              ),
              trailing: isLading
                  ? const SizedBox()
                  : Container(
                      decoration: BoxDecoration(
                          color: AppColor.deepColor,
                          borderRadius:
                              BorderRadius.circular(size.width * 0.025)),
                      height: size.width * 0.12,
                      width: size.width * 0.12,
                      child: Icon(
                        Icons.map,
                        color: Colors.white.withOpacity(0.7),
                        size: size.width * 0.07,
                      ),
                    ),
            )
          ]),
    );
  }
}
