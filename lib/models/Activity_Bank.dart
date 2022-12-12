import 'package:bank_nation/database/datamoney.dart';
import 'package:bank_nation/database/page/hive_data.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ActivityBank extends StatefulWidget {
  final String cbu;
  final String dinero;
  final String _destinatario;
  final String _banco;
  final String _cuit;
  final String _alias;

  const ActivityBank(this._destinatario, this._cuit, this.dinero, this.cbu,
      this._banco, this._alias);

  @override
  State<ActivityBank> createState() => _ActivityBankState();
}

class _ActivityBankState extends State<ActivityBank> {
  final HiveData hiveData = const HiveData();
  List<DataMoney> datamoney = [];

  @override
  void initState() {
    getData();
    super.initState();
  }

  Future<void> getData() async {
    datamoney = await hiveData.contact;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    String pdf = r"$";
    DateTime now = DateTime.now();
    String FechaActual = DateFormat("dd/MM/yyyy HH:mm:ss", 'es_ES').format(now);
    return Scaffold(
        body: CustomScrollView(slivers: [
      SliverAppBar(
        actions: [
          IconButton(
              onPressed: () async {
                await hiveData.saveDataMoney(DataMoney(
                    nametitular: widget._destinatario,
                    dineromenos: widget.dinero,
                    saldoactual: widget._alias,
                    fecha: FechaActual));
                await getData();
              },
              icon: Icon(Icons.more_vert))
        ],
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
      SliverAppBar(
        backgroundColor: Colors.white,
        expandedHeight: 80,
        flexibleSpace: FlexibleSpaceBar(
          background: Column(
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
            ],
          ),
        ),
      ),
      SliverList(
        delegate: SliverChildBuilderDelegate((context, int index) {
          return ListTile(
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Transferencia a ${datamoney[index].dineromenos}...",
                style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFFF0C7287),
                    fontWeight: FontWeight.w500),
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(datamoney[index].fecha),
            ),
            leading: Image(image: AssetImage("assets/image/logo2.png")),
            trailing: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "$pdf ${datamoney[index].nametitular}",
                style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFFF979797),
                    fontWeight: FontWeight.w700),
              ),
            ),
          );
        }),
      )
    ]));
  }
  // ListView.builder(
  //   reverse: true,
  //   itemCount: datamoney.length,
  //   itemBuilder: (context, index) => Dismissible(
  //     background: Container(
  //       color: Color(0xFFF32AFDF),
  //       child: Center(
  //           child: Text(
  //         "DELETE",
  //         style: TextStyle(
  //           fontSize: 15,
  //           color: Colors.white,
  //         ),
  //       )),
  //     ),
  //     key: UniqueKey(),
  //     child: ListTile(
  //       title: Padding(
  //         padding: const EdgeInsets.all(8.0),
  //         child: Text(
  //           "Transferencia a ${datamoney[index].dineromenos}...",
  //           style: TextStyle(
  //               fontSize: 18,
  //               color: Color(0xFFF0C7287),
  //               fontWeight: FontWeight.w500),
  //         ),
  //       ),
  //       subtitle: Padding(
  //         padding: const EdgeInsets.all(8.0),
  //         child: Text(datamoney[index].fecha),
  //       ),
  //       leading: Image(image: AssetImage("assets/image/logo2.png")),
  //       trailing: Padding(
  //         padding: const EdgeInsets.all(8.0),
  //         child: Text(
  //           "$pdf ${datamoney[index].nametitular}",
  //           style: TextStyle(
  //               fontSize: 18,
  //               color: Color(0xFFF979797),
  //               fontWeight: FontWeight.w700),
  //         ),
  //       ),
  //     ),
  //   ),
  // ),

}
