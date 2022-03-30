import 'package:dogsfoodapp/screens/cardDetails.dart';
import 'package:dogsfoodapp/widgets/widgets.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  List<Map<String, String>> cardsList = [
    {"image": "assets/images/paypal.png"},
    {"image": "assets/images/mastercard.png"},
  ];
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
              decoration: BoxDecoration(
                color: Colors.yellow[700],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 10),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                        size: 25,
                      )),
                  const SizedBox(
                    width: 65,
                  ),
                  const Text(
                    "Payment Method",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 170),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  )),
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Stack(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 50, left: 15, right: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Text(
                              "Other Payment Methods",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          paymentCards(
                            text: "Credit / Debit Card",
                            cardImg: 'assets/images/credit-card.png',
                            ontap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const CartDetails()));
                            },
                          ),
                          paymentCards(
                              text: "GoogleWallet",
                              cardImg: 'assets/images/wallet.png',
                              ontap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const CartDetails()));
                              }),
                          paymentCards(
                              text: "amazonPay",
                              cardImg: 'assets/images/amazonepay.png',
                              ontap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const CartDetails()));
                              }),
                          paymentCards(
                              text: "Google Pay",
                              cardImg: 'assets/images/gpay.png',
                              ontap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const CartDetails()));
                              }),
                          paymentCards(
                              text: "PhonePee",
                              cardImg: 'assets/images/phonepay.png',
                              ontap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const CartDetails()));
                              }),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 100),
              child: Stack(
                children: [
                  Card(
                    margin: const EdgeInsets.all(13.0),
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      height: 110,
                      width: 68,
                      alignment: Alignment.center,
                      child:
                          IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                    ),
                  ),
                  Container(
                    height: 135,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 100),
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(
                              parent: AlwaysScrollableScrollPhysics()),
                          shrinkWrap: true,
                          itemCount: cardsList.length,
                          itemBuilder: (context, index) => Card(
                            margin: const EdgeInsets.all(13.0),
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Container(
                              height: 120,
                              width: 200,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        cardsList[index]["image"].toString()),
                                  )),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
