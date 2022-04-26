import 'package:dogsfoodapp/brand_grid_view.dart';
import 'package:dogsfoodapp/petdetails.dart';
import 'package:dogsfoodapp/petdetailsGridView.dart';
import 'package:dogsfoodapp/showGridview.dart';
import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

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

  int indexnum = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        //height: 200,
        child: Center(
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 110,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  shrinkWrap: true,
                  itemCount: petList.length,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        indexnum = index;
                        indexnum == 0
                            ? Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Petdetails(
                                          indexOf: index,
                                        )))
                            : const SizedBox();
                      });
                    },
                    child: circleviewlist(
                        images: petList[index]["image"].toString(),
                        imageText: petList[index]["text"].toString(),
                        context: context),
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.all(12),
              //   child: indexnum == 0 ? BrandGridView() : SizedBox(),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
