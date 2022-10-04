import 'package:bank_nation/pages/task_three.dart';
import 'package:flutter/material.dart';

class TaskTwo extends StatelessWidget {
  final String _numtrancion;
  final String _destinatario;
  final String _banco;
  final String _cuit;
  final String _alias;
  const TaskTwo(this._destinatario, this._banco, this._alias, this._cuit,
      this._numtrancion);
  @override
  Widget build(BuildContext context) {
    TextEditingController dinero = TextEditingController(text: "");
    TextEditingController cbu = TextEditingController(text: "");

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFF32AFDF),
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: 35.0,
                  height: 35.0,
                  child: Image(image: AssetImage("assets/image/money.png"))),
              Text(
                "Transferir",
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              )
            ],
          ),
        ),
        body: ListView(
          children: [
            //COLOCAR DINERO**************************************************************************************************************************************************
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                    height: 80.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFFF32AFDF),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(25),
                        bottomLeft: Radius.circular(25),
                      ),
                    )),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Positioned(
                      left: 10.0,
                      bottom: -100,
                      child: Stack(
                        children: [
                          Container(
                            width: 340.0,
                            height: 190.0,
                            child: Image(
                                image: AssetImage("assets/image/ADN.png")),
                          ),
                          Container(
                            width: 340.0,
                            height: 190.0,
                            child: Column(
                              children: [
                                Divider(
                                  height: 50,
                                  color: Colors.transparent,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Monto",
                                      style: TextStyle(
                                          color: Color(0xFFF0C7287),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18),
                                    ),
                                    SizedBox(
                                        width: 20.0,
                                        height: 20.0,
                                        child: Image(
                                          image: AssetImage(
                                              "assets/image/dolar.png"),
                                          color: Color(0xFFF0C7287),
                                        )),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextField(
                                      controller: dinero,
                                      keyboardType: TextInputType.number,
                                      cursorColor: Color(0xFFF39555),
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 50.0,
                                          fontWeight: FontWeight.normal,
                                          color: Color(0xFFF39555)),
                                      decoration: InputDecoration(
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color(0xFFFA9A9A9)),
                                          ),
                                          hintText: "0,00",
                                          hintStyle: TextStyle(
                                              fontSize: 50.0,
                                              fontWeight: FontWeight.normal,
                                              color: Color(0xFFF39555)))),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            //FIN**************************************************************************************************************************************************************************
            Divider(
              height: 20,
              color: Colors.transparent,
            ),
            //CUENTA ORIGEN INICIO*******************************************************************************************************************************************************************

            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "Cuenta origen",
                      style: TextStyle(
                          color: Color(0xFFF0C7287),
                          fontSize: 18.0,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  Container(
                    width: 340.0,
                    height: 120.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black26,
                              blurRadius: 15.0,
                              offset: Offset(0.0, 0.75))
                        ],
                        color: Colors.white),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "N° de cuenta",
                                style: TextStyle(
                                    color: Color(0xFFFA9A9A9),
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.normal),
                              ),
                              Divider(
                                height: 10,
                              ),
                              Text(
                                r"CA $****96472",
                                style: TextStyle(
                                    color: Color(0xFFF0C7287),
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(r"$ 959.600,00",
                                  style: TextStyle(
                                      color: Color(0xFFF0C7287),
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.w400)),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: Image(
                                    image: AssetImage("assets/image/bajo.png"),
                                    color: Color(0xFFF39555),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Divider(
              height: 30,
              color: Colors.transparent,
            ),
            //DESTINATARIO****************************************************************************

            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Destinatario",
                    style: TextStyle(
                        color: Color(0xFFF0C7287),
                        fontSize: 18.0,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 340.0,
                    height: 200.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black26,
                              blurRadius: 15.0,
                              offset: Offset(0.0, 0.75))
                        ],
                        color: Colors.white),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Divider(
                              height: 30.0,
                              color: Colors.transparent,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.all(2),
                                        decoration: BoxDecoration(
                                          color: Color(0xFFFA9A9A9),
                                          shape: BoxShape.circle,
                                        ),
                                        width: 10.0,
                                        height: 10.0,
                                      ),
                                      Text("Agenda")
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.all(2),
                                        decoration: BoxDecoration(
                                          color: Color(0xFFFA9A9A9),
                                          shape: BoxShape.circle,
                                        ),
                                        width: 10.0,
                                        height: 10.0,
                                      ),
                                      Text("Alias")
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.all(2),
                                        decoration: BoxDecoration(
                                          color: Color(0xFFF39555),
                                          shape: BoxShape.circle,
                                        ),
                                        width: 10.0,
                                        height: 10.0,
                                      ),
                                      Text(
                                        "CBU/CVU",
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Divider(
                                color: Color(0xFFFA9A9A9),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextField(
                            controller: cbu,
                            keyboardType: TextInputType.number,
                            style: TextStyle(
                                color: Color(0xFFF0C7287),
                                fontWeight: FontWeight.w400),
                            decoration: InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFFFA9A9A9)),
                                ),
                                hintText: "CBU/CVU",
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFFF87A0A5))),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                //BOTON***************************************************************************************
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    height: 40.0,
                    width: 340.0,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xFFF39555)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ))),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TaskThree(
                                  _destinatario,
                                  _alias,
                                  _banco,
                                  _cuit,
                                  dinero.text,
                                  cbu.text,
                                  _numtrancion)),
                        );
                      },
                      child: Text("Transferir"),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
