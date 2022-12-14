import 'package:flutter/material.dart';
import 'package:up_test/screens/components/title_card.dart';

import '../../Utitilities/colors.dart';
import '../../Utitilities/utilites.dart';

class MainCard extends StatefulWidget {
  const MainCard({super.key});

  @override
  State<MainCard> createState() => _MainCardState();
}

class _MainCardState extends State<MainCard> {
  var activeIndex = 1;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.35,
      color: AppColor.mainColor,
      padding: EdgeInsets.all(size.width * 0.02),
      child: Column(children: <Widget>[
        Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                )),
            Expanded(
                child: Center(
              child: Text(
                "Event Name",
                style: Utilities.header3(),
              ),
            )),
            PopupMenuButton(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0))),
              itemBuilder: (context) => [
                IconWithText(icon: Icons.edit, title: "Edit"),
                IconWithText(icon: Icons.note, title: "Preview"),
                IconWithText(icon: Icons.mail, title: "Mailing"),
                IconWithText(icon: Icons.code, title: "Embad Code"),
                IconWithText(icon: Icons.copy, title: "Copy URL"),
                IconWithText(icon: Icons.delete, title: "Delete"),
              ],
              child: CircleAvatar(
                backgroundColor: AppColor.greyColor,
                child: const Icon(Icons.more_horiz),
              ),
            ),
          ],
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
        Container(
          padding: EdgeInsets.all(size.width * 0.01),
          decoration: BoxDecoration(
              color: AppColor.deepColor,
              borderRadius: BorderRadius.circular(size.width * 0.03)),
          child: Row(children: <Widget>[
            Expanded(
                child: TitleCard(
                    size: size,
                    title: "Event Info",
                    tapIndex: 1,
                    isActive: activeIndex == 1,
                    onTap: () {
                      setState(() {
                        activeIndex = 1;
                      });
                    })),
            Expanded(
                child: TitleCard(
                    size: size,
                    title: "Analytics",
                    tapIndex: 2,
                    isActive: activeIndex == 2,
                    onTap: () {
                      setState(() {
                        activeIndex = 2;
                      });
                    })),
            Expanded(
                child: TitleCard(
                    size: size,
                    title: "Attendences",
                    tapIndex: 3,
                    isActive: activeIndex == 3,
                    onTap: () {
                      setState(() {
                        activeIndex = 3;
                      });
                    }))
          ]),
        ),
        const Expanded(child: Icon(Icons.image)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconTexButton(size: size, title: "On Sole"),
            IconTexButton(size: size, title: "231", icon: Icons.remove_red_eye),
            IconTexButton(size: size, title: "75/150", icon: Icons.note)
          ],
        )
      ]),
    );
  }

  PopupMenuItem IconWithText({required String title, required IconData icon}) {
    return PopupMenuItem(
      child: ListTile(
        contentPadding: EdgeInsets.all(0),
        horizontalTitleGap: 0,
        leading: Icon(
          icon,
          color: Colors.black87,
        ),
        title: Text(title),
      ),
    );
  }
}
