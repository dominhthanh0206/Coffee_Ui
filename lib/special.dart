import 'package:flutter/material.dart';

class Special extends StatelessWidget {
  List<String> specialImages = [
    "images/kaffebase-coffeeshop-uAx74-kc5Kw-unsplash.jpg",
    "images/coffee.jpg",
    "images/lattee.jpg"
  ];

  List<String> coffeeName = [
    "Caramel Macchiato ",
    "Turkish Coffee",
    "Cafe Cubanoi"
  ];

  List<String> ingredients = [
    "Ice, Cramel Sauce, Espresso",
    "Turkish coffee, Sugar",
    "Ground Coffee, Water"
  ];
  List<String> price = ["5.00", "7.50", "9.00"];
  // const Special({ Key? key required th }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: specialImages.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.only(left: 10),
              height: 140,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xff242931)),
              // color: Colors.white,
              child: Row(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 150,
                    height: 120,
                    decoration: BoxDecoration(
                      // color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage(specialImages[index]),
                          fit: BoxFit.cover),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        coffeeName[index],
                        style: const TextStyle(fontSize: 16),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        ingredients[index],
                        style: const TextStyle(
                            color: Color(0xff919293), fontSize: 12),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          const Text(
                            r'$ ',
                            style: TextStyle(
                                color: Color(0xffd17842),
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Text(price[index],
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20)),
                          const SizedBox(
                            width: 80,
                          ),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: const BoxDecoration(
                                color: Color(0xffd17842),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: const Icon(Icons.add, size: 20,),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
