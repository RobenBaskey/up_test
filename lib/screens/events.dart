import 'package:flutter/material.dart';
import 'package:up_test/Utitilities/colors.dart';
import 'package:up_test/Utitilities/utilites.dart';
import 'package:up_test/screens/components/main_card.dart';
import 'package:up_test/screens/components/skp_org_card.dart';
import 'components/time_card.dart';

class EventPage extends StatefulWidget {
  const EventPage({super.key});

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  var activeIndex = 1;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        actions: [
          TextButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.h_mobiledata,
                color: Colors.black,
              ),
              label: Text(
                "OxCF",
                style: Utilities.header1(),
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          const MainCard(),
          SizedBox(
            height: size.height * 0.02,
          ),
          Padding(
            padding: EdgeInsets.all(size.width * 0.04),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TimeCard(
                    isLading: true,
                    mainTitle: "Time",
                    title: "10 Nov 2022",
                    leading: Container(
                      decoration: BoxDecoration(
                          color: AppColor.deepColor.withOpacity(0.3),
                          borderRadius:
                              BorderRadius.circular(size.width * 0.025)),
                      height: size.width * 0.12,
                      width: size.width * 0.12,
                      child: Icon(
                        Icons.timelapse,
                        color: Colors.black54,
                        size: size.width * 0.07,
                      ),
                    ),
                    subTitle: "10AM-8PM(GMT-T)"),
                SizedBox(
                  height: size.height * 0.03,
                ),
                TimeCard(
                    isLading: false,
                    mainTitle: "Location",
                    title: "4517 Washington Area",
                    subTitle: "Manchester, Kemtucky 39495"),
                SizedBox(
                  height: size.height * 0.03,
                ),
                SkpOrgCard(name: "Speaker"),
                SizedBox(
                  height: size.height * 0.03,
                ),
                SkpOrgCard(name: "Organizer"),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Container(
                  padding: EdgeInsets.all(size.width * 0.03),
                  decoration: BoxDecoration(
                      color: AppColor.greyColor,
                      borderRadius: BorderRadius.circular(size.width * 0.03)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Description",
                          style: Utilities.header2(),
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Text(
                          "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from de Finibus Bonorum et Malorum by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham",
                          style: TextStyle(
                              fontSize: size.width * 0.035,
                              height: 1.5,
                              letterSpacing: 0.15),
                        )
                      ]),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
