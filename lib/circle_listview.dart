import 'package:dogsfoodapp/petdetails.dart';
import 'package:flutter/material.dart';

class CircleListView extends StatefulWidget {
  const CircleListView({Key? key}) : super(key: key);

  @override
  State<CircleListView> createState() => _CircleListViewState();
}

class _CircleListViewState extends State<CircleListView> {
  List<Map<String, String>> petList = [
    {"image": "assets/images/cutespitz.png", "text": "Dog"},
    {"image": "assets/images/redwhite.png", "text": "Cat"},
    {"image": "assets/images/rabbit.png", "text": "Rabbit"},
    {"image": "assets/images/beeEater.png", "text": "Birds"},
    {"image": "assets/images/fish.png", "text": "Fish"}
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 120,
            child: Center(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                shrinkWrap: true,
                itemCount: petList.length,
                itemBuilder: (context, index) => circleviewlist(
                    images: petList[index]["image"].toString(),
                    imageText: petList[index]["text"].toString(),
                    context: context),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget circleviewlist(
        {required BuildContext context,
        required String images,
        required String imageText}) =>
    GestureDetector(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Petdetails())),
      child: Column(
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
      ),
    );
