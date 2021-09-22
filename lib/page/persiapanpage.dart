import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PersiapanPage extends StatefulWidget {
  const PersiapanPage({Key? key}) : super(key: key);

  @override
  _PersiapanPageState createState() => _PersiapanPageState();
}

class _PersiapanPageState extends State<PersiapanPage> {
  final transformationController = TransformationController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'PERSIAPAN',
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
                        child: Image(
                            image: AssetImage('img/persiapan.jpg'))),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.only(right: 8.0, left: 8.0),
                  child: Text(
                    'Berikut ini tujuh hal yang perlu dipersiapkan sebelum memelihara kucing menurut laman The Spruce Pets, 25 Juni 2019 : ',
                    style: GoogleFonts.poppins(fontSize: 17),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ListPersiapan(
                  judul: "1. Buat daftar belanja",
                  isi:
                      '         Mulai memelihara kucing baru mirip seperti memiliki bayi manusia. Namun dalam kasus kucing, Anda akan berbelanja untuk kotak pasir kucing.\n          Ada beberapa hal yang harus dikumpulkan atau dibeli, sehingga kucing Anda akan merasa seperti anggota keluarga.\n         Berbelanjalah beberapa hari sebelum kucing mulai tinggal di rumah. Ini dapat meminimalkan stres bagi Anda maupun kucing Anda.',
                ),
                ListPersiapan(
                    judul:
                        "2. Siapkan Ruangan yang Amana",
                    isi:
                        '         Sebuah ruang yang aman untuk kucing tidak perlu berupa ruang terpisah, tapi bisa jadi hanya lemari kosong, sudut kamar tidur Anda dengan layar pelindung, atau kamar mandi yang jarang digunakan.\n         Hal terpenting adalah kucing baru Anda memiliki tempat yang disebut "rumah", tempat ia dapat beristirahat. Kucing bisa memilih untuk bersembunyi ataupun bergaul dengan pemilik rumah. Mungkin diperlukan beberapa hari atau bahkan beberapa minggu untuk beradaptasi.'),
                ListPersiapan(
                    judul: "3. Kunjungan ke Dokter",
                    isi:
                        '         Kunjungan dokter hewan juga menjadi salah satu bagian penting dari merawat kucing. Anda perlu mempertimbangkan untuk memberi kucing vaksin, seperti Feline Immunodeficiency Virus (FIV) dan Feline Leukemia Virus (FeLV) untuk kesehatannya.\n          Anda juga bisa memilih untuk menghilangkan cakar kucing atau tidak. Selain itu, konsultasi dengan dokter hewan juga perlu untuk kelangsungan hidup kucing.'),
                ListPersiapan(
                  judul: "4. Makanan Kucing",
                  isi:
                      "          Makanan yang didapat kucing di awal kehidupan akan menentukan kesehatan dan kesejahteraan seumur hidupnya. Pengetahuan Anda tentang bahan makanan kucing akan membantu memastikan tidak hanya umur panjang, tetapi juga kualitas hidup yang Anda inginkan untuk 'anggota keluarga baru' Anda itu.\n          Pastikan Anda membaca label makanan kucing untuk mengetahui makanan yang diberikan kepada kucing. Anda harus meninjau selama berminggu-minggu dan berbulan-bulan ke depan sampai Anda merasa aman dengan pengetahuan Anda.\n          Sumber air bersih dan segar juga penting untuk kesehatan kucing Anda. Meski kucing merupakan keturunan dari hewan gurun, mereka tetap harus terhidrasi dengan baik. Mengenai minuman, kucing menyukai rasa air mengalir yang murni dan segar. Dispenser air otomatis memastikan pasokan air bersih yang konstan. Sedangkan soal makanan, anak kucing membutuhkan lebih banyak lemak dan protein daripada kucing dewasa.",
                ),
                ListPersiapan(
                  judul: "5. Kebutuhan Menaggaruk Kucing",
                  isi:
                      "          Kucing memiliki kebiasaan menggaruk dengan cakarnya. Hal itu sama pentingnya dengan kebutuhan makan dan bernapas. Cakar kucing adalah alat yang paling penting karena berbagai alasan. Sehingga sebaiknya tidak dipotong habis.\n          Anda bisa mempertimbangkan untuk memberi benda yang dapat digaruk tanpa harus mengorbankan perabot rumah tangga. Jika anggaran terbatas, Anda bisa memulainya dengan penggaruk dari karton. Anda juga bisa membeli tiang yang diberi aroma catnip jika memiliki dana cukup.",
                ),
                ListPersiapan(
                  judul: '6. Alat Perawatan Kucing',
                  isi:
                      "          Waktu perawatan adalah waktu yang tepat untuk menjalin ikatan dengan kucing atau anak kucing baru Anda. Cari sisir bergigi rapat dan sikat jepitan dengan sandaran karet untuk membersihkan badannya.\n          Jika ada pemotong kuku yang dirancang untuk kucing akan lebih baik. Kemudian, jika Anda mulai memotong kuku anak kucing lebih awal, itu akan mempermudah tugas saat ia dewasa.",
                ),
                ListPersiapan(
                  judul: "7. Bermain dengan Kucing",
                  isi:
                      "          Bermain dengan kucing Anda adalah pengalaman ikatan batin yang luar biasa. Kucing suka bermain dan ahli dalam menciptakan permainan mereka sendiri. Sebelum Anda membeli mainan kucing, bereksperimenlah dengan benda-benda yang ada di sekitar rumah, misal paper bag atau karton.\n          Jika ingin mencoba mainan kucing, Anda bisa mulai dengan tongkat pancing dengan tali yang menjuntai. Itu adalah favorit kucing untuk permainan interaktif. Pastikan talinya cukup kuat sehingga anak kucing kecil tidak akan merobek tali atau bulunya. Selain itu tikus catnip adalah mainan favorit kucing juga.\n          Perlu Anda pikirkan apakah kucing Anda boleh main di luar atau hanya di dalam rumah. Jika Anda merasa kucing sangat membutuhkan udara segar dan sinar matahari, maka buat dia aman untuk pengalaman luar ruangan. Jika Anda memiliki dek tertutup, itu adalah pilihan yang baik.",
                ),
                Container(
                  padding: EdgeInsets.only(left: 10, bottom: 20, right: 10),
                  child: Text(
                    'Dan itu adalah beberapa persiapan sebelum memelihara kucing',
                    style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}

class ListPersiapan extends StatelessWidget {
  ListPersiapan({this.judul, this.isi});

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
