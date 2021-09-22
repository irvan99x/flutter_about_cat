import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HubunganPage extends StatefulWidget {
  const HubunganPage({Key? key}) : super(key: key);

  @override
  _HubunganPageState createState() => _HubunganPageState();
}

class _HubunganPageState extends State<HubunganPage> {
  final transformationController = TransformationController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Kucing & Manusia',
            style: GoogleFonts.concertOne(fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          children: [
            Expanded(
                child: Padding(
              padding: EdgeInsets.all(15),
              child: ListView(
                children: [
                  Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: InteractiveViewer(
                          transformationController: transformationController,
                          minScale: 0.1,
                          boundaryMargin: EdgeInsets.all(double.infinity),
                          child: Image(image: AssetImage('img/hubungan.jpg'))),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 8.0, left: 8.0),
                    child: Text(
                      'Berikut adalah sejarah hubungan manusia & kucing : ',
                      style: GoogleFonts.poppins(fontSize: 17),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 8),
                    width: MediaQuery.of(context).size.width / 1,
                    child: Text(
                      'Keterikatan Pemilik dengan Kucingnya',
                      style:
                          GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      '         Kristyn Vitale, penulis utama penelitian ini, yakin bahwa kucing dan anjing menunjukkan ikatan yang sama dengan pemiliknya seperti halnya anak-anak terhadap pengasuh mereka. Kebanyakan kucing menghabiskan banyak waktu dengan pemiliknya, sehingga mereka menjadi lebih tergantung, melihatnya sebagai sumber keamanan, dan bahkan mendatangi mereka ketika mereka membutuhkan kenyamanan.\n          Para ilmuwan mengklaim bahwa pelatihan dan sosialisasi lebih lanjut mungkin memiliki sedikit dampak pada perasaan kucing tentang pemiliknya. Faktor yang diwariskan seperti temperamen-lah yang paling penting. Para peneliti menyoroti bahwa jika kucing berhasil terhubung dengan pemilik mereka, hubungan mereka akan stabil dalam jangka panjang.\n         Para pihak yang skeptis mengatakan bahwa percobaan ini harus diulangi dengan orang asing karena sekarang kita tidak bisa tahu pasti apakah kucing merespons kehadiran pemiliknya atau apakah mereka akan bereaksi dengan cara yang mirip dengan manusia. Tapi, kucing pasti membentuk hubungan emosional dengan pemiliknya, kita tidak bisa memastikan bahwa itu dapat diklasifikasikan sebagai keterikatan psikologis yang aman dalam pengertian tradisional, tanpa penelitian lebih lanjut.',
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.poppins(),
                    ),
                  ),
                ],
              ),
            ))
          ],
        ));
  }
}
