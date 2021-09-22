import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

Future? _launched;

Future _callUsers(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

Future<void> _mailUsers(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

Future<void> _launchUniversalLinkIos(String url) async {
  if (await canLaunch(url)) {
    final bool nativeAppLaunchSucceeded = await launch(
      url,
      forceSafariVC: false,
      universalLinksOnly: true,
    );
    if (!nativeAppLaunchSucceeded) {
      await launch(
        url,
        forceSafariVC: true,
      );
    }
  }
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Expanded(
                  child: Image(
                    height: MediaQuery.of(context).size.height / 3,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    image: AssetImage('img/backgroundimage.jpg'),
                  ),
                ),
                Positioned(
                  bottom: -60.0,
                  child: CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('img/fotoprofil.jpg'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50.0,
            ),
            Container(
              child: ListTile(
                title: Center(
                    child: Text(
                  'Muhammad Irvan',
                  style: GoogleFonts.concertOne(fontWeight: FontWeight.bold),
                )),
                subtitle: Center(child: Text('Hanya Manusia Biasa', style: GoogleFonts.concertOne(),)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () => setState(() {
                    _launched = _launchUniversalLinkIos(
                        'https://www.instagram.com/irvannih_/');
                  }),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.amber),
                        shape: BoxShape.circle),
                    child: FaIcon(
                      FontAwesomeIcons.instagram,
                      size: 25,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () => setState(() {
                    _launched = _callUsers('tel:+6282112367972');
                  }),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.amber),
                        shape: BoxShape.circle),
                    child: Icon(
                      Icons.call,
                      size: 25,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () => setState(() {
                    _launched = _mailUsers('mailto:mirvan3107@gmail.com');
                  }),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.amber),
                        shape: BoxShape.circle),
                    child: Icon(
                      Icons.mail,
                      size: 25,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              title: Text(
                'About Me',
                style: GoogleFonts.concertOne(fontWeight: FontWeight.bold),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                    'Saya tinggal di Jakarta.\n\nHobi saya bermain Game Online.\n\nSaya sedang mencoba membuat aplikasi dari Flutter Framework.', style: GoogleFonts.concertOne(),),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Terima Kasih', style: GoogleFonts.concertOne(fontSize: 20, fontWeight: FontWeight.bold),)),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
