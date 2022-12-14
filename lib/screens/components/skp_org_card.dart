import 'package:flutter/material.dart';

import '../../Utitilities/colors.dart';
import '../../Utitilities/utilites.dart';

class SkpOrgCard extends StatelessWidget {
  SkpOrgCard({super.key, required this.name});
  String name;

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
            Row(
              children: [
                Text(
                  name,
                  style: Utilities.header2(),
                ),
                SizedBox(
                  width: size.width * 0.02,
                ),
                Container(
                  padding: EdgeInsets.all(size.width * 0.02),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black87)),
                  child: Text(
                    "25",
                    style: Utilities.header1(),
                  ),
                )
              ],
            ),
            SpeakerWidget(size),
            SpeakerWidget(size),
            SpeakerWidget(size),
            Container(
              height: size.height * 0.06,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(size.width * 0.03),
                  color: Colors.black.withOpacity(0.8)),
              child: Center(
                  child: Text(
                "View all",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: size.width * 0.04,
                    fontWeight: FontWeight.w600),
              )),
            )
          ]),
    );
  }

  ListTile SpeakerWidget(Size size) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: size.width * 0.01),
      leading: CircleAvatar(
        backgroundColor: AppColor.deepColor.withOpacity(0.4),
        child: Padding(
          padding: EdgeInsets.all(size.width * 0.02),
          child: Icon(
            Icons.note_add,
            size: size.width * 0.05,
          ),
        ),
      ),
      title: Text(
        "Speaker Name",
        style: Utilities.header1(),
      ),
    );
  }
}
