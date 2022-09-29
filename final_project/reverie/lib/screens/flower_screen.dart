import 'dart:ui';
import 'package:reverie/utilities/styles.dart';
import 'package:flutter/material.dart';
import 'package:reverie/models/list.dart';
import 'package:get/get.dart';
import 'package:reverie/screens/home_screen.dart';


class FlowerScreen extends StatefulWidget {
  FlowerScreen({super.key});

  @override
  State<FlowerScreen> createState() => _FlowerScreenState();
}

//change font

class _FlowerScreenState extends State<FlowerScreen> {
  var list = [
    List(
        title: "Pastel Bouquet",
        price: "15 KD",
        image: "https://i.pinimg.com/564x/04/cc/8d/04cc8dec115f3985aa36a6ae43657d9a.jpg"),

    List(
        title: "Purple Orchids",
        price: "7 KD",
        image: "https://i.pinimg.com/564x/29/fa/a4/29faa492e9284b6e52460adbafeac2ec.jpg"),
    List(
        title: "Pink Baby Rose",
        price: "10 KD",
        image: "https://i.pinimg.com/564x/4d/58/39/4d58396ad5473da5b1df1b66f593458f.jpg"),

    List(
        title: "Fall Bouquet",
        price: "20 KD",
        image: "https://i.pinimg.com/564x/d8/22/91/d8229186d6513fd8c8a0490d3a95435f.jpg"),

    List(
        title: "Daisy's\nBouquet",
        price: "15 KD",
        image: "https://i.pinimg.com/564x/71/cf/e7/71cfe775a444fb3ecd48f646a9c3aa0c.jpg"),

    List(
        title: "Blue Tulips",
        price: "12 KD",
        image: "https://i.pinimg.com/564x/aa/71/ed/aa71ed1a779971c5d44b2633be9e787e.jpg"),

    List(
        title: "Peony",
        price: "6 KD",
        image: "https://i.pinimg.com/564x/c4/ea/b6/c4eab6980aba1653ee05c38950a7435c.jpg"),

    List(
        title: "Peachy\nBouquet",
        price: "25 KD",
        image: "https://i.pinimg.com/736x/cf/e4/31/cfe43162c8a02c5b2c98a7e0b5094e4d.jpg"),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        leading: BackButton(
          color: Colors.indigo[900],
          ),
       
        title: Text("Flowers",
        style: cattitleStyle,
      ),
      centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),

      bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          notchMargin: 6,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: const Icon(
                  Icons.home_outlined,
                  color: Color.fromRGBO(26, 35, 126, 40),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation1, animation2) =>
                          HomeScreen(),
                      transitionDuration: Duration.zero,
                      reverseTransitionDuration: Duration.zero,
                    ),
                  );
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.favorite_outline_rounded,
                  //change icon
                  color: Color.fromRGBO(26, 35, 126, 40),
                  
                ),
                onPressed: () {
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.person_outline_rounded,
                  color: Color.fromRGBO(26, 35, 126, 40),
                ),
                onPressed: () {
                },
              ),
            ],
          )
        ),

      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
        child: ListView.builder(
            itemCount: list.length,
            itemBuilder: ((context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.lightBlue[50],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 100,
                            child: Container(
                              height: 120,
                              width: 120,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network("${list[index].image}",
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(
                        width: 20,
                      ),


                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "${list[index].title}",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  "${list[index].price}",
                                  style: TextStyle(
                                    //fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),


                            
                            SizedBox(height: 8),
                            Row(
                              children: [
                                Container(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      
                                    },
                                    style: ElevatedButton.styleFrom(
                                      fixedSize: Size(110, 10),
                                      backgroundColor: Color.fromRGBO(106, 156, 253, 70),
                                      
                                    ),
                                    child: Text("Add to Cart"),
                                  ),
                                  //add fav button next to add to cart
                                ),

                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left:15),
                                    child: IconButton(
                                      onPressed: () {
                                        
                                      },
                                      
                                      icon: Icon(Icons.favorite_outline_rounded,
                                            color: Colors.indigo[900],
                                      ),
                                    ),
                                  ),
                               ), 
                              ],
                            ),
                          ],
                        ),
                      ),
                     ]
                    ),
                  ),
                ),
              );
            }
          )
        ),
      ),
    );
  }
}
