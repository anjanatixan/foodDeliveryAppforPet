import 'package:dogsfoodapp/brandDetails.dart';
import 'package:flutter/material.dart';

class BrandGridView extends StatefulWidget {
  const BrandGridView({Key? key}) : super(key: key);

  @override
  State<BrandGridView> createState() => _BrandGridViewState();
}

class _BrandGridViewState extends State<BrandGridView> {
  List<Map<String, String>> brandList = [
    {"image": "assets/images/pedigree.png"},
    {"image": "assets/images/drools.png"},
    {"image": "assets/images/royal.png"},
    {"image": "assets/images/hills.png"},
    {"image": "assets/images/canine.png"},
    {"image": "assets/images/acana.png"},
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
            itemCount: brandList.length,
            itemBuilder: (context, index) => GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BrandDetails())),
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image:
                              AssetImage(brandList[index]["image"].toString()),
                        )),
                  ),
                )),
      ],
    );
  }
}
