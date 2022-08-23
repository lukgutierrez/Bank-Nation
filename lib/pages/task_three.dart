import 'package:bank_nation/pages/test.dart';
import 'package:bank_nation/pages/voucher_digital.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TaskThree extends StatelessWidget {
  final String dinero;
  final String _destinatario;
  final String _banco;
  final String _alias;
  final String _cuit;
  final String cbu;

  const TaskThree(this.dinero, this._destinatario, this._cuit, this._banco,
      this._alias, this.cbu);

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String FechaActual = DateFormat("dd/MM/yyyy HH:mm:ss", 'es_ES').format(now);
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              automaticallyImplyLeading: false,
              floating: true,
              snap: true,
              elevation: 0,
              backgroundColor: Color(0xFFF32AFDF),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      width: 30.0,
                      height: 30.0,
                      child:
                          Image(image: AssetImage("assets/image/money.png"))),
                  Text(
                    "Transferir",
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                ],
              ),
            ),
          ],
          body: ListView(
            children: [
              Stack(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                          height: 85.0,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xFFF32AFDF),
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(22),
                              bottomLeft: Radius.circular(22),
                            ),
                          )),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Positioned(
                            left: 10.0,
                            bottom: -100,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20)),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black26,
                                        blurRadius: 15.0,
                                        offset: Offset(0.0, 0.75))
                                  ],
                                  color: Colors.white),
                              width: 340.0,
                              height: 1060.0,
                              child: Column(
                                children: [
                                  //ETAPA N° 1*****************************************************

                                  Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(20),
                                              topRight: Radius.circular(20)),
                                          color: Color(0xFFF39555)),
                                      width: 340.0,
                                      height: 200.0,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Divider(
                                            height: 0.5,
                                            color: Colors.transparent,
                                          ),
                                          SizedBox(
                                            width: 70.0,
                                            height: 70.0,
                                            child: Image(
                                                image: AssetImage(
                                                    "assets/image/check.png")),
                                          ),
                                          Text(
                                            "Transferencia Exitosa",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 25.0,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Divider(
                                            height: 0.5,
                                            color: Colors.transparent,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  //ETAPA N°2************************************************************
                                  Stack(
                                    children: [
                                      Container(
                                        width: 340.0,
                                        height: 190.0,
                                        child: Image(
                                            image: AssetImage(
                                                "assets/image/ADN.png")),
                                      ),
                                      Container(
                                        width: 340.0,
                                        height: 190.0,
                                        child: Column(
                                          children: [
                                            Divider(
                                              height: 30,
                                              color: Colors.transparent,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "Monto",
                                                  style: TextStyle(
                                                      color: Color(0xFFF32AFDF),
                                                      fontSize: 20.0),
                                                ),
                                                SizedBox(
                                                    width: 25.0,
                                                    height: 25.0,
                                                    child: Image(
                                                      image: AssetImage(
                                                          "assets/image/dolar.png"),
                                                      color: Color(0xFFF0889BB),
                                                    )),
                                              ],
                                            ),
                                            Divider(
                                              height: 30,
                                              color: Colors.transparent,
                                            ),
                                            Text(
                                              _alias,
                                              style: TextStyle(
                                                  fontSize: 60.0,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xFFF39555)),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  //ETAPA N° 3****************************************************************************************************

                                  Column(
                                    children: [
                                      ListDate("Para ", dinero, 1, 5),
                                      Divider(
                                        color: Colors.black38,
                                      ),
                                      ListDate("CUIT ", _banco, 1, 5),
                                      Divider(
                                        color: Colors.black38,
                                      ),
                                      ListDate("Alias ", _cuit, 1, 5),
                                      Divider(
                                        color: Colors.black38,
                                      ),
                                      ListDate("Banco ", _destinatario, 2, 8),
                                      Divider(
                                        color: Colors.black38,
                                      ),
                                      ListDate("Motivo ", "", 4, 4),
                                      Divider(
                                        color: Colors.black38,
                                      ),
                                      ListDate("Fechas ", FechaActual, 2, 7),
                                      Divider(
                                        color: Colors.black38,
                                      ),
                                      ListDate("Cuenta Origen ",
                                          r"CA $****96472", 4, 5),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  //BOTOM COMPARTIR COMPROBANTE *****************************************************************************************************************************
                  Positioned(
                    left: 340.0,
                    top: 180.0,
                    child: GestureDetector(
                      child: Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40.0),
                            topRight: Radius.circular(40.0),
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 15.0,
                                offset: Offset(0.0, 0.75))
                          ],
                        ),
                        child:
                            Image(image: AssetImage("assets/image/share.png")),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ImagePage(_alias, cbu,
                                    dinero, _cuit, _banco, _destinatario, "")));
                      },
                    ),
                  ),
                  //FIN BOTOM COMPARTIR COMPROBANTE********************************************************************************************************************************************************************************
                ],
              ),
              Divider(height: 40.0, color: Colors.transparent),

              //BOTONES FINALES**************************************************************************************************************
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFFF39555)),
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(50),
                              bottomLeft: Radius.circular(50),
                              topLeft: Radius.circular(50),
                              topRight: Radius.circular(50)),
                          color: Colors.transparent,
                        ),
                        height: 45.0,
                        width: 15,
                        child: Center(
                          child: Text(
                            "Finalizar",
                            style: TextStyle(
                                fontSize: 17.0, color: Color(0xFFF39555)),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 45.0,
                      width: 20.0,
                    ),
                    Expanded(
                      flex: 1,
                      child: SizedBox(
                        height: 45.0,
                        width: 180.0,
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Color(0xFFF39555)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              ))),
                          onPressed: () {},
                          child: Text(
                            "Otra Transferencia",
                            style: TextStyle(fontSize: 17.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //FIN BOTONES FINALES*************************************************************************************************************************************************
              Divider(height: 30.0, color: Colors.transparent),
            ],
          ),
        ),
      ),
    );
  }
}

ListDate(date1, date2, flexz1, flexz2) {
  return Container(
    height: 80.0,
    width: 340.0,
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Expanded(
              flex: flexz1,
              child: Text(
                date1,
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w200,
                    color: Colors.black),
              )),
          Expanded(
            flex: flexz2,
            child: Text(
              date2,
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFFF0C7287)),
            ),
          ),
        ],
      ),
    ),
  );
}
