import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PembiakanPage extends StatefulWidget {
  const PembiakanPage({Key? key}) : super(key: key);

  @override
  _PembiakanPageState createState() => _PembiakanPageState();
}

final transformationController = TransformationController();

class _PembiakanPageState extends State<PembiakanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'PEMBIAKAN',
          style: GoogleFonts.concertOne(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView(
            padding: const EdgeInsets.all(10),
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: InteractiveViewer(
                      transformationController: transformationController,
                      minScale: 0.1,
                      boundaryMargin: EdgeInsets.all(double.infinity),
                      child:
                          Image(image: AssetImage('img/pembiakankucing.jpg'))),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(5),
                child: Text(
                  'Bagi anda pemula yang berminat budidaya kucing silahkan ikuti panduan berikut ini : ',
                  style: GoogleFonts.poppins(fontSize: 17),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListPembiakan(
                judul: "1. Memilih Bibit / Indukan",
                isi:
                    '         Untuk mengetahui kucing anggora jantan bisa anda lihat dibawah ekornya, biasanya terdapat benjolan kecil dibawah anus yang jaraknya agak jauh, dan lubangnya berbentuk bulat, Itu adalah alat kelamin kucing jantan.\n          '
                    'Adapun indukan kucing anggora yang bagus yaitu; Indukan harus sehat dan lincah, tidak cacat fisik, mata cerah serta mempunyai sorot yang tajam.\n         '
                    'Bagi anda pemula yang ingin beternak kucing anggora saya sarankan tidak membeli bibit yang kualitas kontes, tujuannya untuk mengurangi biaya pembelian bibit, karena yang pasti bibit kualitas kontes harganya sangat mahal.\n         '
                    'Anda cukup membeli indukan yang kualitas rumahan saja, supaya harganya lebih terjangkau, masalah kualitas kontes bisa kita latih sendiri nanti.',
              ),
              ListPembiakan(
                  judul: "2. Menyiapkan Kandang",
                  isi:
                      '         Untuk kandang beternak kucing sebenarnya tidak perlu tempat khusus, karena anda bisa memanfaatkan ruangan kosong yang ada dirumah.\n          '
                      'Yang terpenting adalah ruangan yang akan digunakan cukup untuk menampung kucing yang akan diternak, dan jangan lupa sediakan kotak-kotak serta kain perca untuk tempat tidur kucing.\n         '
                      'Kucing anggora adalah termasuk jenis kucing yang agresif dan lincah, maka anda harus menyediakan media untuk bermain dalam ruangan tersebut, agar kucing berolahraga supaya badanya tetap sehat dan terbentuk otot yang kuat.        '),
              ListPembiakan(
                  judul: "3. Mengawinkan Kucing",
                  isi:
                      '         Jika kucing jantan dan kucing betina menginjak masa dewasa, kucing harus segera dikawinkan.\n          '
                      'Masa produktif untuk kucing jantan yaitu sekitar umur 1,5 tahun, sedangkan untuk kucing betina yaitu sekitar umur 1 tahun.\n         '
                      'Sebelum kucing dikawinkan, kucing harus dalam keadaan sehat, bila perlu kucing dibawa ke dokter hewan terlebih dahulu untuk memastikan kondisi kesehatannya.\n         Cara untuk mengetahui kucing yang sedang birahi yaitu, kucing sering mengeluarkan suara-suara yang keras dan bising secara terus menerus, atau sering guling-guling dilantai.\n         Apabila terlihat tanda-tanda seperti diatas segera satukan kucing jantan dan kucing betina dalam satu kandang, namun biasanya untuk pertama kali disatukan, kucing betina akan menolak.\n         Biarkan kucing saling mengenal dalam kandang tersebut sampai terjadi proses perkawinan, dan apabila proses perkawinan selesai, kucing betina akan hamil.'),
              Container(
                padding: EdgeInsets.all(5),
                child: Text(
                  'Itu adalah beberapa langkah pembiakan kucing dan masih banyak cara untuk pembiakan kucing agar manghasilkan bibit unggulan.',
                  style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}

class ListPembiakan extends StatelessWidget {
  const ListPembiakan({Key? key, this.judul, this.isi}) : super(key: key);

  final judul;
  final isi;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 1,
              child: Text(
                judul,
                style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              child: Text(
                isi,
                textAlign: TextAlign.justify,
                style: GoogleFonts.poppins(),
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
