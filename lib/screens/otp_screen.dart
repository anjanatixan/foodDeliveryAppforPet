import 'package:dogsfoodapp/screens/page1.dart';
import 'package:dogsfoodapp/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pin_put/pin_put.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final FocusNode _pinOTPCodeFocus = FocusNode();

  final BoxDecoration pinOtpDecoration = BoxDecoration(
      color: Colors.white.withOpacity(0.0),
      borderRadius: BorderRadius.circular(10.0),
      boxShadow: [
        BoxShadow(
          color: Colors.white.withOpacity(0.5),
          // blurRadius: 2.0,
        ),
      ]);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        backgroundImage(picture: "assets/images/clittledog.png"),
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
                    color: Colors.black.withOpacity(0.4),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        const Text(
                          "OTP",
                          style: TextStyle(color: Colors.white),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 60, right: 60, bottom: 16, top: 8),
                          child: PinPut(
                              fieldsCount: 4,
                              textStyle: const TextStyle(
                                  fontSize: 25, color: Colors.black),
                              eachFieldWidth: 40.0,
                              eachFieldHeight: 50.0,
                              focusNode: _pinOTPCodeFocus,
                              submittedFieldDecoration: pinOtpDecoration,
                              selectedFieldDecoration: pinOtpDecoration,
                              followingFieldDecoration: pinOtpDecoration,
                              pinAnimationType: PinAnimationType.rotation,
                              onSubmit: (pin) async {}),
                        ),
                        buttons(
                            text: "Confirm",
                            onpress: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Page1()));
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
      ],
    );
  }
}
