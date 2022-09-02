// import 'package:flutter/material.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CoffeeDetail extends StatelessWidget {
  const CoffeeDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.55,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "images/tyler-nix-nwdtkFzDfPY-unsplash.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height / 2.6,
                    child: BlurryContainer(
                      padding: EdgeInsets.all(20),
                      height: MediaQuery.of(context).size.height,
                      blur: 30,
                      width: MediaQuery.of(context).size.width * 0.974,
                      // borderRadius: BorderRadius.only(
                      //     topLeft: Radius.circular(30),
                      //     topRight: Radius.circular(30),
                      //     bottomLeft: Radius.circular(25)),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Capuchino",
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'With oat milk',
                                style: TextStyle(
                                    color: Colors.grey.shade500, fontSize: 14),
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: const [
                                  // SvgPicture.asset("images/star.svg", width: 120,)
                                  Icon(
                                    Icons.star_rounded,
                                    color: Color(0xffd17842),
                                  ),
                                  Text(" 4.5",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20)),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    "(6.983)",
                                    style: TextStyle(color: Color(0xff919296)),
                                  )
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 70,
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height:
                                        MediaQuery.of(context).size.height / 17,
                                    // height: 42,
                                    width: 42,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Color(0xff101419),
                                    ),
                                    // MediaQuery.of(context).size.width,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset(
                                          "images/coffee-beans.svg",
                                          color: Color(0xffd17842),
                                          height: 20,
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        const Text("Coffee",
                                            style: TextStyle(
                                                color: Color(0xff919296),
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  Container(
                                    height:
                                        MediaQuery.of(context).size.height / 17,
                                    // height: 42,
                                    width: 42,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Color(0xff101419),
                                    ),
                                    // MediaQuery.of(context).size.width,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset(
                                          "images/water-drop.svg",
                                          color: const Color(0xffd17842),
                                          height: 20,
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        const Text("Milk",
                                            style: TextStyle(
                                                color: Color(0xff919296),
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 37,
                                width: 120,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: const Color(0xff101419),
                                ),
                                child: Text(
                                  "Medium Roasted",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey.shade400),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Decription',
                      style:
                          TextStyle(fontSize: 18, color: Colors.grey.shade400),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      "A cappuccino is a coffee-based drink made primarily from espresso and milk.",
                      style: TextStyle(color: Color(0xff919296), fontSize: 15),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Text(
                      "Size",
                      style:
                          TextStyle(fontSize: 18, color: Colors.grey.shade400),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 37,
                          width: 110,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Color(0xffd17842)),
                          ),
                          child: const Center(
                            child: Text("S",
                                style: TextStyle(
                                  color: Color(0xff919296),
                                  fontSize: 18,
                                )),
                          ),
                        ),
                        SizedBox(width: 15),
                        Container(
                          height: 37,
                          width: 110,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Color(0xff919296)),
                          ),
                          child: const Center(
                            child: Text("M",
                                style: TextStyle(
                                  color: Color(0xff919296),
                                  fontSize: 18,
                                )),
                          ),
                        ),
                        SizedBox(width: 15),
                        Container(
                          height: 37,
                          width: 110,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Color(0xff919296)),
                          ),
                          child: const Center(
                            child: Text("L",
                                style: TextStyle(
                                  color: Color(0xff919296),
                                  fontSize: 18,
                                )),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    const Text('Price',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xff919296),
                          fontSize: 18,
                        )),
                   
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [
                            Text(
                              r"$ ",
                              style: TextStyle(
                                  color: Color(0xffd17842),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            Text(
                              '4.20',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                        ButtonTheme(
                          minWidth: 200,
                          height: 48,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            onPressed: () {},
                            color: Color(0xffd17842),
                            child: const Text(
                              "Buy Now",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                        )
                      ],
                    ),
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
