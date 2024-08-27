import 'package:flutter/material.dart';
import 'package:movil_go_trade/widgets/CustomAppBar.dart';

class Pantalla5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(title: "Movimientos"),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Operación:",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                          Text(
                            "Restaurantes y bares",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Fecha:",
                            style: TextStyle(fontSize: 18, color: Color(0xFF888787)),
                          ),
                          Text(
                            "05/06/2022",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Hora:",
                            style: TextStyle(fontSize: 18, color: Color(0xFF888787)),
                          ),
                          Text(
                            "20.06 hs",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Cod. de referencia:",
                            style: TextStyle(fontSize: 18, color: Color(0xFF888787)),
                          ),
                          Text(
                            "215665756903",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            )));
  }
}
class _Contenedor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height * 0.25,
      decoration: _DecoracionContenedor(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: const Column(
              children: [
                Text(
                  'EL CAFE DE ACA       ASUNCPR',
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Gs. 57.000",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
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
