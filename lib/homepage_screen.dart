// import 'package:coffe_app/models/coffeecard.dart';
// import 'package:coffe_app/special.dart';
import 'package:flutter/material.dart';

import 'coffe_card.dart';
import 'special.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  late TabController tabController;
  int _selectedIndex = 0;
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 6, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(20),
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Color(0xff1b2027),
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          Icons.menu,
                          color: Colors.grey.shade500,
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.grey.shade900,
                        child: Image.asset(
                          'images/timothy-dykes-yd4ubMUNTG0-unsplash-removebg-preview.png',
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Find The Best\nCoffe for you",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    margin: const EdgeInsets.only(bottom: 6.0),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xff1b2027),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                          hintText: "Find Your Coffee",
                          prefixIcon: Icon(Icons.search),
                          border: InputBorder.none),
                    ),
                  ),
                  TabBar(
                      isScrollable: true,
                      controller: tabController,
                      labelColor: Color(0xffd17842),
                      labelStyle: TextStyle(fontWeight: FontWeight.bold),
                      unselectedLabelColor: Color.fromARGB(255, 96, 105, 118),
                      indicator: CircleTabIndicator(
                          color: Color(0xffd17842), radius: 4),
                      tabs: const [
                        Tab(
                          text: 'Cappuccino',
                        ),
                        Tab(
                          text: 'Americano',
                        ),
                        Tab(
                          text: 'Espresso',
                        ),
                        Tab(
                          text: 'Mocha',
                        ),
                        Tab(
                          text: 'Macchiato',
                        ),
                        Tab(
                          text: "Doppio",
                        ),
                      ]),
                      SizedBox(height: 10,),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height*0.35,
                        child: TabBarView(
                          controller: tabController,
                          children: [
                          Cappuccino(),
                          Lattee(),
                          Espresso(),
                          Cappuccino(),
                          Cappuccino(),
                          Cappuccino(),
                        ]),
                      ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Special for you",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  )
                ], //  CoffeeCard()
              ),
            ),
            Special()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey.shade900,
        selectedItemColor: Color(0xffd17842),
        unselectedItemColor: Color(0xff4d4f52),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.notifications),label: ""),
        ],
        currentIndex: _selectedIndex,
        onTap:  _onItemTapped,
      ),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final BoxPainter _painter;
  CircleTabIndicator({required Color color, required double radius})
      : _painter = _CirclePainter(color, radius);
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) => _painter;
}

class _CirclePainter extends BoxPainter {
  final Paint _paint;
  final double radius;
  _CirclePainter(Color color, this.radius)
      : _paint = Paint()
          ..color = color
          ..isAntiAlias = true;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    // TODO: implement paint
    final Offset circleOffset = offset +
        Offset(
            configuration.size!.width / 2, configuration.size!.height - radius);
    canvas.drawCircle(circleOffset, radius, _paint);
  }
}
