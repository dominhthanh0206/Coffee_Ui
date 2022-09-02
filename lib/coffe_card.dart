import 'package:coffee_app_3/models/data.dart';
import 'package:flutter/material.dart';
import 'coffee_detail.dart';
// import 'package:coffe_app/models/coffeecard.dart';

class Cappuccino extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              capuccino.length,
              (index) => Padding(
                padding: EdgeInsets.only(right: 16),
                child: MyWidget(
                  img: capuccino[index].image,
                  des: capuccino[index].des,
                  price: capuccino[index].price,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class Lattee extends StatelessWidget {
  const Lattee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              lattee.length,
              (index) => Padding(
                padding: EdgeInsets.only(right: 16),
                child: MyWidget(
                  img: lattee[index].image,
                  des: lattee[index].des,
                  price: lattee[index].price,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
class Espresso extends StatelessWidget {
  const Espresso({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              espresso.length,
              (index) => Padding(
                padding: EdgeInsets.only(right: 16),
                child: MyWidget(
                  img: espresso[index].image,
                  des: espresso[index].des,
                  price: espresso[index].price,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}


class MyWidget extends StatelessWidget {
  const MyWidget(
      {Key? key, required this.img, required this.des, required this.price})
      : super(key: key);
  final String img, des;
  final double price;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => CoffeeDetail())),
      child: Row(
        children: [
          Container(
            // color: Colors.white,
            width: MediaQuery.of(context).size.width * 0.45,
            height: MediaQuery.of(context).size.height * 0.35,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xff242931)),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.37,
                  height: MediaQuery.of(context).size.height * 0.2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage(img), fit: BoxFit.cover)),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Cappuccino",
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        des,
                        style: const TextStyle(
                            color: Color(0xff919293), fontSize: 11),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Text(
                                r"$ ",
                                style: TextStyle(
                                    color: Color(0xffd17842),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              Text(price.toString(),
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                            ],
                          ),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: const BoxDecoration(
                                color: Color(0xffd17842),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: const Icon(Icons.add),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 20,
          )
        ],
      ),
    );
  }
}
// onTap: () => Navigator.push(
        //     context, MaterialPageRoute(builder: (context) => CoffeeDetail())),
        // child: ListView.builder(
        //   shrinkWrap: true,
        //   physics: const BouncingScrollPhysics(),
        //   scrollDirection: Axis.horizontal,
        //   itemCount: capuccino.length,
        //   itemBuilder: (context, index) {
        //     return Row(
        //       children: [
        //         Container(
        //           // color: Colors.white,
        //           width: MediaQuery.of(context).size.width * 0.45,
        //           height: MediaQuery.of(context).size.height * 0.35,
        //           decoration: BoxDecoration(
        //               borderRadius: BorderRadius.circular(20),
        //               color: Color(0xff242931)),
        //           child: Column(
        //             children: [
        //               const SizedBox(
        //                 height: 10,
        //               ),
        //               Container(
        //                 width: MediaQuery.of(context).size.width * 0.37,
        //                 height: MediaQuery.of(context).size.height * 0.2,
        //                 decoration: BoxDecoration(
        //                     borderRadius: BorderRadius.circular(20),
        //                     image: DecorationImage(
        //                         image: AssetImage(image[index]),
        //                         fit: BoxFit.cover)),
        //               ),
        //               Padding(
        //                 padding: EdgeInsets.all(15),
        //                 child: Column(
        //                   crossAxisAlignment: CrossAxisAlignment.start,
        //                   children: [
        //                     const Text(
        //                       "Cappuccino",
        //                       style: TextStyle(color: Colors.white),
        //                     ),
        //                     const SizedBox(
        //                       height: 3,
        //                     ),
        //                     Text(
        //                       ingredients[index],
        //                       style: const TextStyle(
        //                           color: Color(0xff919293), fontSize: 11),
        //                     ),
        //                     const SizedBox(
        //                       height: 5,
        //                     ),
        //                     Row(
        //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                       children: [
        //                         Row(
        //                           children: [
        //                             const Text(
        //                               r"$ ",
        //                               style: TextStyle(
        //                                   color: Color(0xffd17842),
        //                                   fontWeight: FontWeight.bold,
        //                                   fontSize: 20),
        //                             ),
        //                             Text('${price[index]}',
        //                                 style: const TextStyle(
        //                                     color: Colors.white,
        //                                     fontWeight: FontWeight.bold,
        //                                     fontSize: 20)),
        //                           ],
        //                         ),
        //                         Container(
        //                           height: 30,
        //                           width: 30,
        //                           decoration: const BoxDecoration(
        //                               color: Color(0xffd17842),
        //                               borderRadius: BorderRadius.all(
        //                                   Radius.circular(10))),
        //                           child: const Icon(Icons.add),
        //                         )
        //                       ],
        //                     )
        //                   ],
        //                 ),
        //               )
        //             ],
        //           ),
        //         ),
        //         const SizedBox(
        //           width: 20,
        //         )
        //       ],
        //     );
        //   },
        // ),