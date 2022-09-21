import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

class VoucherDigital extends StatelessWidget {
  final String cbu;
  final String dinero;
  final String _destinatario;
  final String _banco;
  final String _cuit;
  final String _alias;
  const VoucherDigital(this._destinatario, this._cuit, this.dinero, this.cbu,
      this._banco, this._alias);

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
                          _destinatario,
                          style: TextStyle(
                              color: Color(0xFFF0C7287),
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ],
                ),
                //CUIT
                Date(cbu),
                //MONTO
                Row(
                  children: [
                    Container(
                      width: 33.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Divider(
                          height: 88,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 15,
                              width: 15,
                              child: Image(
                                image: AssetImage("assets/image/dolar.png"),
                                color: Color(0xFFF0C7287),
                              ),
                            ),
                            Text(
                              _cuit,
                              style: TextStyle(
                                  color: Color(0xFFF0C7287),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),

                //CBU/CVU
                Date(dinero),
                //BANCO
                Date(_banco),
                //MOTIVO
                Date("Varios"),
                //N°TRANSFERENCIA
                Date("04599750"),
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
                color: Color(0xFFF0C7287),
                fontSize: 18,
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    ],
  );
}

//Dimesiones de la Imagen:
//ancho : 558
//alto: 1600