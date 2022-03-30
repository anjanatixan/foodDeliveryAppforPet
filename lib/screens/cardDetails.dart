import 'package:dogsfoodapp/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CartDetails extends StatefulWidget {
  const CartDetails({Key? key}) : super(key: key);

  @override
  State<CartDetails> createState() => _CartDetailsState();
}

class _CartDetailsState extends State<CartDetails> {
  bool checkbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 260,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage("assets/images/card.png"))),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                        size: 30,
                      )),
                  const SizedBox(
                    width: 100,
                  ),
                  const Text(
                    "Add Card",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 220),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  )),
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(12.0),
                  margin: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(left: 30),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide:
                                    const BorderSide(color: Colors.white)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide:
                                    const BorderSide(color: Colors.white)),
                            filled: true,
                            fillColor: Colors.grey[100],
                            labelText: "Card Number",
                            labelStyle: const TextStyle(
                              color: Colors.black,
                            )),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2.6,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  contentPadding:
                                      const EdgeInsets.only(left: 30),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: const BorderSide(
                                          color: Colors.white)),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: const BorderSide(
                                          color: Colors.white)),
                                  filled: true,
                                  fillColor: Colors.grey[100],
                                  labelText: "Expiry Date",
                                  labelStyle: const TextStyle(
                                    color: Colors.black,
                                  )),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2.6,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  contentPadding:
                                      const EdgeInsets.only(left: 30),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: const BorderSide(
                                          color: Colors.white)),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: const BorderSide(
                                          color: Colors.white)),
                                  filled: true,
                                  fillColor: Colors.grey[100],
                                  labelText: "CVV",
                                  labelStyle: const TextStyle(
                                    color: Colors.black,
                                  )),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(left: 30),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide:
                                    const BorderSide(color: Colors.white)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide:
                                    const BorderSide(color: Colors.white)),
                            filled: true,
                            fillColor: Colors.grey[200],
                            labelText: "Name",
                            labelStyle: const TextStyle(
                              color: Colors.black,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Row(
                          children: [
                            Checkbox(
                              value: checkbox,
                              onChanged: (value) {
                                setState(() {
                                  checkbox = !checkbox;
                                });
                              },
                            ),
                            const Text('Save Card Details'),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                      buttons(text: "Add Card", onpress: () {})
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
