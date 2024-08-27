import 'package:flutter/material.dart';
import 'package:movil_go_trade/pantallas/pantalla5.dart';
import 'package:movil_go_trade/widgets/Boton.dart';
import 'package:movil_go_trade/widgets/Circulo.dart';
import 'package:movil_go_trade/widgets/CustomAppBar_2.dart';
import 'package:movil_go_trade/widgets/MovimientoItem.dart';

class Pantalla4 extends StatefulWidget {
  @override
  _Pantalla4State createState() => _Pantalla4State();
}

class _Pantalla4State extends State<Pantalla4> {
  String _selectedItem = "Enero 2022";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar2(title: "Gastos"),
      body: Container(
        padding: EdgeInsets.all(10),
        color: Color(0xFFF7F0ED),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Item(
                    titulo: "Enero 2022",
                    isSelected: _selectedItem == "Enero 2022",
                    onTap: () => _onItemTapped("Enero 2022"),
                  ),
                  Item(
                    titulo: "Febrero 2022",
                    isSelected: _selectedItem == "Febrero 2022",
                    onTap: () => _onItemTapped("Febrero 2022"),
                  ),
                  Item(
                    titulo: "Marzo 2022",
                    isSelected: _selectedItem == "Marzo 2022",
                    onTap: () => _onItemTapped("Marzo 2022"),
                  ),
                  Item(
                    titulo: "Abril 2022",
                    isSelected: _selectedItem == "Abril 2022",
                    onTap: () => _onItemTapped("Abril 2022"),
                  ),
                  Item(
                    titulo: "Mayo 2022",
                    isSelected: _selectedItem == "Mayo 2022",
                    onTap: () => _onItemTapped("Mayo 2022"),
                  ),
                  Item(
                    titulo: "Junio 2022",
                    isSelected: _selectedItem == "Junio 2022",
                    onTap: () => _onItemTapped("Junio 2022"),
                  ),
                  Item(
                    titulo: "Julio 2022",
                    isSelected: _selectedItem == "Julio 2022",
                    onTap: () => _onItemTapped("Julio 2022"),
                  ),
                  Item(
                    titulo: "Agosto 2022",
                    isSelected: _selectedItem == "Agosto 2022",
                    onTap: () => _onItemTapped("Agosto 2022"),
                  ),
                  Item(
                    titulo: "Septiembre 2022",
                    isSelected: _selectedItem == "Septiembre 2022",
                    onTap: () => _onItemTapped("Septiembre 2022"),
                  ),
                  Item(
                    titulo: "Octubre 2022",
                    isSelected: _selectedItem == "Octubre 2022",
                    onTap: () => _onItemTapped("Octubre 2022"),
                  ),
                  Item(
                    titulo: "Noviembre 2022",
                    isSelected: _selectedItem == "Noviembre 2022",
                    onTap: () => _onItemTapped("Noviembre 2022"),
                  ),
                  Item(
                    titulo: "Diciembre 2022",
                    isSelected: _selectedItem == "Diciembre 2022",
                    onTap: () => _onItemTapped("Diciembre 2022"),
                  ),
                ],
              ),
            ),
            Circulo(),
            MovimientosContenedor(),
            Boton(
              text: 'Ver extracto',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Pantalla5()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  // Método para actualizar el ítem seleccionado
  void _onItemTapped(String item) {
    setState(() {
      _selectedItem = item;
    });
  }
}

class Circulo extends StatelessWidget {
  const Circulo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PieChart(
      colors: [
        Color(0xFFDAB0F8),
      ],
      percentages: [100],

      onTap: [
        () => print('Red section tapped'),
      ],
      centerTexts: [
        'Restaurantes y Bares',
        'Gs. 127.000',
      ],
      textStyles: [
        TextStyle(
          color: Colors.black,
          fontSize: 17,
          fontWeight: FontWeight.bold,
        ),
        TextStyle(
          color: Color(0xFFdf0a5d),
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ],
    );
  }
}

class Item extends StatelessWidget {
  final String titulo;
  final bool isSelected;
  final VoidCallback onTap;

  const Item({
    required this.titulo,
    required this.isSelected,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.symmetric(horizontal: 5),
        height: 50,
        decoration: BoxDecoration(
          border: isSelected
              ? const Border(
                  bottom: BorderSide(
                    color: Color(0xFFDF0A5D),
                    width: 3,
                  ),
                )
              : null,
        ),
        child: Center(
          child: Text(
            titulo,
            style: TextStyle(
              color: isSelected ? Color(0xFFDF0A5D) : Color(0xFF000000),
              fontSize: 17,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}

class MovimientosContenedor extends StatelessWidget {
  const MovimientosContenedor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      MovimientoItem(
          imagePath: "comida.png",
          titulo: "EL CAFE DE ACA",
          tipo: "Restaurantes y bares",
          monto: "57.000 Gs.",
          fecha: "05/06/2022"),
      SizedBox(
        height: 15,
      ),
      MovimientoItem(
          imagePath: "comida.png",
          titulo: "DINERAMA PY",
          tipo: "Restaurantes y bares",
          monto: "35.000 Gs.",
          fecha: "05/06/2022"),
      SizedBox(
        height: 15,
      ),
      MovimientoItem(
          imagePath: "comida.png",
          titulo: "DINERAMA PY",
          tipo: "Restaurantes y bares",
          monto: "35.000 Gs.",
          fecha: "05/06/202"),
    ]);
  }
}
