import 'package:flutter/material.dart';
import 'config.dart';
import 'englishlist.dart';
import 'hindi.dart';
import 'punjabi.dart';
import 'videoslider.dart';
// import 'package:video_player/video_player.dart';
import 'boly.dart';
import 'marathiList.dart';
import 'video1.dart';

class songTypes extends StatefulWidget {
  const songTypes({Key? key}) : super(key: key);

  @override
  State<songTypes> createState() => _songTypesState();
}

class _songTypesState extends State<songTypes> {
  int currentIndex = 0;

  List<String> images = [
    "https://media.giphy.com/media/3EfgWHj0YIDrW/200.gif",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFe10jB7lJTa0VizZAdgWqL-Au-1kT1aR2KA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjHXFDH2xQJ-lh1-jbodwlo6goRitm0BOBGA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYRXSwWU2Jo_3owP_wsn0Wu64RBphT2qbXmg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXoKTvk5DTpYF5JksKgGBvvo7dgq2542gmIg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShoqkI7_CYuRRNeYEOwuzpkiWnXNS0j-F7ww&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSUAA68BhDE2w4q1BCgQf0LX60PJ9MM8cBNw&usqp=CAU",
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        // backgroundColor: Color.fromARGB(218, 22, 21, 21),
        appBar: PreferredSize(
            preferredSize:
                Size.fromHeight(100.fh), // here the desired height
            child: AppBar(
              // backgroundColor: Color.fromRGBO(0, 0, 0, 1),
              centerTitle: false,
                automaticallyImplyLeading: false,

              bottom: TabBar(
                onTap: (index) {
                  switch (index) {
                    case 1:
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => VideoSlider()),
                      );
                      break;
                    case 2:
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => hindisongs()),
                      );
                      break;
                  }
                },
                tabs:  [
                  Tab(
                    icon: Icon(
                      Icons.home,
                      size: 25.fw,
                    ),
                    // text: 'Home',
                    child: Text('Home',style: TextStyle(fontSize:MediaQuery.of(context).size.width*0.04, ),),

                  ),
                  Tab(
                    icon: Icon(
                      Icons.video_collection,
                      size: 25.fw,
                    ),
                    // text: 'Video',
                    child: Text('Video',style: TextStyle(fontSize:MediaQuery.of(context).size.width*0.04, ),),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.music_note,
                      size: 25.fw,
                    ),
                    // text: 'Offline',
                    child: Text('Offline',style: TextStyle(fontSize:MediaQuery.of(context).size.width*0.04, ),),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.movie,
                      size: 25.fw,
                    ),
                    // text: 'Movie',
                    child: Text('Movie',style: TextStyle(fontSize:MediaQuery.of(context).size.width*0.04, ),),
                  ),
                ],
              ),

              flexibleSpace: Container(
                height: 200,
                width: double.infinity,
                // color: Colors.black,
                decoration: const BoxDecoration(
                  // color: Colors.black54,
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 23, 23, 33),
                    Color.fromARGB(255, 14, 21, 117),
                  ]),
                ),
              ),
            )),
        body: ListView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height ,
              decoration: const BoxDecoration(
                color: Colors.black,
                //     gradient: LinearGradient(
                //         begin: Alignment.topLeft,
                //         end: Alignment.bottomRight,
                //         colors: [Colors.blueAccent, Colors.black]),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 10.fh,
                  ),

                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Artist",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 10.fh,
                  ),
                  Container(
                    width: 355.fw,
                    height: 120.fh,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: 10.fh),
                      child: Container(
                        child: Row(
                          children: [
                            SizedBox(
                              width: 12.fw,
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 62.fw,
                                  width: 52.fh,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.grey,
                                          spreadRadius: 2.5),
                                    ],
                                  ),
                                  child: InkWell(
                                    child: Image.network(
                                      'https://lastfm.freetls.fastly.net/i/u/ar0/bb3843bfab8279d6cb10f58d3d2a3fe4.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.fh,
                                ),
                                Text(
                                  "Arjit \nSingh",
                                  style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.034),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 10.fw,
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 62.fw,
                                  width: 52.fh,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.grey,
                                          spreadRadius: 2.5),
                                    ],
                                  ),
                                  child: InkWell(
                                    child: Image.network(
                                      'https://media.insider.in/image/upload/c_crop,g_custom/v1669033779/ds4bbdue5v8qcakdth4c.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.fh,
                                ),
                                Text(
                                  "Shreya \nGhoshal",
                                  style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.034),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 10.fw,
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 62.fw,
                                  width: 52.fh,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.grey,
                                          spreadRadius: 2.5),
                                    ],
                                  ),
                                  child: InkWell(
                                    child: Image.network(
                                      'https://www.hire4event.com/artistimage/1648979096f33e6729-65ea-45e9-b643-db658293b84c.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.fh,
                                ),
                                Text(
                                  "Adarsh \nShinde",
                                  style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.034),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 10.fw,
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 62.fw,
                                  width: 52.fh,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.grey,
                                          spreadRadius: 2.5),
                                    ],
                                  ),
                                  child: InkWell(
                                    child: Image.network(
                                      'https://images.indianexpress.com/2022/08/neha-kakkar-cry-baby.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.fh,
                                ),
                                Text(
                                  "Neha \nKakkar",
                                  style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.034),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 10.fw,
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 62.fw,
                                  width: 52.fh,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.grey,
                                          spreadRadius: 2.5),
                                    ],
                                  ),
                                  child: InkWell(
                                    child: Image.network(
                                      'https://static.javatpoint.com/top10-technologies/images/top-10-punjabi-singers1.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.fh,
                                ),
                                Text(
                                  "Sidhu \nMoose",
                                  style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.034),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 20.fh,
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 10.fh),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Choose your language",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.width * 0.05,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10.fw,
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 20.fh),
                              height: 130.fh,
                              width: 130.fw,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.grey, spreadRadius: 2.5),
                                ],
                                color: Colors.black,
                              ),
                              child: InkWell(
                                child: Image.network(
                                  'https://i.scdn.co/image/ab67616d0000b27399dcaf80953b083cc7139a5f',
                                  fit: BoxFit.cover,
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const bolyList()),
                                  );
                                },
                              ),
                            ),
                            SizedBox(
                              height: 10.fh,
                            ),
                            Text(
                              "Hindi Songs",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.045,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10.fw,
                        ),
                        Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 20),
                              height: 130.fh,
                              width: 130.fw,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.grey, spreadRadius: 2.5),
                                ],
                                color: Colors.black,
                              ),
                              child: InkWell(
                                child: Image.network(
                                  'https://tse4.mm.bing.net/th?id=OIP.Ih4-5xLA9Q3btrF8VjMsWAHaHa&pid=Api&P=0',
                                  fit: BoxFit.cover,
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const marathiList()),
                                  );
                                },
                              ),
                            ),
                            SizedBox(
                              height: 10.fh,
                            ),
                            Text(
                              "Marathi Songs",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.045,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10.fw,
                        ),
                        Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 20),
                              height: 130.fh,
                              width: 130.fw,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.grey, spreadRadius: 2.5),
                                ],
                                color: Colors.black,
                              ),
                              child: InkWell(
                                child: Image.network(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLq2aLRMGxaY12b5O1Kz_Z9eWsZEqmcK0Yqg&usqp=CAU',
                                  fit: BoxFit.cover,
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const englishList()),
                                  );
                                },
                              ),
                            ),
                            SizedBox(
                              height: 10.fh,
                            ),
                            Text(
                              "English Songs",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.045,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10.fw,
                        ),
                        Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 20),
                              height: 130.fh,
                              width: 130.fw,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.grey, spreadRadius: 2.5),
                                ],
                                color: Colors.black,
                              ),
                              child: InkWell(
                                child: Image.network(
                                  'https://tse3.explicit.bing.net/th?id=OIP.fDsT_OlIqpzXm2lyeb_t8gHaHa&pid=Api&P=0',
                                  fit: BoxFit.cover,
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const punjabiList()),
                                  );
                                },
                              ),
                            ),
                            SizedBox(
                              height: 10.fh,
                            ),
                            Text(
                              "Punjabi Songs",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.045,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10.fw,
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 20.fh,
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 10.fw),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Reccommendation for today",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.width * 0.05,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10.fw,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20.fh),
                          height: 160.fh,
                          width: 330.fw,
                          decoration: const BoxDecoration(
                            //  borderRadius: BorderRadius.circular(10),
                            //     boxShadow: const [
                            //       BoxShadow(color: Colors.blueAccent, spreadRadius: 1.5),
                            // ],
                            color: Colors.black,
                          ),
                          child: InkWell(
                            child: Image.network(
                              'https://media4.giphy.com/media/3XsniM1pgA5R6ZkCeX/giphy.gif',
                              fit: BoxFit.cover,
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const vedioOne()),
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          width: 10.fw,
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          height: 160.fh,
                          width: 330.fw,
                          decoration: const BoxDecoration(
                              // borderRadius: BorderRadius.circular(10),
                              // boxShadow: const [
                              //   BoxShadow(color: Colors.grey, spreadRadius: 2.5),
                              // ]
                              ),
                          child: InkWell(
                            child: Image.network(
                              'https://media.giphy.com/media/3EfgWHj0YIDrW/200.gif',
                              fit: BoxFit.cover,
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const vedioOne()),
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          width: 10.fw,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20.fh),
                          height: 160.fh,
                          width: 330.fw,
                          decoration: const BoxDecoration(
                              // borderRadius: BorderRadius.circular(5),
                              //     boxShadow: const [
                              //       BoxShadow(color: Colors.grey, spreadRadius: 2),
                              //     ]
                              ),
                          child: InkWell(
                            child: Image.network(
                              'https://j.gifs.com/yAxGGr.gif',
                              fit: BoxFit.cover,
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const vedioOne()),
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          width: 10.fw,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20.fh),
                          height: 160.fh,
                          width: 330.fw,
                          decoration: const BoxDecoration(
                              // borderRadius: BorderRadius.circular(5),
                              //     boxShadow: const [
                              //       BoxShadow(color: Colors.blueAccent, spreadRadius: 2),
                              //     ]
                              ),
                          child: InkWell(
                            child: Image.network(
                              'https://64.media.tumblr.com/tumblr_lrzlfsPPAk1qbvn8yo1_250.gif',
                              fit: BoxFit.cover,
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const vedioOne()),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),

                  // SizedBox(
                  //   height: 200,
                  //   width: double.infinity,
                  //   child: PageView.builder(onPageChanged: (index) {
                  //     setState(() {
                  //       currentIndex = index % images.length;
                  //     });
                  //   }, itemBuilder: (context, index) {
                  //     return Padding(
                  //       padding: const EdgeInsets.symmetric(horizontal: 30),
                  //       child: SizedBox(
                  //           height: 200,
                  //           width: double.infinity,
                  //           child: InkWell(
                  //             onTap: () {
                  //               Navigator.push(
                  //                   context,
                  //                   MaterialPageRoute(
                  //                       builder: (context) => const vedioOne()));
                  //             },
                  //             child: Image.network(
                  //               images[index % images.length],
                  //               fit: BoxFit.cover,
                  //             ),
                  //           )),
                  //     );
                  //   }),
                  // ),
                  // const SizedBox(
                  //   height: 10,
                  // ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     for (var i = 0; i < images.length; i++)
                  //       buildIndicator(currentIndex == i),
                  //   ],
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget buildIndicator(bool isSelected) {
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(horizontal: 1),
  //     child: Container(
  //       height: isSelected ? 12 : 10,
  //       width: isSelected ? 12 : 10,
  //       decoration: BoxDecoration(
  //         shape: BoxShape.circle,
  //         color: isSelected ? Colors.blue : Colors.white,
  //       ),
  //     ),
  //   );
  // }
}
