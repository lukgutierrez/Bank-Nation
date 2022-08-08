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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
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
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 300.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextField(
                      controller: _destinatario,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          hintText: "Destinatario:",
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.black)),
                    ),
                    TextField(
                      controller: _cuit,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          hintText: "CUIT:",
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.black)),
                    ),
                    TextField(
                      controller: _banco,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          hintText: "Banco:",
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.black)),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
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
                    MaterialPageRoute(builder: (context) => TaskTwo()),
                  );
                },
                child: Text("SIGUIENTE"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
