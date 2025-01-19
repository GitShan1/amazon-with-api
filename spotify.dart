import 'package:flutter/material.dart';

class music extends StatefulWidget {
  const music ({super.key});
  @override
  State<music> createState() => _music();
}

class _music extends State<music> {
  List a= [
    "Hunter vantaar",
    "Manasilaayo",
    "Coolie Disco",
    "Mathew Theme",
    "Alappara Theme",
    "Jailer Swag-up",
    "Varman Theme",
    "Yaakki Thiri",
    "Ambikapathy",
    "Aaruyire",
    "Hunter vantaar",
    "Manasilaayo",
    "Coolie Disco",
    "Mathew Theme",
    "Alappara Theme",
    "Jailer Swag-up",
    "Varman Theme",
    "Yaakki Thiri",
    "Ambikapathy",
    "Aaruyire",
  ];
  List b= [
    "assets/hunter.png",
    "assets/hunter.png",
    "assets/coolie.png",
    "assets/jailer.png",
    "assets/jailer.png",
    "assets/jailer.png",
    "assets/jailer.png",
    "assets/thiri.png",
    "assets/ambi.png",
    "assets/guru.png",
    "assets/hunter.png",
    "assets/hunter.png",
    "assets/coolie.png",
    "assets/jailer.png",
    "assets/jailer.png",
    "assets/jailer.png",
    "assets/jailer.png",
    "assets/thiri.png",
    "assets/ambi.png",
    "assets/guru.png",
  ];
  List spo=[
    "(Aniruth Ravichander),"
        "(Aniruth Ravichander),"
        "(Aniruth Ravichander),"
        "(Aniruth Ravichander),"
        "(Aniruth Ravichander),"
        "(Aniruth Ravichander),"
        "(Aniruth Ravichander),"
        "(Aniruth Ravichander),"
        "(Aniruth Ravichander),"
        "(Aniruth Ravichander),"
        "(Aniruth Ravichander),"
        "(Aniruth Ravichander),"
        "(Aniruth Ravichander),"
        "(Aniruth Ravichander),"
        "(Aniruth Ravichander),"
        "(Aniruth Ravichander),"
        "(Aniruth Ravichander),"
        "(Aniruth Ravichander),"
        "(Aniruth Ravichander),"
        "(Aniruth Ravichander),"


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.black12,
            currentIndex: 0,
            type: BottomNavigationBarType.fixed,
            iconSize:30,
            items: <BottomNavigationBarItem>[

              BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home",),
              BottomNavigationBarItem(icon: Icon(Icons.search_sharp), label: "Search"),
              BottomNavigationBarItem(icon: Icon(Icons.library_music_outlined), label: "Your Libary"),

            ]),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context,bool innerboxIscrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 600,
                floating: true,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  background:
                  Container(
                    height: 430,
                    width: 420,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(begin: Alignment.topCenter,end: Alignment.bottomCenter,colors: [Colors.amberAccent,Colors.black])
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 370,top: 20),
                          child: Icon(Icons.arrow_back_ios_new,size: 40,color: Colors.white,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15,top: 10),
                          child: Container(
                            child: Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: 320,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white24,
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelText: "Find on this page",labelStyle: TextStyle(color: Colors.white,),
                                      prefixIcon: Icon(Icons.search,color: Colors.white,),
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Container(
                                  height: 40,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white24,
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelText: "Sort", labelStyle: TextStyle(color: Colors.white),
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Container(
                            height: 290,
                            width: 290,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                image: DecorationImage(image:AssetImage("assets/head.png"),
                                    fit: BoxFit.fill)
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20,right: 80),
                          child: Text("TAMIL KUTHU SONGS",style: TextStyle(color: Colors.white, fontSize: 30,),),

                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20,right: 230),
                          child: Text("MADE FOR YOU",style: TextStyle(color: Colors.white, fontSize: 10,),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 280),
                          child: Text("70,374 saves 10h 33m",style: TextStyle(color: Colors.white,fontSize:10),),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Container(
                                height: 40,
                                width: 180,
                                child:
                                Row(
                                  children: [
                                    Icon(Icons.add_circle_outline_sharp,size: 30,color: Colors.grey,),
                                    SizedBox(width: 20,),
                                    Icon(Icons.download_for_offline_outlined,size: 30,color: Colors.grey,),
                                    SizedBox(width: 20,),
                                    Icon(Icons.share,size: 30,color: Colors.grey,),
                                    SizedBox(width: 20,),
                                    Icon(Icons.more_vert,size: 30,color: Colors.grey,),
                                  ],

                                ),
                              ),
                            ),

                            //RIGHT ICONS
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left:60),
                                    child: Icon(Icons.shuffle,color: Colors.grey,),
                                  ),
                                  SizedBox(width: 10,),
                                  Padding(
                                    padding: const EdgeInsets.only(left:40),
                                    child: Icon(Icons.play_circle_fill,color: Colors.green,size: 60,),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

              )
            ];
          },

          body: Container(
            height: double.infinity,
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 20,
                itemBuilder:(BuildContext con,index)
                {
                  return  Container(
                    height: 130,
                    width: 100,
                    color: Colors.black87,
                    child: Row(

                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage(b[index]),
                                  fit: BoxFit.fill),
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10,top: 20),
                              child: Text(a[index],style: TextStyle(
                                  color:Colors.white,fontSize: 22),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10,left: 20),
                              child: Column(
                                children: [
                                  Text( "Vettaiyan" ,
                                      style: TextStyle(color: Colors.white60,fontSize: 15)),
                                  Text( "Aniruth Ravichander," ,
                                      style: TextStyle(color: Colors.white60,fontSize: 15)),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 100,bottom: 15),
                          child: Icon(Icons.more_horiz_sharp,color: Colors.white60,size: 30,),
                        )
                      ],
                    ),
                  );
                }
            ),
          ),
        )

    );
  }
}