import 'package:flutter/material.dart';

class PetDetailsGrid extends StatefulWidget {
  const PetDetailsGrid({Key? key}) : super(key: key);

  @override
  State<PetDetailsGrid> createState() => _PetDetailsGridState();
}

class _PetDetailsGridState extends State<PetDetailsGrid> {
  List<Map<String, String>> petList = [
    {"image": "assets/images/pug.png", "name": "Pug"},
    {"image": "assets/images/Shih Tzu.png", "name": "Shih Tzu"},
    {"image": "assets/images/Husky.png", "name": "Husky"},
    {"image": "assets/images/Pomeranian.png", "name": "Pomeranian"},
    {"image": "assets/images/Beagle.png", "name": "Beagle"},
    {"image": "assets/images/Daschund.png", "name": "Daschund"},
    {"image": "assets/images/Pit Bull.png", "name": "Pit Bull"},
    {"image": "assets/images/German Shepherd.png", "name": "German"},
    {"image": "assets/images/Rajapalayam.png", "name": "Rajapalayam"},
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GridView.builder(
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, crossAxisSpacing: 20, mainAxisSpacing: 20),
            itemCount: petList.length,
            itemBuilder: (context, index) => Container(
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage(
                          petList[index]["image"].toString(),
                        ),
                        fit: BoxFit.cover,
                      )),
                  child: Container(
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15)),
                      color: Colors.white.withOpacity(0.5),
                    ),
                    child: Center(
                        child: Text(
                      petList[index]['name'].toString(),
                    )),
                  ),
                )),
      ],
    );
  }
}
