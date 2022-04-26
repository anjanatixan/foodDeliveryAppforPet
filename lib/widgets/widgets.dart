import 'package:flutter/material.dart';

Widget backgroundImage({required String picture}) => Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(picture), fit: BoxFit.cover),
      ),
    );

Widget buttons({required String text, required VoidCallback onpress}) =>
    SizedBox(
      height: 35,
      width: 200,
      child: ElevatedButton(
        onPressed: onpress,
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
        style: ElevatedButton.styleFrom(primary: Colors.yellow[800]),
      ),
    );

Widget arrowIcon({required VoidCallback ontap}) => IconButton(
    onPressed: ontap,
    icon: const Padding(
      padding: EdgeInsets.all(15.0),
      child: Icon(
        Icons.arrow_forward_ios_rounded,
        color: Colors.black,
        size: 30,
      ),
    ));

Widget navWidget(
        {required String text,
        required IconData icon,
        required VoidCallback ontap}) =>
    ListTile(
      leading: Icon(
        icon,
        color: Colors.white,
        size: 25,
      ),
      title: Text(
        text,
        style: const TextStyle(
            color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
      ),
      onTap: ontap,
    );

Widget navContainer({required BuildContext context, required String navText}) =>
    Stack(
      alignment: Alignment.centerLeft,
      children: [
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          height: 70,
          decoration: BoxDecoration(
              color: Colors.yellow[700],
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25))),
          child: Text(
            navText,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
        Positioned(
            child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.arrow_back_ios_new)))
      ],
    );

Widget paymentCards(
        {required String text,
        required String cardImg,
        required VoidCallback ontap}) =>
    ListTile(
      leading: SizedBox(
        width: 20,
        height: 20,
        child: Image.asset(cardImg),
      ),
      title: Text(
        text,
      ),
      onTap: ontap,
    );

Widget circleviewlist(
        {required BuildContext context,
        required String images,
        required String imageText}) =>
    Column(
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Icon(Icons.circle, color: Colors.yellow[700], size: 85),
                const Icon(Icons.circle, color: Colors.white, size: 80),
                Icon(Icons.circle, color: Colors.yellow[700], size: 76),
                Positioned(
                    bottom: 2,
                    child: Container(
                      width: 90,
                      height: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                        images,
                      ))),
                    ))
              ],
            ),
          ],
        ),
        Text(imageText),
      ],
    );
