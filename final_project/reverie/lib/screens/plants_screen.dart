import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reverie/models/list.dart';
import 'package:get/get.dart';
import 'package:reverie/screens/flower_screen.dart';
import 'package:reverie/screens/home_screen.dart';
import 'package:reverie/utilities/styles.dart';

class PlantScreen extends StatefulWidget {
  const PlantScreen({super.key});

  @override
  State<PlantScreen> createState() => _PlantScreenState();
}

class _PlantScreenState extends State<PlantScreen> {

  var list = [
    List(
        title: "Caladium",
        price: "13 KD",
        image: "https://i.pinimg.com/474x/3e/59/9f/3e599f3e5963b85496f115b21627f19f.jpg"),

    List(
        title: "variegated\nporcelain",
        price: "20 KD",
        image: "https://i.pinimg.com/564x/57/29/f5/5729f579715f89ee701c6365814ceec2.jpg"),
    List(
        title: "Micro Lotus",
        price: "5 KD",
        image: "https://i.pinimg.com/564x/ef/fc/e4/effce4dadde8c998e8902d6adb3184d1.jpg"),

    List(
        title: "Stephania\nErecta",
        price: "10 KD",
        image: "https://i.pinimg.com/564x/48/8a/c6/488ac6afca74bd969870bb76abe744b5.jpg"),

    List(
        title: "Fiddle Leaf\nFig",
        price: "6 KD",
        image: "https://i.pinimg.com/564x/26/36/1e/26361ea26931d9717d8671910c441346.jpg"),

    List(
        title: "Heart\nSucculents",
        price: "3 KD",
        image: "https://i.pinimg.com/564x/69/87/e9/6987e91fe11fad0b1f01e0d00c63fff4.jpg"),

    List(
        title: "Pink Succulents",
        price: "3 KD",
        image: "https://i.pinimg.com/474x/59/33/c0/5933c0eca6201595d89a933ccf6f67d9.jpg"),

    List(
        title: "Cotyledon",
        price: "23 KD",
        image: "https://i.pinimg.com/564x/96/67/3a/96673a348082532284abcfd4277adada.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        leading: BackButton(
          color: Color.fromRGBO(26, 35, 126, 40),
          ),
        
        title: Text("Plants",
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
