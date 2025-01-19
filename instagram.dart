import 'package:untitled/instagram.dart';
import 'package:flutter/material.dart';
class vj extends StatefulWidget {
  const vj({super.key});

  @override
  State<vj> createState() => _vjState();
}

class _vjState extends State<vj> {
  List a=[

    "assets/post13.png",
    "assets/post12.png",
    "assets/post11.png",
    "assets/post10.png",
    "assets/post9.png",
    "assets/post8.png",
    "assets/post7.png",
    "assets/post6.png",
    "assets/post5.png",
    "assets/post4.png",
    "assets/post3.png",
    "assets/post2.png",
    "assets/post1.png",
    "assets/db.png",
    "assets/post13.png",
    "assets/post12.png",
    "assets/post11.png",
    "assets/post10.png",
    "assets/post9.png",
    "assets/post8.png",
    "assets/post7.png",
    "assets/post6.png",
    "assets/post5.png",
    "assets/post4.png",
    "assets/post3.png",
    "assets/post2.png",
    "assets/post1.png",
    "assets/db.png",
    "assets/post13.png",
    "assets/post12.png",
    "assets/post11.png",
    "assets/post10.png",
    "assets/post9.png",
    "assets/post8.png",
    "assets/post7.png",
    "assets/post6.png",
    "assets/post5.png",
    "assets/post4.png",
    "assets/post3.png",
    "assets/post2.png",
    "assets/post1.png",
    "assets/db.png",


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //bottomNavigationBar: BottomNavigationBar(backgroundColor:
      // Colors.black87,
      //   currentIndex: 0,
      //   type: BottomNavigationBarType.fixed,
      //   iconSize:30,
      // items: <BottomNavigationBarItem>[
      //   BottomNavigationBarItem(icon: Icon(Icons.home_filled),,
      //   BottomNavigationBarItem(icon: Icon(Icons.search_rounded),label: "Search"),
      //   BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined),label: "Add"),
      //   BottomNavigationBarItem(icon: Icon(Icons.video_library_outlined),label: "Reels"),
      //   BottomNavigationBarItem(icon: Icon(Icons.person),l),
      // ],
      //
      //
      // ),
      appBar: AppBar(
        backgroundColor: Colors.black87,
        leading: IconButton(onPressed: () {},
            icon: Icon(Icons.arrow_back_ios, color: Colors.white,)),
        title: Padding(
          padding: const EdgeInsets.only(left: 90),
          child: Row(
            children: [
              Text("actorvijay", style: TextStyle(color: Colors.white,),),
              Icon(Icons.verified, color: Colors.blueAccent,),
            ],
          ),

        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              children: [
                Icon(Icons.notifications_active_outlined, color: Colors.white,),
                Icon(Icons.more_horiz_sharp, color: Colors.white,),
              ],
            ),
          )
        ],
      ),
      body: DefaultTabController(length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                backgroundColor: Colors.black87,
                expandedHeight: 310,
                floating: true,
                pinned: true,
                snap: false,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  background:
                  Column(
                      children: [
                        Padding(padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage("assets/db.png"),),
                                    borderRadius: BorderRadius.circular(50),

                                  ),
                                ),
                                Column(
                                  children: [
                                    Text("27",style: TextStyle(fontSize: 20,color: Colors.white,),),
                                    Text("posts",style: TextStyle(color: Colors.white),)
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text("12M",style: TextStyle(fontSize: 20,color: Colors.white),),
                                    Text("followers",style: TextStyle(color: Colors.white),)
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text("0",style: TextStyle(fontSize: 20,color: Colors.grey),),
                                    Text("following",style: TextStyle(color: Colors.white),)
                                  ],
                                ),
                              ],
                            )
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 250),
                                    child: Text("Vijay",style: TextStyle(fontSize: 15,color: Colors.white),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 22),
                                    child: Text("Official Page handled by office of Actor Vijay",style: TextStyle(fontSize: 15,color: Colors.white),),
                                  ),
                                  SizedBox(height: 20,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 22),
                                    child: Text("Followed by suryavx_,_kavishan._ +240 more",style: TextStyle(fontSize: 15,color: Colors.white54),),
                                  ),

                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 100),
                              child: ElevatedButton(onPressed: (){}, child: const Text("Following",),),
                            ),
                            SizedBox(width: 20,),
                            ElevatedButton(onPressed: (){}, child: const Text("Message",),),


                          ],
                        ),

                      ]
                  ),
                ),
                bottom: TabBar(tabs: [
                  Tab(icon: Icon(Icons.grid_on_sharp,color: Colors.white,),),
                  Tab(icon: Icon(Icons.video_library_outlined,color: Colors.white,)),
                  Tab(icon: Icon(Icons.person_pin_outlined,color: Colors.white,)),
                ]),
              ),

            ];
          },
          body: TabBarView(children: [
            Container(
              height: 500,
              color: Colors.black87,
              child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 0,crossAxisSpacing: 0),
                  itemCount: a.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(
                            a[index])),

                      ),
                    );
                  }
              ),
            ),
            Container(
              height: 500,
              color: Colors.black87,
              child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 0,crossAxisSpacing: 0),
                  itemCount: a.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(
                            a[index])),

                      ),
                    );
                  }
              ),
            ),
            Container(
              height: 500,
              color: Colors.black87,
              child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 0,crossAxisSpacing: 0),
                  itemCount: a.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(
                            a[index])),

                      ),
                    );
                  }
              ),
            ),
          ],
          ),
        ),
      ),
    );
  }
}