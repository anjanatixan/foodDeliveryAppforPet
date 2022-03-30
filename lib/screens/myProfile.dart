import 'package:dogsfoodapp/widgets/widgets.dart';
import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(children: [
          navContainer(context: context, navText: 'Profile'),
          Stack(
            alignment: Alignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      margin:
                          const EdgeInsets.only(top: 100, left: 15, right: 15),
                      width: 367,
                      height: 385,
                      decoration: BoxDecoration(
                          color: Colors.yellow[700],
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Positioned(
                      top: 20,
                      child: Stack(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                const CircleAvatar(
                                  radius: 70,
                                  backgroundImage: AssetImage(
                                    "assets/images/profile.png",
                                  ),
                                ),
                                Positioned(
                                    bottom: 1,
                                    right: -5,
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.add_circle,
                                          color: Colors.white,
                                          size: 20,
                                        ))),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 80,
                ),
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(left: 40),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.white.withOpacity(0.0))),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.white.withOpacity(0.0))),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.5),
                          labelText: "Name",
                          labelStyle: const TextStyle(
                              color: Colors.white, fontSize: 18)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(left: 40),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.white.withOpacity(0.0))),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.white.withOpacity(0.0))),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.5),
                          labelText: "Mobile Number",
                          labelStyle: const TextStyle(
                              color: Colors.white, fontSize: 18)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 480),
                child: SizedBox(
                  width: 150,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.black,
                      padding: const EdgeInsets.all(10),
                      textStyle: const TextStyle(fontSize: 15),
                    ),
                    child: const Text('Save', textAlign: TextAlign.center),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ]),
      )),
    );
  }
}
