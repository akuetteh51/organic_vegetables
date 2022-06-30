import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Container(
              height: 34,
              width: MediaQuery.of(context).size.width / 1.4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
            ),
            actions: [Icon(Icons.notifications)],
            backgroundColor: Color(0xff96FC8E),
            shadowColor: Colors.transparent,
          ),
          bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.white,
              selectedItemColor: Colors.grey,
              unselectedItemColor: Colors.grey.withOpacity(.60),
              selectedFontSize: 14,
              unselectedFontSize: 14,
              onTap: (value) {
                // Respond to item press.
              },
              items: [
                BottomNavigationBarItem(
                  label: "HOME",
                  icon: Icon(Icons.home),
                ),
                BottomNavigationBarItem(
                  label: "CATEGORIES",
                  icon: Icon(
                    Icons.category_rounded,
                  ),
                ),
                BottomNavigationBarItem(
                  label: "PROFILE",
                  icon: Icon(Icons.person),
                ),
                BottomNavigationBarItem(
                    label: "WISHLIST",
                    icon: Icon(
                      Icons.favorite,
                    )),
                BottomNavigationBarItem(
                  label: "CART",
                  icon: Icon(Icons.add_shopping_cart_outlined),
                ),
              ]),
          body: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  "assets/screen.png",
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                left: 18,
                top: 55,
                child: Container(
                  child: Image.asset("assets/food.png"),
                ),
              ),
              Positioned(
                top: 210,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 80.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            child: Image.asset(
                              "assets/fruit.png",
                            ),
                          ),
                          Text("Fruit")
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 60.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            child: Image.asset("assets/vegetable.png"),
                          ),
                          Text("Vegetables")
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          child: Image.asset("assets/shalot.png"),
                        ),
                        Text("Sprouts")
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                top: 279,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 2.0),
                        child: Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey)),
                            width: 340,
                            child: Row(
                              children: [
                                Stack(children: [
                                  Positioned(
                                      child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 1.0, right: 10),
                                    child: Image.asset("assets/noni.png"),
                                  )),
                                  Positioned(
                                      left: 60,
                                      bottom: 50,
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.favorite_border,
                                            color: Colors.red,
                                          )))
                                ]),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Noni Fruit",
                                      textAlign: TextAlign.end,
                                    ),
                                    Text("lorem Ipsunm is simply "),
                                    Container(
                                      padding:
                                          EdgeInsets.only(left: 12, right: 12),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.grey),
                                      child: Row(
                                        children: [
                                          Text("1 Kg"),
                                          Icon(Icons.arrow_drop_down_rounded),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text("Rs. 45.00/-"),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text("MRP-Rs. 45.00/-")
                                      ],
                                    )
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    IconButton(
                                      padding: EdgeInsets.all(1),
                                      onPressed: () {},
                                      icon: Icon(Icons.add_circle),
                                      color: Colors.green.shade400,
                                    ),
                                    Text("0"),
                                    IconButton(
                                        padding: EdgeInsets.all(1),
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.remove_circle,
                                          color: Colors.red,
                                        ))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
