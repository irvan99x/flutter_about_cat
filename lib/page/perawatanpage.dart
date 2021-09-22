import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PerawatanPage extends StatefulWidget {
  @override
  _PerawatanPageState createState() => _PerawatanPageState();
}

final transformationController = TransformationController();

class _PerawatanPageState extends State<PerawatanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'PERAWATAN',
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
                          Image(image: AssetImage('img/perawatankucing.jpg'))),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(right: 8.0, left: 8.0),
                child: Text(
                  'Berikut tips menjaga kesehatan kucing peliharaan yang wajib kamu ketahui : ',
                  style: GoogleFonts.poppins(fontSize: 17),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListPerawatan(
                judul: "1. Menyisir Bulunya Setiap hari",
                isi:
                    '         Menyikat atau menyisir kucing setiap hari akan mengurangi bulu-bulu yang menggumpal. Nah, jika bulu-bulu yang menggumpal ini tidak disisir, bulu ini dapat tertelan kucing saat ia menjilatnya. Bulu yang tertelan ini dapat mengganggu saluran pencernaannya dan membuat kucing mengalami muntah-muntah. Jadi, pastikan kamu menyempatkan waktu untuk menyikat bulunya setiap hari ya!.',
              ),
              ListPerawatan(
                  judul: "2.  Jangan Memberikan Makanan Kering Terlalu Banyak",
                  isi:
                      '         Tidak seperti anjing, kucing sangat mengandalkan daging sebagai makanan pokok sehari-harinya. Ketika kucing diberi makanan kering terlalu banyak, maka ia pun mengonsumsi terlalu banyak karbohidrat yang bisa berdampak buruk bagi kesehatannya. Kucing yang sering mengonsumsi makanan kering umumnya rentan mengembangkan diabetes tipe 2 dan obesitas. Oleh sebab itu, pastikan takaran makanan basah dan makanan keringnya seimbang ya!.'),
              ListPerawatan(
                  judul: "3. Pastikan Kucing Cukup Terhidrasi",
                  isi:
                      '         Kucing domestik tidak memiliki dorongan haus yang sama seperti anjing. Mereka membutuhkan sebagian besar air dari makanan yang mereka konsumsi. Makanan kering rata-rata hanya mengandung lima sampai sepuluh persen air. Oleh sebab itu, berikan kucing makanan basah yang mengandung 70 persen air.\n          Pastikan pula kucing mendapatkan akses ke air bersih setiap saat dan bila perlu perhatikan kucing kamu apakah sudah minum lebih banyak saat mereka makan lebih banyak makanan kering. Kucing tua dan menyusui lebih rentan mengalami dehidrasi dibandingkan kucing lain, jadi perhatikan dengan cermat gejala seperti mata cekung, lesu, dan terengah-engah.'),
              ListPerawatan(
                judul: "4. Sediakan Jumlah Litter Box yang Cukup",
                isi:
                    "          Melansir dari Daily Paw, kamu sebenarnya perlu menyediakan satu litter box untuk satu kucing ditambah satu kotak tambahan. Jadi jika kamu memiliki tiga kucing, kamu harus menyiapkan empat kotak. Nah, pastikan pula penempatan litter box ini strategis ya! Biasanya kucing suka dengan tempat-tempat yang alamiah, jadi kamu bisa mempertimbangkan untuk menaruhnya di luar atau di dekat taman.",
              ),
              ListPerawatan(
                judul: "5. Latih Kucing untuk Menggunakan Tiang Gores",
                isi:
                    "          Kamu pasti merasa kesal saat sofa atau benda-benda lainnya dicakar-cakar oleh kucing. Nah, untuk menghindari hal ini, coba ajari kucing untuk menggunakan tiang cakaran, sehingga mereka tidak akan mencakar furnitur berharga. Coba letakkan di tengah ruangan untuk menarik perhatiannya. Bila ia tidak begitu tertarik, kamu bisa menaruh snack di dekat tiang atau taburi sedikit catnip. Kamu dapat memindahkannya secara bertahap ke tempat lain setelah kucing sudah terbiasa menggunakannya.",
              ),
              ListPerawatan(
                judul: '6. Lakukan Sterilisasi',
                isi:
                    "          Kucing betina bisa merasa sangat tidak nyaman saat birahi. Mensterilkannya dapat membuatnya lebih tenang dan mencegahnya dihamili kucing lain terlalu sering. Pada kucing jantan, birahi bisa memicu perkelahian dengan kucing lain. Nah, perkelahian ini berisiko menularkan penyakit melalui gigitan dan cakarannya. Oleh sebab itu, pertimbangkan untuk mengebiri kucing peliharaan kamu.",
              ),
              ListPerawatan(
                judul: "7. Berikan Vaksin dan Obat Cacing",
                isi:
                    "          Walaupun kucing peliharaan tidak sebebas kucing liar, hewan yang menggemaskan ini tetap rentan terserang berbagai penyakit, contohnya toksoplasma dan cacingan. Nah, untuk mencegah kondisi ini, sebaiknya kamu perlu memvaksin kucing dan memberikannya obat cacing.",
              ),
              Container(
                padding: EdgeInsets.only(left: 10, bottom: 20),
                child: Text(
                  'Dan itu adalah beberapa langkah dari merawat kucing.',
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

class ListPerawatan extends StatelessWidget {
  ListPerawatan({this.judul, this.isi});

  final judul;
  final isi;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
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
