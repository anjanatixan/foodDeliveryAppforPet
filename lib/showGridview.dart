import 'package:flutter/material.dart';

class ShowGridview extends StatefulWidget {
  const ShowGridview({Key? key}) : super(key: key);

  @override
  State<ShowGridview> createState() => _ShowGridviewState();
}

class _ShowGridviewState extends State<ShowGridview> {
  List<Map<String, String>> shopList = [
    {"image": "assets/images/irinjalakuda.png", "place": "Irinjalakuda"},
    {"image": "assets/images/mapranam.png", "place": "Mapranam"},
    {"image": "assets/images/chalakudy.png", "place": "Chalakudy"},
    {"image": "assets/images/pullur.png", "place": "Pullur"},
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GridView.builder(
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 7 / 4,
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10),
          itemCount: shopList.length,
          itemBuilder: (context, index) => Container(
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: AssetImage(shopList[index]["image"].toString()),
                    fit: BoxFit.cover)),
            child: Container(
              // width: 150,
              height: 30,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15)),
                color: Color.fromARGB(255, 219, 175, 109),
              ),
              child: Center(
                  child: Text(
                shopList[index]['place'].toString(),
              )),
            ),
          ),
        ),
      ],
    );
  }
}
