import 'package:bank_nation/pages/task_two.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _destinatario = TextEditingController(text: "");
  TextEditingController _banco = TextEditingController(text: "");
  TextEditingController _cuit = TextEditingController(text: "");
  TextEditingController _alias = TextEditingController(text: "");
  TextEditingController _numtrancion = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            //ICONO BNA+************************************************************
            Container(
              height: 150.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50),
                ),
              ),
              alignment: Alignment.center,
              child: SizedBox(
                  width: 150.0,
                  height: 150.0,
                  child: Image(image: AssetImage("assets/image/logo.png"))),
            ),
            //TEXTFIELD*************************************************************
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Divider(
                    height: 50,
                    color: Colors.transparent,
                  ),
                  TextField(
                    keyboardType: TextInputType.text,
                    textCapitalization: TextCapitalization.characters,
                    controller: _destinatario,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        hintText: "Destinatario:",
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w300, color: Colors.black)),
                  ),
                  Divider(
                    height: 50,
                    color: Colors.transparent,
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: _cuit,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        hintText: "CUIT:",
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w300, color: Colors.black)),
                  ),
                  Divider(
                    height: 50,
                    color: Colors.transparent,
                  ),
                  TextField(
                    keyboardType: TextInputType.text,
                    textCapitalization: TextCapitalization.characters,
                    controller: _banco,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        hintText: "Banco:",
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w300, color: Colors.black)),
                  ),
                  Divider(
                    height: 50,
                    color: Colors.transparent,
                  ),
                  TextField(
                    keyboardType: TextInputType.text,
                    textCapitalization: TextCapitalization.characters,
                    controller: _alias,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        hintText: "Alias:",
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w300, color: Colors.black)),
                  ),
                  Divider(
                    height: 50,
                    color: Colors.transparent,
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    textCapitalization: TextCapitalization.characters,
                    controller: _numtrancion,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        hintText: "N° Transacción:",
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w300, color: Colors.black)),
                  ),
                  Divider(
                    height: 50,
                    color: Colors.transparent,
                  ),
                ],
              ),
            ),
            //BOTON ******************************************************************+
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 40.0,
                width: 200.0,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFFF39555)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TaskTwo(
                              _destinatario.text,
                              _alias.text,
                              _banco.text,
                              _cuit.text,
                              _numtrancion.text)),
                    );
                  },
                  child: Text("SIGUIENTE"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
