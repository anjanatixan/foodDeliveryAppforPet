import 'package:dogsfoodapp/screens/addLocation.dart';
import 'package:dogsfoodapp/screens/cardDetails.dart';
import 'package:dogsfoodapp/screens/home.dart';
import 'package:dogsfoodapp/screens/myCart.dart';
import 'package:dogsfoodapp/screens/myProfile.dart';
import 'package:dogsfoodapp/screens/notification.dart';
import 'package:dogsfoodapp/screens/orders.dart';
import 'package:dogsfoodapp/screens/wishlist.dart';
import 'package:dogsfoodapp/widgets/widgets.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.center,
                colors: [
              Color.fromARGB(255, 245, 217, 145),
              Color.fromARGB(255, 179, 178, 178)
            ])),
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Stack(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.close)),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: ListView(
                  children: [
                    navWidget(
                        text: "Home",
                        icon: Icons.home_outlined,
                        ontap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Home()));
                        }),
                    navWidget(
                        text: "Wishlist",
                        icon: Icons.favorite_border,
                        ontap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const WishList()));
                        }),
                    navWidget(
                        text: "My Order",
                        icon: Icons.list_alt_sharp,
                        ontap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Orders()));
                        }),
                    navWidget(
                        text: "My Profile",
                        icon: Icons.person_outline,
                        ontap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MyProfile()));
                        }),
                    navWidget(
                        text: "My Cart",
                        icon: Icons.shopping_cart_outlined,
                        ontap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MyCart()));
                        }),
                    navWidget(
                        text: "Notification",
                        icon: Icons.notification_add_outlined,
                        ontap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const NotificationScreen()));
                        }),
                    navWidget(
                        text: "Add Location",
                        icon: Icons.location_on_outlined,
                        ontap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const LocationScreen()));
                        }),
                    navWidget(
                        text: "Card Details",
                        icon: Icons.payment,
                        ontap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const CartDetails()));
                        }),
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
