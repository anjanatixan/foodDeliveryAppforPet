import 'package:dogsfoodapp/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  List<Map<String, String>> orderlist = [
    {"image": "assets/images/pedigre.png", "quantity": "40 Kg Pedigree"},
    {"image": "assets/images/bowl.png", "quantity": "1 Bowl"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  navContainer(context: context, navText: 'Orders'),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const ScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount: orderlist.length,
                      itemBuilder: (context, index) => OrderGridList(
                        context: context,
                        orderImage: orderlist[index]["image"].toString(),
                        quantity: orderlist[index]["quantity"].toString(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OrderGridList extends StatefulWidget {
  const OrderGridList(
      {Key? key,
      required BuildContext context,
      required this.orderImage,
      required this.quantity})
      : super(key: key);

  final String orderImage;
  final String quantity;
  @override
  State<OrderGridList> createState() => _OrderGridListState();
}

class _OrderGridListState extends State<OrderGridList> {
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
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Stack(
        children: [
          Container(
              width: MediaQuery.of(context).size.width - 20,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      color: const Color.fromARGB(255, 251, 192, 45)
                          .withOpacity(0.2),
                      width: 1),
                  borderRadius: BorderRadius.circular(7),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0.0, 0.75),
                        color: Colors.grey.withOpacity(0.1),
                        blurRadius: 8,
                        spreadRadius: 2)
                  ]),
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      Container(
                        height: 180,
                        width: 160,
                        decoration: BoxDecoration(
                          color: Colors.yellow[700],
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Positioned(
                          child: Container(
                        alignment: Alignment.bottomCenter,
                        height: 180,
                        width: 160,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(widget.orderImage),
                                fit: BoxFit.cover)),
                      )),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.quantity,
                      style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Colors.black),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.amber),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(5))),
                            child: Center(
                              child: IconButton(
                                  onPressed: () => incrementCount(),
                                  icon: const Icon(
                                    Icons.add,
                                    size: 15,
                                  )),
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        Text("${count}"),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                            alignment: Alignment.center,
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.amber),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(5))),
                            child: Center(
                              child: IconButton(
                                onPressed: () {
                                  decrementCount();
                                },
                                icon: const Icon(
                                  Icons.remove,
                                  size: 15,
                                ),
                              ),
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    const Text("₹ 300")
                  ],
                )
              ])),
          Positioned(
              right: 1,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 25,
                    height: 27,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.1),
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
}
