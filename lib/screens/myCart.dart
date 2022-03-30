import 'package:dogsfoodapp/screens/orders.dart';
import 'package:dogsfoodapp/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'paymentScreen.dart';

class MyCart extends StatefulWidget {
  const MyCart({Key? key}) : super(key: key);

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  Color iconColor = Colors.white;
  List<Map<String, String>> orderlist = [
    {"image": "assets/images/pedigre.png", "quantity": "40 Kg Pedigree"},
    {"image": "assets/images/bowl.png", "quantity": "1 Bowl"},
  ];

  int count = 0;
  void incrementCount() {
    setState(() {
      count++;
    });
  }

  void decrementCount() {
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(children: [
                navContainer(context: context, navText: 'Cart'),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: orderlist.length,
                    itemBuilder: (context, index) => Stack(
                      alignment: Alignment.center,
                      children: [
                        OrderGridList(
                          context: context,
                          orderImage: orderlist[index]["image"].toString(),
                          quantity: orderlist[index]["quantity"].toString(),
                        ),
                        Positioned(
                            top: 10,
                            left: 0,
                            right: 60,
                            child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    iconColor = Colors.red;
                                  });
                                },
                                icon: Icon(
                                  Icons.favorite,
                                  color: iconColor,
                                  size: 20,
                                ))),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
            Positioned(
                bottom: 10,
                left: 15,
                child: Stack(
                  children: [
                    Container(
                      width: 360,
                      height: 160,
                      child: Stack(
                        children: [
                          Container(
                            width: 360,
                            height: 125,
                            decoration: BoxDecoration(
                                color: Colors.grey[100],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        "Pedigree",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "₹ 1380",
                                        style: TextStyle(fontSize: 16),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        "Bowl",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text("₹ 300",
                                          style: TextStyle(
                                            fontSize: 16,
                                          ))
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        "Delivery Charges",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "₹ 20",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Total amount",
                                        style: TextStyle(
                                            color: Colors.yellow[700],
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "₹ 1700",
                                        style: TextStyle(
                                            color: Colors.yellow[700],
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                              bottom: 20,
                              left: 70,
                              right: 70,
                              child: SizedBox(
                                  height: 40,
                                  child: buttons(
                                      text: "Pay ₹ 1700",
                                      onpress: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const PaymentScreen()));
                                      })))
                        ],
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
