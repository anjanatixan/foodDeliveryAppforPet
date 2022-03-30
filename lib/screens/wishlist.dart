import 'package:dogsfoodapp/widgets/widgets.dart';
import 'package:flutter/material.dart';

class WishList extends StatefulWidget {
  const WishList({Key? key}) : super(key: key);

  @override
  State<WishList> createState() => _WishListState();
}

class _WishListState extends State<WishList> {
  List<Map<String, String>> wishlist = [
    {"image": "assets/images/pedigreebrand.png", "place": "Pedigree"},
    {"image": "assets/images/bowl.png", "place": "Bowl"},
    {"image": "assets/images/pedigreebrand.png", "place": "Pedigree"},
    {"image": "assets/images/bowl.png", "place": "Bowl"},
    {"image": "assets/images/pedigreebrand.png", "place": "Pedigree"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(children: [
          navContainer(context: context, navText: 'Wishlist'),
          Padding(
            padding: const EdgeInsets.all(15),
            child: wishListGrid(),
          )
        ]),
      )),
    );
  }

  Widget wishListGrid() => GridView.builder(
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 1 / 1,
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemCount: wishlist.length,
        itemBuilder: (context, index) => Stack(
          children: [
            Container(
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                  color: Colors.yellow[700],
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: AssetImage(wishlist[index]["image"].toString()),
                      fit: BoxFit.cover)),
              child: Container(
                // width: 150,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15)),
                  color: const Color.fromARGB(255, 51, 15, 2).withOpacity(0.8),
                ),
                child: Center(
                    child: Text(
                  wishlist[index]['place'].toString(),
                  style: const TextStyle(color: Colors.white),
                )),
              ),
            ),
            Positioned(
                right: 1,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 25,
                      height: 27,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(12))),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.delete_forever_outlined,
                            size: 15,
                          )),
                    ),
                  ],
                ))
          ],
        ),
      );
}
