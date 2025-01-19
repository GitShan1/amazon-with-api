import 'package:untitled/pagetwo.dart';
import 'package:untitled/things.dart';
import 'package:untitled/things.dart.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class rough extends StatefulWidget {
  const rough({super.key});

  @override
  State<rough> createState() => _sadState();
}

class _sadState extends State<rough> {
  List a=[
    "assets/ss1.png",
    "assets/ss2.png",
    "assets/ss3.png",
    "assets/ss4.png",
    "assets/ss5.png",
    "assets/ss6.png",
  ];
  List b=[
    "assets/vx1.png",
    "assets/vx2.png",
    "assets/vx3.png",
    "assets/vx4.png",
    "assets/vx5.png",
    "assets/vx6.png",
  ];
  List c=[
    "assets/xv1.png",
    "assets/xv2.png",
    "assets/xv3.png",
    "assets/xv4.png",
    "assets/xv5.png",
    "assets/xv6.png",
  ];
  List d=[
    "assets/mob1.png",
    "assets/mob2.png",
    "assets/mob3.png",
    "assets/mob4.png",

  ];
  List e=[
    "assets/vx1.png",
    "assets/vx2.png",
    "assets/vx3.png",
    "assets/vx4.png",
    "assets/vx5.png",
    "assets/vx6.png",
    "assets/xv1.png",
    "assets/xv2.png",
    "assets/xv3.png",
    "assets/xv4.png",
    "assets/xv5.png",
    "assets/xv6.png",
  ];
  List f=[
    "home decors",
    "Helmets",
    "Earphones",
    "Electronics",
    "Beedsheets",
    "Washing machine",
  ];
  List h=[
    "Ponds face cream"
        "'\u{20B9}${299}'",
    "Moisturizer"
        "'\u{20B9}${349}'",
    "Sunscreen"
        "'\u{20B9}${249}'",
    "Eye liner"
        "'\u{20B9}${199}'",
    "Night cream"
        "'\u{20B9}${109}'",
    "Cleanser"
        "'\u{20B9}${299}'",
  ];
  List i=[
    "Earphones"
        "Women's Fashion"
        "Home "
        "Mobile "
        "Kid's "
        "home"
  ];
  List v=[
    "home decors"
        "\u{20B9}${299}" ,
    "Helmets"
        "\u{20B9}${899}",
    "Earphones"
        "\u{20B9}${199}",
    "Electronics"
        "\u{20B9}${699}",
    "Beedsheets"
        "\u{20B9}${299}",
    "Washing machine"
        "\u{20B9}${1}",
    "Ponds cream"
        "\u{20B9}${149}",
    "Moisturizer"
        "\u{20B9}${299}",
    "Sunscreen"
        "\u{20B9}${249}",
    "Eye liner"
        "\u{20B9}${109}",
    "Night cream"
        "\u{20B9}${188}",
    "Cleanser"
        "\u{20B9}${288}",
  ];
  List q=[
    "Earphones"
        "\u{20B9}${299}"
        "Women Fasion"
        "\u{20B9}${399}"
        "Home"
        "\u{20B9}${149}"
        "Mobiles"
        "\u{20B9}${5999}"
        "Kids Fasion"
        "\u{20B9}${299}"
        "Electronics"
        "\u{20B9}${599}"
  ];
  List j=[
    "realme 13 "
  ];

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          type: BottomNavigationBarType.fixed,
          iconSize:30,
          items: <BottomNavigationBarItem>[

            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home",),

            BottomNavigationBarItem(icon: Icon(Icons.person), label: "You"),
            BottomNavigationBarItem(icon: Icon(Icons.layers_sharp), label: "More"),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: "Cart"),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Menu"),

          ]

      ),

      appBar: AppBar(
        backgroundColor: Colors.tealAccent,
        leading: Container(
          height: 10,
          width: 10,
          child: ElevatedButton(onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const amazon()
                )
            );
          },
              child: Icon(Icons.arrow_back)),
        ),
        title: TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
            ),
            filled: true,
            fillColor: Colors.white,
            prefixIcon: Icon(Icons.search),
            hintText: "Search Amazon.in",
            suffixIcon: Icon(Icons.qr_code_scanner_sharp),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 10,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Icon(Icons.location_on_outlined),
                  Text("Delivering to coimbatore 641038- update locat...",style: TextStyle(fontWeight: FontWeight.bold),),
                  Icon(Icons.keyboard_arrow_down),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150,
                width: 450,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: b.length,
                  itemBuilder: (BuildContext context,int index){
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage(b[index]),fit: BoxFit.fill),
                              borderRadius: BorderRadius.circular(100),


                            ),
                          ),
                        ),
                        Text (f[index],style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),

                      ],
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height:200 ,
                  width: double.infinity,
                  child: CarouselSlider.builder( options: CarouselOptions(
                    scrollDirection: Axis.horizontal,
                    height: 300.0,
                    enlargeCenterPage: false,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 400),
                    viewportFraction: 1,
                  ),itemCount: a.length,
                    itemBuilder: (BuildContext context, int index, int realIndex){
                      return Container(
                        height: 500,
                        width: 400,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage(a[index]),fit: BoxFit.fill)
                        ),
                      );
                    },
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150,
                width: 400,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: c.length,
                    itemBuilder: (BuildContext context,int index){
                      return Card(
                        child: Column(
                          children: [
                            Container(
                              height:100,
                              width:90,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage(c[index]),fit: BoxFit.fill)
                              ),
                            ),
                            Text (h[index],style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      );
                    }),
              ),
            ),
            Text("Smartphones Starting ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32),),
            Text('\u{20B9}${6799}', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.red),),
            Text("No cost EMI|Exchange offer",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.grey),),


            Container(
              height: 350,
              width: 350,
              decoration: BoxDecoration(),
              child: GridView.builder(
                  itemCount: lis.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                  itemBuilder: (BuildContext context, int index){
                    return Column(
                      children: [
                        Container(
                          height: 125,
                          width: 110,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage(lis[index].image),),
                          ),
                        ),
                        Text(lis[index].text)
                        // Text(j[index]),
                      ],
                    );
                  }),
            ),
            Text("Discover products for you",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32),),
            Text("Get 40% off on every products",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.red),),
            SizedBox(height: 30,),


            Container(
              height: 400,
              width: 400,
              decoration: BoxDecoration(),
              child: GridView.builder(
                  itemCount: e.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage(e[index])),
                          ),
                        ),
                        Text(v[index],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                      ],
                    );

                  }),
            ),
            GestureDetector(
              onTap: ()
              {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const validation()),
                );
              },
              child: Container(
                height: 700,
                width: 300,
              ),
            ),
          ],

        ),
      ),
    );
  }
}


class Model
{
  String? image;
  String?  text;

  Model(this.image,this.text);
}

List lis = data.map((e)=>Model(e["image"], e["text"])).toList();

var data = [
  {"image":"assets/mob1.png","text":"Realme 13"},
  {"image":"assets/mob2.png","text":"1+ pro"},
  {"image":"assets/mob3.png","text":"iQOO"},
  {"image":"assets/mob4.png","text":"1+ 11Pro"},
];