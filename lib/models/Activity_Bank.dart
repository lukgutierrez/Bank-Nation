import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ActivityBank extends StatelessWidget {
  const ActivityBank({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String FechaActual = DateFormat("dd/MM/yyyy HH:mm:ss", 'es_ES').format(now);
    return Scaffold(
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
                "Trasferencia a JUAN...",
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
                "S 2.5000",
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
          Lista("Trasferencia CARLOS...", "S 9.000", "23/09/2022"),
          Padding(
              padding: const EdgeInsets.all(15.0),
              child: Divider(
                height: 1,
                color: Color(0xFFF979797),
              )),
          Lista("Trasferencia CARLOS...", "S 9.000", "23/09/2022"),
          Padding(
              padding: const EdgeInsets.all(15.0),
              child: Divider(
                height: 1,
                color: Color(0xFFF979797),
              )),
          Lista("Trasferencia CARLOS...", "S 9.000", "23/09/2022"),
          Padding(
              padding: const EdgeInsets.all(15.0),
              child: Divider(
                height: 1,
                color: Color(0xFFF979797),
              )),
          Lista("Trasferencia CARLOS...", "S 9.000", "23/09/2022"),
          Padding(
              padding: const EdgeInsets.all(15.0),
              child: Divider(
                height: 1,
                color: Color(0xFFF979797),
              )),
          Lista("Trasferencia PABLO...", "S 9.000", "10/08/2022 10:20:40"),
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
