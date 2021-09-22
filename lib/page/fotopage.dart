import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transparent_image/transparent_image.dart';

class FotoPage extends StatefulWidget {
  const FotoPage({Key? key}) : super(key: key);

  @override
  _FotoPageState createState() => _FotoPageState();
}

class _FotoPageState extends State<FotoPage> {
  List<String> imageList = [
    'https://cdn.pixabay.com/photo/2018/07/13/10/20/kittens-3535404__480.jpg',
    'https://cdn.pixabay.com/photo/2018/11/29/23/34/cat-3846780__340.jpg',
    'https://cdn.pixabay.com/photo/2018/07/08/14/16/cat-3523992__340.jpg',
    'https://cdn.pixabay.com/photo/2017/02/20/18/03/cat-2083492__340.jpg',
    'https://cdn.pixabay.com/photo/2015/04/23/21/59/tree-736877__340.jpg',
    'https://cdn.pixabay.com/photo/2018/05/30/19/29/kitten-3442257__340.jpg',
    'https://cdn.pixabay.com/photo/2018/08/08/05/12/cat-3591348__340.jpg',
    'https://cdn.pixabay.com/photo/2014/11/30/14/11/cat-551554__340.jpg',
    'https://cdn.pixabay.com/photo/2018/06/03/08/57/cat-3449999__340.jpg',
    'https://cdn.pixabay.com/photo/2018/06/28/14/12/cat-3504008__340.jpg',
    'https://cdn.pixabay.com/photo/2016/03/28/12/35/cat-1285634__340.png',
    'https://cdn.pixabay.com/photo/2014/04/13/20/49/cat-323262__340.jpg',
    'https://cdn.pixabay.com/photo/2015/11/16/14/43/cat-1045782__340.jpg',
    'https://cdn.pixabay.com/photo/2017/07/25/01/22/cat-2536662__340.jpg',
    'https://cdn.pixabay.com/photo/2012/09/11/22/49/cat-56753__340.jpg',
    'https://cdn.pixabay.com/photo/2018/05/14/21/43/british-shorthair-3401683__480.jpg',
    'https://cdn.pixabay.com/photo/2016/07/10/21/47/cat-1508613__480.jpg',
    'https://cdn.pixabay.com/photo/2017/11/09/21/41/cat-2934720__480.jpg',
    'https://cdn.pixabay.com/photo/2016/12/30/12/16/cat-1940489__480.jpg',
    'https://cdn.pixabay.com/photo/2017/11/14/13/06/kitty-2948404__480.jpg',
    'https://cdn.pixabay.com/photo/2016/02/10/16/37/cat-1192026__480.jpg',
    'https://cdn.pixabay.com/photo/2019/11/08/11/56/cat-4611189__480.jpg',
    'https://cdn.pixabay.com/photo/2016/01/20/13/05/cat-1151519__480.jpg'
  ];

  final transformationController = TransformationController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          'FOTO',
          style: GoogleFonts.concertOne(fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        child: StaggeredGridView.countBuilder(
            padding: EdgeInsets.all(10),
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            itemCount: imageList.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  child: FadeInImage.memoryNetwork(
                    placeholder: kTransparentImage,
                    image: imageList[index],
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
            staggeredTileBuilder: (index) {
              return StaggeredTile.count(1, index.isEven ? 0.5 : 1);
            }),
      ),
    );
  }
}
