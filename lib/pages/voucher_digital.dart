import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:bank_nation/pages/Image_generate.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:share_plus/share_plus.dart';
import 'package:path_provider/path_provider.dart';

class ImagePage extends StatefulWidget {
  final String _destinatario;
  final String _alias;
  final String _banco;
  final String _cuit;
  final String dinero;
  final String cbu;
  final String _numtrancion;

  final path;
  ImagePage(this._destinatario, this._cuit, this._banco, this.path, this.dinero,
      this.cbu, this._alias, this._numtrancion);

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
      pixelRatio: 100.0,
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
          backgroundColor: ui.Color(0xFFF32AFDF),
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Center(
            child: GestureDetector(
                onTap: () async {
                  var path = await generateImage();
                  Share.shareFiles([path]);
                },
                child: Icon(Icons.share)),
          ),
        ),
        body: ListView(
          children: [
            RepaintBoundary(
                key: _keyBoundary,
                //CAMBIAR TAMAÑO DE LA IMAGEN***************************************************
                child: SizedBox(
                    width: 500,
                    height: 1280,
                    child: VoucherDigital(
                        widget._banco,
                        widget._destinatario,
                        widget._cuit,
                        widget.dinero,
                        widget.cbu,
                        widget._alias,
                        widget._numtrancion)))
          ],
        ));
  }
}
