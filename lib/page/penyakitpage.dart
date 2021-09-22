import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PenyakitPage extends StatefulWidget {
  const PenyakitPage({Key? key}) : super(key: key);

  @override
  _PenyakitPageState createState() => _PenyakitPageState();
}

final transformationController = TransformationController();

class _PenyakitPageState extends State<PenyakitPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'PENYAKIT',
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
                          Image(image: AssetImage('img/penyakitkucing.jpg'))),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(right: 8.0, left: 8.0),
                child: Text(
                  'Berikut beberapa penyakit yang harus diketahui jika ingin memelihara kucing : ',
                  style: GoogleFonts.poppins(fontSize: 17),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListPenyakit(
                judul: "1. Feline Panleukopenia Virus (FPV) ",
                isi:
                    '         Nah, virus satu ini merupakan virus paling mematikan untuk kucing. Berilah perhatian lebih pada kucing, karena virus ini tersebar melalui feses, sekresi, muntahan, atau mungkin saja bisa terbawa di pakaian dan sepatu.\n         Lalu, bagaimana gejalanya? Pada kucing dewasa, gejala yang ditunjukkan berupa demam, lemah, dan tidak mau makan. Setelah 1-2 hari demam, kucing akan muntah dan diare yang disertai darah. Pada anak kucing, penyakit ini bisa menimbulkan kematian  mendadak tanpa gejala.',
              ),
              ListPenyakit(
                  judul: "2. Feline Calici Virus",
                  isi:
                      '         Feline Calici Virus dengan sigapnya menyerang saluran pernafasan, mulut, pencernaan, otot dan tulang. Gejala yang ditunjukkan adalah hilangnya nafsu makan, mata berair, hidung berlendir, luka pada lidah dan bibir, sulit bernapas dan sakit sendi. Pada kasus berat, bahkan pneumonia, hepatitis, dan pendarahan bisa terjadi.\n         Hati-hati, ya. Feline Calici ini bisa menular melalui lendir mata dan hidung, penghirupan virus dari bersin, penggunaan mangkuk makan dan litterbox bersama, dan kontaminasi lingkungan.'),
              ListPenyakit(
                  judul: "3. Chlmydophilosis ",
                  isi:
                      '         Jika kamu memiliki kucing dengan umur 5-12 minggu, kamu harus menjaganya lebih ketat lagi. Penyakit mematikan ini disebabkan oleh bakteri Chlamydiasis felis.\n         Gejala yang ditunjukkan berupa demam, hidung berair, sering bersin, hilang nafsu makan, dan mata yang meradang. Kalau tidak diobati, infeksi mata akan bertambah parah dalam 2 bulan dan dapat menularkan kucing lainnya melalui lendir matanya, bahkan hingga beberapa bulan.\n          Waktu pengobatannyapun memakan waktu yang lumayan lama, sekitar 3-4 minggu. Jika mata kucing sudah sangat parah dan tidak dapat diselamatkan, perlu adanya tindakan operasi untuk mengangkat bola matanya (enukleasi).'),
              ListPenyakit(
                judul: "4. Feline Rhinotracheitis",
                isi:
                    "          Penyakit Feline Rhinotracheitis ini sangat membahayakan saluran nafas bagian atas. Datang dari virus herpes, penyakit ini akan sangat berisiko tertular pada kucing dengan kekebalan tubuh yang buruk maupun induk kucing yang sedang hamil.\n         Ciri-ciri yang ditunjukkan dari penyakit ini berupa bersin yang tidak terkontrol, keluarnya lendir bening atau hijau dari hidung, hilang kemampuan kucing dalam mencium bau, mata mengeluarkan kotoran, radang mata, sering memejamkan mata, demam, lemas, dan bahkan hingga keguguran.\n         Meski begitu, gejala yang ada bisa membaik dalam 7-10 hari dan segera sembuh jika kekebalan tubuh, nutrisi, dan cairan tubuh kucing terjaga.",
              ),
              ListPenyakit(
                judul: "5. Feline Infectious Peritonitis",
                isi:
                    "          Penyakit ini disebabkan oleh virus Feline coronavirus (FCoV). Penularannya  terjadi melalui liur atau feses, dan melalui plasenta dari induk ke anak. Tingkat keganasan penyakit ini juga tergantung pada sistem kekebalan tubuh kucing yang terjangkit.",
              ),
              ListPenyakit(
                judul: '6. Feline Immunodefisiensi Virus',
                isi:
                    "          Virus ini bisa dibilang merupakan virus yang lambat. Kucing yang terinfeksi, biasanya tidak menunjukkan gejala sampai beberapa tahun sejak infeksi awal. Hal ini hampir serupa dengan penyakit HIV pada manusia. Kucing yang terserang, kekebalan tubuhnya akan menjadi rendah dan mudah terserang berbagai penyakit. - drh. Nalia Putriyanda\n          Jika kamu memelihara kucing namun sering melepasnya ke luar rumah, hati-hatilah. Tindakannya yang angresif dan suka berkelahi dapat meningkatkan risiko terkena virus ini. Hal ini disebabkan oleh cara penularannya yang sangat mudah yaitu melalui luka gigitan, penularan induk ke anak melalui jalan lahir atau melalui ASI.",
              ),
              ListPenyakit(
                judul: "7. Feline Leukimia Virus",
                isi:
                    "          Secara umum, virus ini hampir sama dengan FIV karena sama-sama menyerang kekebalan tubuh. Kondisi kucing yang terserang virus ini akan menurun dalam tiga tahun, hingga mengalami kematian.\n          Gejalanyapun dengan FIV serupa. Hanya saja, penularan virus ini bisa terjadi dari kucing yang terlihat sehat. Kucing dengan kondisi sepert itu dinamakan bersifat carrier.",
              ),
              Container(
                padding: EdgeInsets.only(left: 10, bottom: 20),
                child: Text(
                  'Wah, tak disangka, banyak sekali penyakit mematikan pada kucing, ya. Semoga dengan membaca artikel ini bisa membantu kamu untuk lebih menjaga kucing tersayang di rumah.',
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

class ListPenyakit extends StatelessWidget {
  ListPenyakit({this.judul, this.isi});

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
