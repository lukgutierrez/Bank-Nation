import 'package:flutter/material.dart';

class TaskThree extends StatelessWidget {
  const TaskThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF32AFDF),
        elevation: 0,
        automaticallyImplyLeading: false,
        //leading: Image(image: AssetImage("assets/image/flex.png")),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                width: 30.0,
                height: 30.0,
                child: Image(image: AssetImage("assets/image/money.png"))),
            Text(
              "Transferir",
              style: TextStyle(color: Colors.white, fontSize: 18.0),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                  height: 75.0,
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
                          Container(
                            width: 340.0,
                            height: 190.0,
                            //color: Colors.yellow,
                            child: Column(
                              children: [
                                Divider(
                                  height: 30,
                                  color: Colors.transparent,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
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
                                  "2.570,00",
                                  style: TextStyle(
                                      fontSize: 60.0,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFFF39555)),
                                )
                              ],
                            ),
                          ),
                          //ETAPA N° 3****************************************************************************************************

                          Column(
                            children: [
                              ListDate("Para ",
                                  "LUCIANO GUTIERREZ AGUSTIN CARLOS", 1, 5),
                              Divider(
                                color: Colors.black38,
                              ),
                              ListDate("CUIT ", "27432678724", 1, 5),
                              Divider(
                                color: Colors.black38,
                              ),
                              ListDate("Alias ", "COSMOS.ATOMO.MADERA.POLLERIA",
                                  1, 5),
                              Divider(
                                color: Colors.black38,
                              ),
                              ListDate("Banco ", "SANTANDER", 2, 8),
                              Divider(
                                color: Colors.black38,
                              ),
                              ListDate("Motivo ", "", 4, 4),
                              Divider(
                                color: Colors.black38,
                              ),
                              ListDate("Fechas ", "09/07/2022 11:42:50", 2, 7),
                              Divider(
                                color: Colors.black38,
                              ),
                              ListDate(
                                  "Cuenta Origen ", r"CA $****96472", 4, 5),
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
          Divider(height: 30.0, color: Colors.transparent),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    height: 45.0,
                    width: 180.0,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                      ),
                      // style: (

                      //     backgroundColor:
                      //         MaterialStateProperty.all(Colors.white),
                      //     shape:
                      //         MaterialStateProperty.all<RoundedRectangleBorder>(

                      //             RoundedRectangleBorder(
                      //       side: BorderSide(color: Color(0xFFF39555)),
                      //       borderRadius: BorderRadius.circular(50.0),
                      //     ))),
                      onPressed: () {},
                      child: Text(
                        "Finalizar",
                        style:
                            TextStyle(fontSize: 18.0, color: Color(0xFFF39555)),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 45.0,
                  width: 15,
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
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
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
          Divider(height: 50.0, color: Colors.transparent),
        ],
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
