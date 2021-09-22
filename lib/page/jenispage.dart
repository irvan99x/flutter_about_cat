import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class JenisPage extends StatefulWidget {
  @override
  _JenisPageState createState() => _JenisPageState();
}

class _JenisPageState extends State<JenisPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'JENIS',
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
                      child: Text(
                    'Berbagai Jenis Kucing',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold, fontSize: 25),
                    textAlign: TextAlign.center,
                  )),
                  SizedBox(
                    height: 20,
                  ),
                  ListJenis(
                      gambar: "img/catragdoll.jpg",
                      judul: "1. Kucing Ragdoll",
                      harga: "Kisaran Harga : ",
                      rupiah: "Rp 1.000.000 – Rp 30.000.000",
                      isi:
                          "         Ragdoll adalah jenis kucing peliharaan populer karena sangat menyukai manusia. Saking sukanya, kucing tersebut sering mengikuti pemiliknya di sekitar rumah dari pagi hingga malam. Jika kamu mencari sahabat dengan bulu semi-panjang dan berat sekitar 6 kg yang selalu menempel dan mengikutimu, jenis kucing Ragdoll bisa menjadi belahan jiwa kucing kamu. Penyanyi Taylor Swift juga memelihara kucing jenis Ragdoll ini."),
                  ListJenis(
                      gambar: "img/catmainecoons.jpg",
                      judul: "2. Kucing Maine Coons",
                      harga: "Kisaran Harga : ",
                      rupiah: "Rp 3.000.000 – Rp 18.000.000",
                      isi:
                          "         Jenis kucing maine coon terkenal karena ukurannya yang besar hingga memiliki berat 13 kg. Tetapi alasan lain mereka menjadi ras kucing rumahan yang populer adalah karena kepribadian yang ramah. Jenis kucing ini sangat suka bermain dan bergabung dengan kamu apa pun yang dilakukan."),
                  ListJenis(
                      gambar: "img/catsiamese.jpg",
                      judul: "3. Kucing Siamese",
                      harga: "Kisaran Harga : ",
                      rupiah: "Rp 300.000 – Rp 10.000.000",
                      isi:
                          "         Kucing Siamese berkembang biak dengan sangat cantik. Jenis kucing ini memiliki mata cerah dan bulu coklat yang khas di ekor dan anggota tubuhnya. Kucing jenis Siam ini juga cenderung memiliki kepribadian yang sangat santai. Mereka lebih suka duduk di pangkuan pemiliknya daripada membuat masalah."),
                  ListJenis(
                      gambar: "img/catash.jpg",
                      judul: "4. Kucing American Shorthairs",
                      harga: "Kisaran Harga : ",
                      rupiah: "Rp.8.800.000 – Rp.17.700.000",
                      isi:
                          "         Kucing jenis American Shorthairs ini memiliki masa hidup yang lama. Jadi kucing jenis ini bisa menjadi pilihan tepat jika kamu mau memelihara kucing untuk tumbuh bersama. American Shorthairs juga dikenal sangat manis dengan anak-anak dan hewan lainnya seperti anjing. Jenis kucing ini termasuk mudah dirawat, artinya cocok untuk kamu yang pemula dalam urusan memeliharakamu tidak perlu sering-sering menyikatnya."),
                  ListJenis(
                      gambar: "img/catsphynx.jpg",
                      judul: "5. Kucing Sphynxes",
                      harga: "Kisaran Harga : ",
                      rupiah: "3.000.000 – Rp 25.000.000",
                      isi:
                          "         Kucing Sphynx termasuk jenis kucing tidak berbulu. Karena tak berbulu ini, sekilas kucing sphynx terlihat jahat, meski nyatanya tidak demikian. Buat kamu yang alergi bulu kucing, jenis kucing ini bisa menjadi solusi. Sphyn termasuk kucing yang menyukai perhatian dari orang-orang dan cenderung sedikit nakal ketika mau mencuri perhatian. Tapi selama kamu bersedia untuk sering menggaruk telinga Sphynx, dia akan baik-baik saja. Salah satu orang Indonesia terkenal yang memelihara jenis kucing ini adalah Raditya Dika."),
                  ListJenis(
                      gambar: "img/catscottishfold.png",
                      judul: "6. Kucing Scottish Fold",
                      harga: "Kisaran Harga : ",
                      rupiah: "Rp.2.500.000 – Rp.28.000.000",
                      isi:
                          "         Kamu mungkin sudah akrab dengan ras kucing ini yang dikenal sebagai lipatan Skotlandia. Nama kucing scottish fold didapat dari telinga mereka yang terlipat. Scottish fold adalah jenis kucing berukuran sedang dengan berat 4 hingga 6 kg. Mereka seperti terobsesi dengan pemiliknya. Mereka hidup untuk kasih sayang manusia, dan tidak takut dengan suara keras. Artinya jenis kucing ini cocok buat kamu yang tinggal di kota besar."),
                  ListJenis(
                      gambar: "img/catsomali.jpg",
                      judul: "7. Kucing Somali",
                      harga: "Kisaran Harga : ",
                      rupiah: "Rp.6.000.000 – Rp.10.000.000",
                      isi:
                          "         Kucing Somali memiliki bulu ombre khas yang hadir dalam empat warna menawan. Somalia berkembang pesat ketika mereka memiliki pemelihara yang dapat diandalkan dan memberikan banyak perhatian pada mereka. Jenis kucing peliharaan ini suka bermain dan sangat pintar."),
                  ListJenis(
                      gambar: "img/catabyssinian.jpg",
                      judul: "8. Kucing Abyssinians",
                      harga: "Kisaran Harga : ",
                      rupiah: "Rp.17.500.000 – Rp.32.200.000",
                      isi:
                          "         Jenis kucing ini sangat cantik dan populer karena mereka jenius. Abyssinia juga termasuk salah satu ras kucing tertua di dunia. Satu yang harus kamu ketahui jenis kucing Abyssinia bukanlah jenis yang paling suka diemong. Mereka memang menyukai persahabatan manusia, tetapi mereka menunjukkannya hanya dengan berada di dekat kamu."),
                  ListJenis(
                      gambar: "img/catpersians.jpg",
                      judul: "9. Kucing Persians",
                      harga: "Kisaran Harga : ",
                      rupiah: "Rp.1.000.000 – Rp.10.000.000",
                      isi:
                          "         Kucing Persia sangat lucu dan terlihat seperti boneka. Ras kucing ini paling populer, karena mereka cantik dan juga memiliki kepribadiannya yang manis. Terkadang jenis kucing Persia membutuhkan sedikit waktu untuk beradaptasi dengan lingkungan baru, tetapi setelah sedikit tenang, mereka akan merasa sangat nyaman di rumah kamu. Memiliki bulu yang tebal, kamu memang harus sering menyikat kucing Persia kamu."),
                  ListJenis(
                      gambar: "img/catbirmans.png",
                      judul: "10. Kucing Birmans",
                      harga: "Kisaran Harga : ",
                      rupiah: "Rp.1.500.000 – Rp.4.000.000",
                      isi:
                          "         Jenis kucing Birman mudah dikenali dari mata birunya yang khas serta hidung cokelatnya yang manis. Birman memiliki berbagai warna, tetapi mereka semua terlahir putih. Kucing ini memiliki warna bulu yang berbeda saat tumbuh dewasa. Birman sangat manis dan pendiam, dan mereka bisa bergaul dengan hampir semua orang."),
                  Container(
                    padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    child: Text(
                      'Itu adalah beberapa jenis kucing dan masih banyak jenis - jenis kucing didunia ini.',
                      style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.justify,
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}

class ListJenis extends StatelessWidget {
  ListJenis({this.gambar, this.judul, this.harga, this.rupiah, this.isi});

  final judul;
  final gambar;
  final isi;
  final harga;
  final rupiah;

  final transformationController = TransformationController();

  @override
  Widget build(BuildContext context) {
    return Center(
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
              style: GoogleFonts.poppins(),
              textAlign: TextAlign.justify,
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, bottom: 30),
            child: Expanded(
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
            ),
          )
        ],
      ),
    );
  }
}
