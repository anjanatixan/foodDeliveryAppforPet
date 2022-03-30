import 'package:dogsfoodapp/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'page2.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(child: backgroundImage(picture: "assets/images/whitecat.png")),
      Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              SingleChildScrollView(
                child: SafeArea(
                    child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white.withOpacity(0.5),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(children: [
                        const Text(
                          " Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is available. ",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            arrowIcon(ontap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Page2()));
                            }),
                          ],
                        ),
                      ])),
                )),
              )
            ])),
      )
    ]);
  }
}
