// import 'dart:html';
import 'package:flutter/material.dart';
import 'package:reverie/models/list.dart';
import 'package:reverie/screens/home_screen.dart';

class MUOBScreen extends StatefulWidget {
   MUOBScreen({super.key});

  @override
  State<MUOBScreen> createState() => _MUOBScreenState();
}

class _MUOBScreenState extends State<MUOBScreen> {

  var list = [
    List(
        title: "Pink Tulips",
        price: "6 KD",
        image: "https://i.pinimg.com/564x/18/a9/b8/18a9b84d1454e4f99a08acbc9a0804ee.jpg"),

    List(
        title: "Narcisse",
        price: "12 KD",
        image: "https://i.pinimg.com/564x/09/a2/5f/09a25f3c1d75f493aadaee94c481a055.jpg"),

    List(
        title: "Daisy",
        price: "3 KD",
        image: "https://i.pinimg.com/474x/f4/0a/ce/f40ace9dd827f3d27bbe0b4391e11bf1.jpg"),

    List(
        title: "Pink Orchids",
        price: "10 KD",
        image: "https://i.pinimg.com/474x/be/b3/78/beb378c9e1d66e7d4c6fdc3c69a30792.jpg"),

    List(
        title: "Peach Dahlia",
        price: "5 KD",
        image: "https://i.pinimg.com/564x/6b/52/ef/6b52efdf562fd430cce6b43bec382aac.jpg"),

    List(
        title: "Yellow\nSandersonia",
        price: "13 KD",
        image: "https://i.pinimg.com/564x/e9/f8/8f/e9f88f7e2e01235aafddde07aeee88b6.jpg"),

    List(
        title: "White Lilies",
        price: "16 KD",
        image: "https://i.pinimg.com/474x/d4/7e/cf/d47ecf77959a7530f8dc1964bd87ca4d.jpg"),

    List(
        title: "Blue Hydrangea",
        price: "8 KD",
        image: "https://i.pinimg.com/474x/fd/43/32/fd4332a57b9a7cfb86c690764388d96a.jpg"),
        
  ];
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: BackButton(
          color: Colors.indigo[900],
          ),
        
        title: Text("Make your own bouquet",
        style: TextStyle(
          fontFamily: "Italiana",
          color: Colors.indigo[900],
          fontWeight: FontWeight.bold,
          fontSize: 23,
        ),
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

      body:
        Padding(
        padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
        child: Container(
          height: 2000,
          child: GridView.builder(
          itemCount: list.length, 
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, 
            childAspectRatio: 0.70,
            ),

          itemBuilder: (BuildContext context, int index){
            return Column(
              children: [
                Container(
                  width: 170,
                  height: 180,
                  decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(30),
                  
                  ),
                  child: Container(
                    // decoration: BoxDecoration(
                      
                    // ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.network("${list[index].image}",
                      fit: BoxFit.cover,
                      // width: 100,
                      // height: 170,
                                    
                      ),
                    ),
                  ),
                ),

                ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("${list[index].title}",
                      ),
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                        color: Color(0xFFBED4FE),
                        borderRadius: BorderRadius.circular(5),
                        ),
                        child: Icon(Icons.add,
                        color: Color.fromRGBO(106, 156, 253, 90),
                        ),
                      ),
                    ],
                  ),
                  subtitle: Text("${list[index].price}"),
                ),
                
              ],
            );
          },
          ) ,
        ),
      ),
    );
  }
}