import 'package:dogsfoodapp/brand_grid_view.dart';
import 'package:dogsfoodapp/navbar.dart';
import 'package:flutter/material.dart';

import 'circle_listview.dart';

import 'petdetailsGridView.dart';

class Petdetails extends StatefulWidget {
  const Petdetails({Key? key}) : super(key: key);

  @override
  State<Petdetails> createState() => _PetdetailsState();
}

class _PetdetailsState extends State<Petdetails> {
  final GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldState,
      drawer: const NavBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    color: Colors.yellow[700],
                    height: 40,
                  ),
                  Positioned(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 255, 224, 146),
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(10))),
                          child: IconButton(
                              onPressed: () {
                                _scaffoldState.currentState!.openDrawer();
                              },
                              icon: const Icon(Icons.menu))),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 255, 224, 146),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10))),
                        child: IconButton(
                            onPressed: () {}, icon: const Icon(Icons.search)),
                      )
                    ],
                  )),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const CircleListView(),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Breeds",
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    PetDetailsGrid(),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Brands",
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    BrandGridView(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
