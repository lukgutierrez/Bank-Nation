import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';
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
                child:
                    SizedBox(width: 500, height: 1280, child: VoucherDigital()))
          ],
        ));
  }
}

class VoucherDigital extends StatelessWidget {
  // final String? dinero;
  // final String? _destinatario;
  // final String? _banco;
  // final String? _cuit;
  // const VoucherDigital(
  //     this._destinatario, this._cuit, this.dinero, this._banco);

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String FechaActual = DateFormat("dd/MM/yyyy HH:mm:ss", 'es_ES').format(now);
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 100.0,
            decoration: BoxDecoration(
              color: Color(0xFFF32AFDF),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: Image(image: AssetImage("assets/image/money.png"))),
                Text(
                  "Transferido",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Stack(children: [
            Container(
              child: Image(image: AssetImage("assets/image/fondo.jpg")),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                    ),
                  ],
                ),

                //DESTINATARIO
                Row(
                  children: [
                    Container(
                      width: 33,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Divider(
                          height: 150,
                        ),
                        Text(
                        "dssa",
                          style: TextStyle(
                              color: Color(0xFFF46ADC2),
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
                //CUIT
                Date("ds"),
                //MONTO
                Date("sas"),
                //CBU/CVU
                Date("eew"),
                //BANCO
                Date("holalal"),
                //MOTIVO
                Date("Varios"),
                //N°TRANSFERENCIA
                Date("03099750"),
                //FECHAACTUAL
                Date(FechaActual),
              ],
            )
          ])
        ],
      ),
    );
  }
}

Date(dat) {
  return Row(
    children: [
      Container(
        width: 33,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(
            height: 88,
          ),
          Text(
            dat,
            style: TextStyle(
                color: Color(0xFFF46ADC2),
                fontSize: 18,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    ],
  );
}

//Dimesiones de la Imagen:
//ancho : 558
//alto: 1600