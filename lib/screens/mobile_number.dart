import 'package:dogsfoodapp/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'otp_screen.dart';

class MobileNumberScreen extends StatefulWidget {
  const MobileNumberScreen({Key? key}) : super(key: key);

  @override
  State<MobileNumberScreen> createState() => _MobileNumberScreenState();
}

class _MobileNumberScreenState extends State<MobileNumberScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      backgroundImage(picture: "assets/images/blackdog.png"),
      Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SingleChildScrollView(
                  child: SafeArea(
                      child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black.withOpacity(0.3),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 38,
                        child: TextFormField(
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white.withOpacity(0.0))),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white.withOpacity(0.0))),
                              filled: true,
                              fillColor: Colors.white.withOpacity(0.4),
                              labelText: "Mobile Number",
                              labelStyle: const TextStyle(
                                  color: Colors.white, fontSize: 12)),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      buttons(
                          text: "Next",
                          onpress: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const OtpScreen()));
                          })
                    ],
                  ),
                ),
              ))),
              const SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    ]);
  }
}
