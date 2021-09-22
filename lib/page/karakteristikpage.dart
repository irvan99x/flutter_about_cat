import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KarakteristikPage extends StatefulWidget {
  const KarakteristikPage({Key? key}) : super(key: key);

  @override
  _KarakteristikPageState createState() => _KarakteristikPageState();
}

class _KarakteristikPageState extends State<KarakteristikPage> {
  final transformationController = TransformationController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            'KARAKTERISTIK',
            style: GoogleFonts.concertOne(fontWeight: FontWeight.bold),
          )),
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: ListView(
              children: [
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: InteractiveViewer(
                        transformationController: transformationController,
                        minScale: 0.1,
                        boundaryMargin: EdgeInsets.all(double.infinity),
                        child:
                            Image(image: AssetImage('img/karakteristik.jpg'))),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Text(
                    'Adapun karakteristik hewan kucing antara lain : ',
                    style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Text(
                    '1. Termasuk ke dalam golongan hewan mamalia.\n\n2. Berkembang biak dengan cara melahirkan.\n\n3. Mampu melahirkan 3-5 anak.\n\n4. Hewan yang sering tidur. Waktu tidur kucing biasanya berkisar antara 12-16 jam perhari dengan angka rata-rata 13-14 jam.\n\n5. Memiliki kelenjar susu.\n\n6. Memiliki sepasang mata dengan penglihatan yang tajam.\n\n7. Memiliki warna bulu yang beragam (putih, coklat, hitam. putih-oranye, dan masih banyk lagi)\n\n8. Memiliki sepasang kaki depan dan kaki belakang.\n\n9. Memiliki cakar yang tajam.\n\n10. Memiliki gigi taring yang tajam.\n\n11. Memiliki ekor yang panjang (terkadang ada yang pendek)\n\n12. Memiliki sepasang telinga yang runcing.\n\n13. Memiliki pendengaran yang tajam.\n\n14. Memiliki berat berkisar antara 2,5 sampai 7 kg, dan jarang berat kucing mencapai 10 kg.\n\n15. Umur kucing berkisar antara 15 sampai 20 tahun.',
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.poppins(fontSize: 15),
                  ),
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
