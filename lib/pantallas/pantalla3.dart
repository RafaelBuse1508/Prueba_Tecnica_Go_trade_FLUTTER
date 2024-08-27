import 'package:flutter/material.dart';
import 'package:movil_go_trade/pantallas/pantalla4.dart';
import 'package:movil_go_trade/widgets/Boton.dart';
import 'package:movil_go_trade/widgets/Circulo.dart';
import 'package:movil_go_trade/widgets/CustomAppBar_2.dart';
import 'package:movil_go_trade/widgets/MovimientoItem.dart';

class Pantalla3 extends StatefulWidget {
  @override
  _Pantalla3State createState() => _Pantalla3State();
}

class _Pantalla3State extends State<Pantalla3> {
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
                  MaterialPageRoute(builder: (context) => Pantalla4()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

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

  void _navigateToPantalla4(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Pantalla4()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return PieChart(
      colors: [
        Color(0xFFFFBE0A),
        Color(0xFFDAB0F8),
        Color(0xFFEFBF3C),
        Color(0xFFCFE7A5),
        Color(0xFF57B7DD),
        Color(0xFFF99233),
        Color(0xFFA9B6FC)
      ],
      percentages: [7, 35, 3, 7, 16, 16, 16],

      onTap: [
        () => print('Red section tapped'),
        () => _navigateToPantalla4(context),
        () => print('Blue section tapped'),
        () => print('Red section tapped'),
        () => print('Green section tapped'),
        () => print('Blue section tapped'),
        () => print('Red section tapped'),
      ],
      centerTexts: [
        'Junio',
        'Gs. 705.133',
      ], // Lista de textos centrales
      textStyles: [
        TextStyle(
          color: Colors.black,
          fontSize: 20,
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
      MovimientoItem2(
        imagePath: "comida.png",
        titulo: "Restaurantes y bares",
        monto: "Gs. 412.000",
      ),
      SizedBox(
        height: 15,
      ),
      MovimientoItem2(
        imagePath: "compras.png",
        titulo: "Compras",
        monto: "Gs. 165.549",
      ),
      SizedBox(
        height: 15,
      ),
      MovimientoItem2(
        imagePath: "transporte.png",
        titulo: "Transporte",
        monto: "Gs. 79.800",
      ),
    ]);
  }
}
