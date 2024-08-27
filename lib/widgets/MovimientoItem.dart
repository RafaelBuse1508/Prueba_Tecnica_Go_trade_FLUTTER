
import 'package:flutter/material.dart';
import 'package:movil_go_trade/widgets/CircularImage.dart';

class MovimientoItem extends StatelessWidget {
  
  final String imagePath;
  final String titulo;
  final String tipo;
  final String monto;
  final String fecha;

  const MovimientoItem({
    required this.imagePath,
    required this.titulo,
    required this.tipo,
    required this.monto,
    required this.fecha,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(child: CircularImage(imagePath: imagePath)),
        ),
        Expanded(
          flex: 4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titulo,
                    style: TextStyle(fontSize: 17),
                  ),
                  Text(
                    tipo,
                    style: TextStyle(fontSize: 17, color: Color(0xFFbab8b7)),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    monto,
                    style: TextStyle(fontSize: 17),
                  ),
                  Text(
                    fecha,
                    style: TextStyle(fontSize: 17, color: Color(0xFFbab8b7)),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}


class MovimientoItem2 extends StatelessWidget {
  
  final String imagePath;
  final String titulo;
  final String monto;

  const MovimientoItem2({
    required this.imagePath,
    required this.titulo,
    required this.monto,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(child: CircularImage(imagePath: imagePath)),
        ),
        Expanded(
          flex: 4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titulo,
                    style: TextStyle(fontSize: 17),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    monto,
                    style: TextStyle(fontSize: 17),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}