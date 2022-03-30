import 'package:dogsfoodapp/widgets/widgets.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  List<Map<String, String>> notificationList = [
    {
      "text":
          "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus",
    },
    {
      "text":
          "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(children: [
          navContainer(context: context, navText: 'Notification'),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: notificationList.length,
                itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(15),
                      child: Card(
                          color: Colors.grey[100],
                          child: Padding(
                            padding: const EdgeInsets.all(18),
                            child: Text(
                                notificationList[index]["text"].toString()),
                          )),
                    )),
          ),
        ]),
      )),
    );
  }
}
