import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List name = [
    "SHOES",
    "T-SHIRTS",
    "TOP",
    "BLAZER",
    "HODIE",
    "JEANS",
    "COMBO",
    "JACKET",
    "SHRUG",
    "HOT WEAR",
    "WATCH",
    "SHIRT",
  ];
  List prise = [
    "30.33",
    "52.00",
    "40.00",
    "99.99",
    "70.00",
    "72.30",
    "56.27",
    "60.90",
    "90.99",
    "45.90",
    "99.99",
    "25.33",
  ];
  List star = [
    "5.0",
    "4.1",
    "4.9",
    "4.2",
    "4.7",
    "4.5",
    "4.8",
    "4.8",
    "4.2",
    "4.1",
    "4.3",
    "4.0",
  ];
  List image = [
    "assets/image/shoes.png",
    "assets/image/tshirt.png",
    "assets/image/top.png",
    "assets/image/blazer.png",
    "assets/image/hodie.png",
    "assets/image/jeans.png",
    "assets/image/combo.png",
    "assets/image/jacket.png",
    "assets/image/shrug.png",
    "assets/image/hot wear.png",
    "assets/image/watch.png",
    "assets/image/shirt.png",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "SHOPPING GALLERY UI",
            ),
            centerTitle: true,
            backgroundColor: Colors.indigoAccent.shade100,
          ),
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.blue.shade100,
                  Colors.purpleAccent.shade100,
                ]
              )
            ),
            child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisExtent: 225),itemCount: name.length, itemBuilder: (context,index){
              return Padding(
                padding: EdgeInsets.only(left: 13,right: 13,top: 15,bottom: 25),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Image.asset("${image[index]}",width: 150,),
                      ),
                      Container(
                        height: 25,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(15),bottomRight: Radius.circular(10))
                        ),
                        alignment: Alignment.center,
                        child: RichText(text: TextSpan(
                          children: [
                            TextSpan(
                              text: " ${star[index]} ",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white
                              ),
                            ),
                            TextSpan(
                              text: "★",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white
                              ),
                            ),

                          ]
                        ))
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 140),
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15))
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 155,left: 15),
                        child: Text(
                          "${name[index]}",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 155,left: 112),
                        child: Text(
                          "💲${prise[index]}",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
          ),
        )
    );
  }
  Widget size(double l)
  {
    return SizedBox(width: l);
  }
}
