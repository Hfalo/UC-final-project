import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reverie/models/list.dart';
import 'package:reverie/screens/home_screen.dart';
import 'package:reverie/utilities/styles.dart';

class DriedFlowersScreen extends StatefulWidget {
  const DriedFlowersScreen({super.key});

  @override
  State<DriedFlowersScreen> createState() => _DriedFlowersScreenState();
}

class _DriedFlowersScreenState extends State<DriedFlowersScreen> {

  var list = [
    List(
        title: "Dried Pampas\nGrass",
        price: "3 KD",
        image: "https://i.pinimg.com/474x/c6/48/8e/c6488e7ae0a9798b4ec633194c5400ba.jpg"),

    List(
        title: "White Bunny\nTail Grass",
        price: "4 KD",
        image: "https://i.pinimg.com/564x/0a/b2/68/0ab2682bd5eb4d956dcf2e691e55de92.jpg"),
    List(
        title: "Pink Bunny\nTail Grass",
        price: "4 KD",
        image: "https://i.pinimg.com/474x/a0/a3/d2/a0a3d22e3dd9e77ca56ad153b20bfdd2.jpg"),

    List(
        title: "Cotton",
        price: "6 KD",
        image: "https://i.pinimg.com/474x/4f/f9/05/4ff9059f4a0ea9ea3d556456cc2e12d4.jpg"),

    List(
        title: "Dried Sun\n Palm",
        price: "6 KD",
        image: "https://i.pinimg.com/474x/f5/bf/42/f5bf42db890619647cbbb86e13d02d32.jpg"),

    List(
        title: "Burgundy\nEucalyptus",
        price: "3 KD",
        image: "https://i.pinimg.com/474x/53/78/cc/5378cc1882d0c005c9774d262061ace3.jpg"),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        leading: BackButton(
          color: Colors.indigo[900],
          ),
        
        title: Text("Dried Flowers",
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
