import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ActivityBank extends StatelessWidget {
  final String cbu;
  final String dinero;
  final String _destinatario;
  final String _banco;
  final String _cuit;
  final String _alias;
  const ActivityBank(this._destinatario, this._cuit, this.dinero, this.cbu,
      this._banco, this._alias);

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String FechaActual = DateFormat("dd/MM/yyyy HH:mm:ss", 'es_ES').format(now);
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        backgroundColor: Color(0xFFF32AFDF),
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                width: 35.0,
                height: 35.0,
                child: Image(image: AssetImage("assets/image/act.png"))),
            Text(
              "Tu actividad",
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            )
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
              height: 30.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFF32AFDF),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(25),
                  bottomLeft: Radius.circular(25),
                ),
              )),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(0),
                    bottomLeft: Radius.circular(0),
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(0)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 5.0,
                      offset: Offset(0.0, 0.0))
                ],
                color: Colors.white),
            child: Image(image: AssetImage("assets/image/page.png")),
          ),
          //******************************************************************************************************+ */
          ListTile(
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Transferencia a $dinero...",
                style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFFF0C7287),
                    fontWeight: FontWeight.w500),
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(FechaActual),
            ),
            leading: Image(image: AssetImage("assets/image/logo2.png")),
            trailing: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "S $_destinatario",
                style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFFF979797),
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Divider(
              height: 1,
              color: Color(0xFFF979797),
            ),
          ),
          Lista(
              "Trasferencia a HECTOR..", r"$ 6.500,00", "16/09/2022 21:10:16"),
          Padding(
              padding: const EdgeInsets.all(15.0),
              child: Divider(
                height: 1,
                color: Color(0xFFF979797),
              )),
          Lista("Trasferencia a MICAELA...", r"$ 9.580,00",
              "08/09/2022 20:10:16"),
          Padding(
              padding: const EdgeInsets.all(15.0),
              child: Divider(
                height: 1,
                color: Color(0xFFF979797),
              )),
          Lista(
              "Trasferencia a DULCE...", r"$ 21.000,00", "30/08/2022 11:20:10"),
          Padding(
              padding: const EdgeInsets.all(15.0),
              child: Divider(
                height: 1,
                color: Color(0xFFF979797),
              )),
          Lista(
              "Trasferencia a CARNIC...", r"$ 5.000,00", "21/08/2022 15:50:10"),
          Padding(
              padding: const EdgeInsets.all(15.0),
              child: Divider(
                height: 1,
                color: Color(0xFFF979797),
              )),
          Lista(
              "Trasferencia a PABLO...", r"$ 18.500,00", "10/08/2022 17:40:50"),
          Padding(
              padding: const EdgeInsets.all(15.0),
              child: Divider(
                height: 1,
                color: Color(0xFFF979797),
              )),
          Lista("Trasferencia a COMUNICACIO...", r"$ 18.500,00",
              "10/08/2022 18:60:40"),
          Padding(
              padding: const EdgeInsets.all(15.0),
              child: Divider(
                height: 1,
                color: Color(0xFFF979797),
              )),
          Lista(
              "Trasferencia a ROCIO...", r"$ 18.500,00", "05/08/2022 16:40:30"),
          Padding(
              padding: const EdgeInsets.all(15.0),
              child: Divider(
                height: 1,
                color: Color(0xFFF979797),
              )),
          Lista("Trasferencia a CARLOS...", r"$ 18.500,00",
              "01/08/2022 07:10:50"),
          Padding(
              padding: const EdgeInsets.all(15.0),
              child: Divider(
                height: 1,
                color: Color(0xFFF979797),
              )),
        ],
      ),
    );
  }
}

Lista(people, montotrs, fecha) {
  return ListTile(
    title: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        people,
        style: TextStyle(
            fontSize: 18,
            color: Color(0xFFF0C7287),
            fontWeight: FontWeight.w500),
      ),
    ),
    subtitle: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(fecha),
    ),
    leading: Image(image: AssetImage("assets/image/logo2.png")),
    trailing: Text(
      montotrs,
      style: TextStyle(
          fontSize: 18, color: Color(0xFFF979797), fontWeight: FontWeight.w700),
    ),
  );
}
