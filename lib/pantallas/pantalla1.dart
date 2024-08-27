import 'package:flutter/material.dart';
import 'package:movil_go_trade/widgets/CustomAppBar.dart';
import 'package:movil_go_trade/widgets/MovimientoItem.dart';

class Pantalla1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "eClub", showBackButton: false,),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color(0xFFF7F0ED),
        child: Column(
          children: [
            _Contenedor(),
            const SizedBox(height: 50),
            Container(
              margin: const EdgeInsets.only(left: 25, right: 25),
              width: double.infinity,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Movimientos",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MovimientosContenedor()
                ],
              ),
            )
          ],
        )));
  }
}

class MovimientosContenedor extends StatelessWidget {
  const MovimientosContenedor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        MovimientoItem(
          imagePath: "entretenimiento.png",
          titulo: "Playstation Network",
          tipo: "Entretenimiento",
          monto: "1.000 Gs.",
          fecha: "08/06/2022",
        ),
        SizedBox(height: 15,),
        MovimientoItem(
          imagePath: "retiros.png",
          titulo: "Banco Regional",
          tipo: "Retiros",
          monto: "150.000Gs",
          fecha: "07/06/2022",
        ),
        SizedBox(height: 15,),
        MovimientoItem(
          imagePath: "salud.png",
          titulo: "Punto Farma",
          tipo: "Salud",
          monto: "+1.000.0000Gs",
          fecha: "08/06/2022",
        ),
        SizedBox(height: 15,),
        MovimientoItem(
          imagePath: "transporte.png",
          titulo: "Uber",
          tipo: "Transporte",
          monto: "150.000Gs",
          fecha: "07/06/2022",
        ),
        SizedBox(height: 15,),
        MovimientoItem(
          imagePath: "compras.png",
          titulo: "Feria Asunción",
          tipo: "Compras",
          monto: "+1.000.0000Gs",
          fecha: "08/06/2022",
        ),
        SizedBox(height: 15,),
        MovimientoItem(
          imagePath: "transporte.png",
          titulo: "Uber",
          tipo: "Transporte",
          monto: "150.000Gs",
          fecha: "07/06/2022",
        )
      ]
    );
  }
}


class _Contenedor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height * 0.30,
      decoration: _DecoracionContenedor(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Column(
              children: [
                const Text(
                  'Disponible',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Gs. 2.000.080",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    const SizedBox(width: 15),
                    Image.asset(
                      "assets/img/ojo.png",
                      width: 35,
                      height: 35,
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  BoxDecoration _DecoracionContenedor() => const BoxDecoration(
      borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
      gradient: LinearGradient(
          colors: [Color(0xFFF00E51), Color(0xFFFF6720), Color(0xFFFF9E1B)]));
}
