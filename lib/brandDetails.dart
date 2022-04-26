import 'package:dogsfoodapp/widgets/widgets.dart';
import 'package:flutter/material.dart';

class BrandDetails extends StatefulWidget {
  const BrandDetails({Key? key}) : super(key: key);

  @override
  State<BrandDetails> createState() => _BrandDetailsState();
}

class _BrandDetailsState extends State<BrandDetails> {
  String? choosevalue;
  List<String> quantity = ["10Kg", "20Kg", "30Kg", "40Kg"];
  List<String> age = ["3 months", "6 months", "10 months", "12 months"];
  List<String> size = ["1.5", "2", "2.5", "3"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.arrow_back_ios_new_rounded)),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.favorite_border))
              ],
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.yellow[700],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    width: 352,
                    height: 406,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage("assets/images/pedigreebrand.png"))),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  dropdownbuttons(quantity),
                  const SizedBox(
                    width: 11,
                  ),
                  dropdownbuttons(age),
                  const SizedBox(
                    width: 11,
                  ),
                  dropdownbuttons(size),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Pedigree",
                        style: TextStyle(fontSize: 22),
                      ),
                      Text("₹1380", style: TextStyle(fontSize: 22))
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea",
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            buttons(text: "Add to Cart", onpress: () {})
          ],
        ),
      ),
    );
  }

  Widget dropdownbuttons(List listname) => Container(
        width: 110,
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
                color: const Color.fromARGB(255, 250, 191, 44), width: 2)),
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            items: listname.map((valueItem) {
              return DropdownMenuItem(
                value: valueItem,
                child: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(valueItem),
                ),
              );
            }).toList(),
            value: listname[0],
            onChanged: (newValue) {
              setState(() {
                choosevalue = newValue.toString();
              });
            },
          ),
        ),
      );
}
