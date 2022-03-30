import 'package:dogsfoodapp/brand_grid_view.dart';
import 'package:dogsfoodapp/circle_listview.dart';
import 'package:dogsfoodapp/navbar.dart';
import 'package:dogsfoodapp/showGridview.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldState,
      drawer: const NavBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 210,
                    decoration: BoxDecoration(
                        color: Colors.yellow[700],
                        image: const DecorationImage(
                            image: AssetImage("assets/images/grouppic.png"),
                            fit: BoxFit.cover)),
                  ),
                  Positioned(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.3),
                              borderRadius: const BorderRadius.only(
                                  bottomRight: Radius.circular(10))),
                          child: IconButton(
                              onPressed: () {
                                _scaffoldState.currentState!.openDrawer();
                              },
                              icon: const Icon(Icons.menu))),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.3),
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(10))),
                        child: IconButton(
                            onPressed: () {}, icon: const Icon(Icons.search)),
                      )
                    ],
                  )),
                ],
              ),
              const SizedBox(height: 8),
              const CircleListView(),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Brands",
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 15),
                    BrandGridView(),
                    SizedBox(height: 15),
                    Text(
                      "Shops",
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 15),
                    ShowGridview(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
