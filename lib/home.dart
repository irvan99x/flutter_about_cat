import 'package:flutter_about_cat/page/fotopage.dart';
import 'package:flutter_about_cat/page/hubunganpage.dart';
import 'package:flutter_about_cat/page/jenispage.dart';
import 'package:flutter_about_cat/page/karakteristikpage.dart';
import 'package:flutter_about_cat/page/makananpage.dart';
import 'package:flutter_about_cat/page/pembiakanpage.dart';
import 'package:flutter_about_cat/page/penyakitpage.dart';
import 'package:flutter_about_cat/page/perawatanpage.dart';
import 'package:flutter_about_cat/page/persiapanpage.dart';
import 'package:flutter_about_cat/page/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  final List<BoxShadow> shadowList = [
    BoxShadow(color: Colors.white, blurRadius: 30, offset: Offset(0, 10))
  ];

  final List<Container> myList = List.generate(10, (index) {
    return Container(color: Colors.amber);
  });

  final List<Widget> myData = [
    Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(
            image: AssetImage('img/catcarouselslider1.jpg'),
            fit: BoxFit.cover,
          )),
    ),
    Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(
            image: AssetImage('img/catcarouselslider2.jpg'),
            fit: BoxFit.cover,
          )),
    ),
    Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(
            image: AssetImage('img/catcarouselslider3.jpg'),
            fit: BoxFit.cover,
          )),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.85,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                child: Text(''),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(15.0)),
                    color: Colors.amber,
                    image: DecorationImage(
                        image: AssetImage('img/catheader.png'),
                        fit: BoxFit.cover)),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Image.asset('img/catjenis.png'),
                title: Text(
                  'Jenis',
                  style: GoogleFonts.concertOne(fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => JenisPage()));
                },
              ),
              SizedBox(height: 15),
              ListTile(
                leading: Image.asset('img/catmakanan.png'),
                title: Text(
                  'Makanan',
                  style: GoogleFonts.concertOne(fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MakananPage()));
                },
              ),
              SizedBox(height: 15),
              ListTile(
                leading: Image.asset('img/catpembiakan.png'),
                title: Text(
                  'Pembiakan',
                  style: GoogleFonts.concertOne(fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PembiakanPage()));
                },
              ),
              SizedBox(height: 15),
              ListTile(
                leading: Image.asset('img/catperawatan.png'),
                title: Text(
                  'Perawatan',
                  style: GoogleFonts.concertOne(fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PerawatanPage()));
                },
              ),
              SizedBox(height: 15),
              ListTile(
                leading: Image.asset('img/catpenyakit.png'),
                title: Text(
                  'Penyakit',
                  style: GoogleFonts.concertOne(fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PenyakitPage()));
                },
              ),
              SizedBox(height: 15),
              ListTile(
                leading: Image.asset('img/catfoto.png'),
                title: Text(
                  'Foto Kucing',
                  style: GoogleFonts.concertOne(fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FotoPage()));
                },
              ),
              SizedBox(height: 5),
              Divider(
                color: Colors.amber,
              ),
              ListTile(
                leading: Image.asset('img/aboutme.png'),
                title: Text(
                  'Tentang Saya',
                  style: GoogleFonts.concertOne(fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfilePage()));
                },
              ),
              SizedBox(
                height: 15,
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(
              Icons.home,
              size: 28,
            ),
          )
        ],
        centerTitle: true,
        title: Text(
          'HOME',
          style: GoogleFonts.concertOne(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            CarouselSlider(
              items: myData,
              options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 2.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: myData.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => _controller.animateToPage(entry.key),
                  child: Container(
                    width: 12.0,
                    height: 12.0,
                    margin:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (Theme.of(context).brightness == Brightness.dark
                                ? Colors.white
                                : Colors.black)
                            .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                  ),
                );
              }).toList(),
            ),
            SizedBox(height: 15.0),
            Container(
              padding: EdgeInsets.only(left: 5),
              width: MediaQuery.of(context).size.width / 1,
              margin: EdgeInsets.only(left: 15),
              child: Text(
                'Category',
                style: GoogleFonts.concertOne(
                    fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ), //Text Category
            SizedBox(
              height: 10,
            ),
            Container(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(8),
                  children: <Widget>[
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => JenisPage()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.amber),
                                color: Colors.white,
                                boxShadow: shadowList,
                                borderRadius: BorderRadius.circular(20)),
                            margin: EdgeInsets.only(left: 15, right: 15),
                            padding: EdgeInsets.all(10),
                            child: Image.asset(
                              'img/catjenis.png',
                              height: 50,
                              width: 50,
                            ),
                          ),
                        ),
                        Text(
                          'Jenis',
                          style: GoogleFonts.concertOne(
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MakananPage()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.amber),
                                color: Colors.white,
                                boxShadow: shadowList,
                                borderRadius: BorderRadius.circular(20)),
                            margin: EdgeInsets.only(left: 15, right: 15),
                            padding: EdgeInsets.all(10),
                            child: Image.asset(
                              'img/catmakanan.png',
                              height: 50,
                              width: 50,
                            ),
                          ),
                        ),
                        Text(
                          'Makanan',
                          style: GoogleFonts.concertOne(
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PembiakanPage()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.amber),
                                color: Colors.white,
                                boxShadow: shadowList,
                                borderRadius: BorderRadius.circular(20)),
                            margin: EdgeInsets.only(left: 15, right: 15),
                            padding: EdgeInsets.all(10),
                            child: Image.asset(
                              'img/catpembiakan.png',
                              height: 50,
                              width: 50,
                            ),
                          ),
                        ),
                        Text(
                          'Pembiakan',
                          style: GoogleFonts.concertOne(
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PerawatanPage()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.amber),
                                color: Colors.white,
                                boxShadow: shadowList,
                                borderRadius: BorderRadius.circular(20)),
                            margin: EdgeInsets.only(left: 15, right: 15),
                            padding: EdgeInsets.all(10),
                            child: Image.asset(
                              'img/catperawatan.png',
                              height: 50,
                              width: 50,
                            ),
                          ),
                        ),
                        Text(
                          'Perawatan',
                          style: GoogleFonts.concertOne(
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PenyakitPage()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.amber),
                                color: Colors.white,
                                boxShadow: shadowList,
                                borderRadius: BorderRadius.circular(20)),
                            margin: EdgeInsets.only(left: 15, right: 15),
                            padding: EdgeInsets.all(10),
                            child: Image.asset(
                              'img/catpenyakit.png',
                              height: 50,
                              width: 50,
                            ),
                          ),
                        ),
                        Text(
                          'Penyakit',
                          style: GoogleFonts.concertOne(
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FotoPage()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.amber),
                                color: Colors.white,
                                boxShadow: shadowList,
                                borderRadius: BorderRadius.circular(20)),
                            margin: EdgeInsets.only(left: 15, right: 15),
                            padding: EdgeInsets.all(10),
                            child: Image.asset(
                              'img/catfoto.png',
                              height: 50,
                              width: 50,
                            ),
                          ),
                        ),
                        Text(
                          'Foto Kucing',
                          style: GoogleFonts.concertOne(
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                )),
            Container(
              padding: EdgeInsets.only(left: 5),
              width: MediaQuery.of(context).size.width / 1,
              margin: EdgeInsets.only(left: 15),
              child: Text(
                'Question',
                style: GoogleFonts.concertOne(
                    fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => KarakteristikPage()));
                          },
                          child: Container(
                              height: 80,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.amber),
                                  color: Colors.greenAccent,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(0, 17),
                                        blurRadius: 23,
                                        spreadRadius: -10,
                                        color: Colors.grey)
                                  ]),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Image.asset('img/aboutcat.png', height: 60),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Expanded(
                                      child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Karakteristik Kucing ?',
                                        style: GoogleFonts.concertOne(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                    ],
                                  )),
                                  Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Icon(Icons.arrow_forward_ios),
                                  ),
                                ],
                              )),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PersiapanPage()));
                          },
                          child: Container(
                              height: 80,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.amber),
                                  color: Colors.lightBlueAccent,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(0, 17),
                                        blurRadius: 23,
                                        spreadRadius: -10,
                                        color: Colors.grey)
                                  ]),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Image.asset('img/catpersiapan.png',
                                      height: 60),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Expanded(
                                      child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Persiapan untuk Pelihara ?',
                                        style: GoogleFonts.concertOne(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                    ],
                                  )),
                                  Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Icon(Icons.arrow_forward_ios),
                                  ),
                                ],
                              )),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HubunganPage()));
                          },
                          child: Container(
                              height: 80,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.amber),
                                  color: Colors.pink.shade200,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(0, 17),
                                        blurRadius: 23,
                                        spreadRadius: -10,
                                        color: Colors.grey)
                                  ]),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Image.asset('img/cathubungan.png',
                                      height: 60),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Expanded(
                                      child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Hubungan Kucing & Manusia ?',
                                        style: GoogleFonts.concertOne(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                    ],
                                  )),
                                  Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Icon(Icons.arrow_forward_ios),
                                  ),
                                ],
                              )),
                        ),
                        SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
