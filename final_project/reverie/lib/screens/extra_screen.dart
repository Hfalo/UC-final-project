import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:reverie/models/list.dart';
import 'package:get/get.dart';
import 'package:reverie/screens/home_screen.dart';
import 'package:reverie/utilities/styles.dart';

class ExtraScreen extends StatefulWidget {
  const ExtraScreen({super.key});

  @override
  State<ExtraScreen> createState() => _ExtraScreenState();
}

class _ExtraScreenState extends State<ExtraScreen> {
  @override
var list = [
    List(
        title: "Bubble Vase",
        price: "12 KD",
        image: "https://i.pinimg.com/564x/ec/2c/75/ec2c756d5d7b98581f0cc3e118ee4afa.jpg"),

    List(
        title: "Colorful Vase",
        price: "7 KD",
        image: "https://i.pinimg.com/564x/b7/8b/d5/b78bd551cde80983095d440beb2d99b9.jpg"),
    List(
        title: "Flower Food\n Packet",
        price: "0.500 KD",
        image: "https://i.pinimg.com/474x/3c/ec/c2/3cecc2618f04dc7aa13b5067709d2c9b.jpg"),

    List(
        title: "Garden Scissors",
        price: "13 KD",
        image: "https://i.pinimg.com/474x/1f/1e/5a/1f1e5a01dffca87cc1f0853e95b33ec6.jpg"),

    List(
        title: "Herb Mist",
        price: "5 KD",
        image: "https://i.pinimg.com/474x/e5/ab/f7/e5abf7ab7097cdc10797b555f8fee741.jpg"),


  ];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        leading: BackButton(
          color: Colors.indigo[900],
          ),
        
        title: Text("Accessories",
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

  