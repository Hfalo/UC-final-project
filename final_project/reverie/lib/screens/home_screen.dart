import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:reverie/screens/MUOB_screen.dart';
import 'package:reverie/screens/flower_screen.dart';
import 'package:reverie/screens/plants_screen.dart';
import 'package:reverie/screens/driedflowers_screen.dart';
import 'package:reverie/screens/extra_screen.dart';
import 'package:reverie/utilities/styles.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';



class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  //buildbutton for the categorys

  Widget buildButton({required Icon icon, required Widget click}) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      height: 70,
      width: 70,
      decoration: BoxDecoration(
      color: Colors.lightBlue[50], 
      borderRadius: BorderRadius.circular(10)),
      alignment: Alignment.topCenter,
      child: IconButton(
          icon: icon,
          onPressed: () {
            Get.to(click);
          }),
    );
  }

  //buildCard for the "popular" listview

  Widget buildCard(
      {required String name, required String price, required String image}) {
    return Container(
      width: 260,
      height: 315,
      decoration: BoxDecoration(
        color: Colors.lightBlue[50],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                print("hind");
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(27),
                child: Container(
                  alignment: Alignment.center,
                  child: Image.network(
                    image,
                    height: 255,
                    width: 250,
                  ),
                ),
              ),
            ),

            //text/rating/price inside the card

            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Text(
                name,
                style: TextStyle(
                color: Colors.indigo[900],
                fontFamily: "Italiana",
                fontWeight: FontWeight.bold,
                fontSize: 18,
                ),
              ),
            ),
            SizedBox(height: 2),

            Padding(
              padding: const EdgeInsets.only(bottom: 11),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RatingBar.builder(
                   initialRating: 3,
                   minRating: 1,
                   direction: Axis.horizontal,
                   allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 10,
                     itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                     itemBuilder: (context, _) => Icon(
                    Icons.star,
                   color: Colors.indigo[900],
                   ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                  Text(
                    price,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      //Appbar

      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            "Explore",
            style: TextStyle(
              color: Colors.indigo[900],
              fontFamily: "Italiana",
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
        centerTitle: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Icon(
              Icons.shopping_cart_checkout_outlined,
              color: Color.fromRGBO(106, 156, 253, 90),
            ),
          )
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),

      //navbar

      bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          notchMargin: 6,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: const Icon(
                  Icons.home_outlined,
                  color: Color.fromRGBO(106, 156, 253, 90),
                ),
                onPressed: () {},
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

      //icons of the categorys

      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildButton(
                    icon:
                        Icon(Icons.local_florist_outlined, color: Color.fromRGBO(106, 156, 253, 100)),
                    click: FlowerScreen()),
                buildButton(
                    icon:
                        Icon(Icons.grass_outlined, color: Color.fromRGBO(106, 156, 253, 100)),
                    click: PlantScreen()),
                buildButton(
                    icon:
                        Icon(Icons.spa_outlined, color: Color.fromRGBO(106, 156, 253, 100)),
                    click: DriedFlowersScreen()),
                buildButton(
                    icon:
                        Icon(Icons.content_cut_outlined, color: Color.fromRGBO(106, 156, 253, 100)),
                    click: ExtraScreen()),
              ],
            ),

            //"popular" text

            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 270, 0),
                    child: Text(
                      "Popular",
                      style: TextStyle(
                        color: Colors.indigo[900],
                        fontFamily: "Italiana",
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //the "popular" listview

            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(12),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                    ),
                    buildCard(
                        name: "Tuilps",
                        price: "6 KD",
                        image:
                            "https://i.pinimg.com/564x/18/a9/b8/18a9b84d1454e4f99a08acbc9a0804ee.jpg"),
                    SizedBox(width: 12),
                    buildCard(
                        name: "Hydrangea",
                        price: "10 KD",
                        image:
                            "https://i.pinimg.com/564x/13/9f/47/139f47475adacf0e2f7caf0e33455778.jpg"),
                    SizedBox(width: 12),
                    buildCard(
                        name: "Bubble Vase",
                        price: "24 KD",
                        image:
                            "https://i.pinimg.com/564x/5f/df/7a/5fdf7af07992ca4ecbfda1b64406c52b.jpg"),
                  ],
                ),
              ),
            ),

            SizedBox(height: 10),

            //Make your own bouqet section

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Color(0xFFFDEBF1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(children: [
                  // animation
                  Column(
                    children: [
                      
                      SizedBox(
                        height: 110,
                        width: 120,
                        child: Container(
                          height: 120,
                          width: 120,
                          child: Lottie.network(
                              "https://assets5.lottiefiles.com/private_files/lf30_nd7fkeod.json",
                              fit: BoxFit.cover),
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
                        Text(
                          "Feeling fancy today?",
                          style: TextStyle(
                            color: Colors.indigo[900],
                            fontFamily: "Italiana",
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "How about creating your own bouqet!",
                          style: textStyle,
                        ),
                        //change color to navy and font
                        SizedBox(height: 8),
                        Container(
                          child: ElevatedButton(
                            onPressed: () {
                              Get.to(MUOBScreen());
                            },
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(150, 20),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              backgroundColor: Color.fromRGBO(106, 156, 253, 70),
                            ),
                            child: Text("Get Started",
                                     
                           ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
