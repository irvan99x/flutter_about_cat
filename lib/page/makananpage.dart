import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MakananPage extends StatefulWidget {
  const MakananPage({Key? key}) : super(key: key);

  @override
  _MakananPageState createState() => _MakananPageState();
}

class _MakananPageState extends State<MakananPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'MAKANAN',
            style: GoogleFonts.concertOne(fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(8),
                children: <Widget>[
                  Center(
                    child: Container(
                        width: MediaQuery.of(context).size.width / 1,
                        child: Text(
                          'Berbagai Jenis Makanan Kucing',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold, fontSize: 22),
                          textAlign: TextAlign.center,
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ListMakanan(
                      gambar: "img/whiskas.jpg",
                      judul: "1. Whiskas",
                      harga: "Kisaran Harga : ",
                      rupiah: "Rp 4.500 – Rp 540.000",
                      isi:
                          "         Whiskas menghasilkan makanan kucing yang memberi pemilik kucing kepastian, bahwa mereka memberikan peliharaan makanan yang sehat dan lezat."),
                  ListMakanan(
                      gambar: "img/proplan.jpg",
                      judul: "2. Proplan",
                      harga: "Kisaran Harga : ",
                      rupiah: "Rp 52.000 – Rp 1.050.000",
                      isi:
                          "         Proplan percaya bahwa kehidupan terbaik kucing dimungkinkan melalui kekuatan nutrisi. Makanan kucing Proplan dibuat untuk membantu kucing peliharaan kamu semakin energik dan sehat."),
                  ListMakanan(
                      gambar: "img/rck.png",
                      judul: "3. Royal Canin Kitten",
                      harga: "Kisaran Harga : ",
                      rupiah: "Rp 57.000 – Rp 1.240.000",
                      isi:
                          "         Royal Canin Kitten mendukung sistem kekebalan tubuh kucing dengan antioksidan kompleks, vitamin E, dan juga prebiotik yang terkandung dalam di dalamnya."),
                  ListMakanan(
                      gambar: "img/felibite.jpg",
                      judul: "4. Felibite",
                      harga: "Kisaran Harga : ",
                      rupiah: "Rp.12.000 – Rp.429.900",
                      isi:
                          "         Makanan kucing buatan Felibite diformulasikan dengan nutrisi yang seimbang sehingga membantu meningkatkan stamina dan kekebalan tubuh kucing kesayangan kamu."),
                  ListMakanan(
                      gambar: "img/friskies.jpg",
                      judul: "5. Friskies",
                      harga: "Kisaran Harga : ",
                      rupiah: "5.500 – Rp 355.100",
                      isi:
                          "         Dengan bahan alami lezat, makanan kucing Friskies memberikan semua kebaikan untuk kebutuhan gizi kucing kamu."),
                  Container(
                    padding: EdgeInsets.only(right: 20, left: 20, bottom: 20),
                    child: Text(
                      'Dan itu adalah beberapa makanan kucing dan kisaran harganya.',
                      style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}

class ListMakanan extends StatelessWidget {
  ListMakanan({this.gambar, this.judul, this.harga, this.rupiah, this.isi});

  final gambar;
  final judul;
  final harga;
  final rupiah;
  final isi;

  final transformationController = TransformationController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 20),
              width: MediaQuery.of(context).size.width / 1,
              child: Text(
                judul,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: InteractiveViewer(
                    transformationController: transformationController,
                    minScale: 0.1,
                    boundaryMargin: EdgeInsets.all(double.infinity),
                    child: Image(image: AssetImage(gambar))),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 20, left: 20, top: 10),
              child: Text(
                isi,
                textAlign: TextAlign.justify,
                style: GoogleFonts.poppins(),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20, bottom: 30),
              child: Row(
                children: [
                  Text(
                    harga,
                    style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    child: Text(
                      rupiah,
                      style: GoogleFonts.poppins(),
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
