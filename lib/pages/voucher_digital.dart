import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:share_plus/share_plus.dart';

import 'package:path_provider/path_provider.dart';

class ImagePage extends StatefulWidget {
  final path;
  ImagePage(this.path);

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  final GlobalKey _keyBoundary = GlobalKey();

  Uint8List? _memoryimage;
  Future generateImage() async {
    final currentContext = _keyBoundary.currentContext;
    final boundary =
        currentContext!.findRenderObject() as RenderRepaintBoundary?;
    final image = await boundary!.toImage(
      pixelRatio: 5.0,
    );
    final bytes = await image.toByteData(format: ui.ImageByteFormat.png);

    setState(() {
      _memoryimage = bytes!.buffer.asUint8List();
    });

    Directory imagepng = await getApplicationDocumentsDirectory();
    String imagePath = '${imagepng.path}/bank_nation.png';
    final file = File(imagePath);
    var path = await file.writeAsBytes(_memoryimage!);

    return path.path;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
              onTap: () async {
                var path = await generateImage();
                Share.shareFiles([path]);
              },
              child: Icon(Icons.abc)),
        ),
        body: ListView(
          children: [
            RepaintBoundary(
                key: _keyBoundary,
                child: SizedBox(
                    width: 558.0, height: 1600.0, child: VoucherDigital()))
          ],
        ));
  }
}

class VoucherDigital extends StatelessWidget {
  const VoucherDigital({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 100.0,
            decoration: BoxDecoration(
              color: Color(0xFFF32AFDF),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(25),
                bottomLeft: Radius.circular(25),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    child: Image(image: AssetImage("assets/image/money.png"))),
                Text(
                  "Transferir",
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                )
              ],
            ),
          ),
          Stack(children: [
            Container(
              child: Image(image: AssetImage("assets/image/payt.png")),
            ),
            Center(
              child: Container(
                height: 300,
                width: 200,
                child: Image(image: AssetImage("assets/image/logo.png")),
              ),
            )
          ])
        ],
      ),
    );
  }
}


//Dimesiones de la Imagen:
//ancho : 558
//alto: 1600