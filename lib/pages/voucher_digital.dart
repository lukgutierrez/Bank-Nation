import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:bank_nation/pages/test.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';
import 'package:share_plus/share_plus.dart';

import 'package:path_provider/path_provider.dart';

class ImagePage extends StatefulWidget {
  final String _destinatario;
  final String _banco;
  final String _cuit;

  final path;
  ImagePage(this._destinatario, this._cuit, this._banco, this.path);

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
                    width: 500,
                    height: 1280,
                    child: VoucherDigital(
                        widget._banco, widget._destinatario, widget._cuit)))
          ],
        ));
  }
}
