import 'package:flutter/material.dart';
import 'package:movil_go_trade/pantallas/pantalla3.dart';
import 'package:movil_go_trade/widgets/CustomAppBar_2.dart';

class Pantalla2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar2(title: "Análisis", showBackButton: false,),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: const Color(0xFFF7F0ED),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                  ),
                  child: Image.asset(
                    "assets/img/analisis_2.png",
                    width: 85,
                    height: 85,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text("¿Qué deseas revisar?",
                    style: TextStyle(
                        color: Color(0xFFF00E51),
                        fontSize: 30,
                        fontWeight: FontWeight.w500)),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 175,
                      padding: const EdgeInsets.all(30),
                      decoration: const BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/img/ingresos.png",
                            width: 80,
                            height: 80,
                          ),
                          const Text(
                            "Ingresos",
                            style: TextStyle(
                                color: Color(0xFFF00E51),
                                fontSize: 23,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 175,
                      padding: const EdgeInsets.all(30),
                      decoration: const BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Pantalla3()),
                          );
                        },
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/img/gastos.png",
                              width: 80,
                              height: 80,
                            ),
                            const Text(
                              "Gastos",
                              style: TextStyle(
                                  color: Color(0xFFF00E51),
                                  fontSize: 23,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
