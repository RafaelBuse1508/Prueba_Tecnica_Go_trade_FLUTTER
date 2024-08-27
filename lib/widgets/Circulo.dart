import 'package:flutter/material.dart';
import 'dart:math';

class PieChartPainter extends CustomPainter {
  final List<Color> colors;
  final List<double> percentages;
  final List<void Function()> onTap;
  final List<String> centerTexts;
  final List<TextStyle> textStyles;

  PieChartPainter({
    required this.colors,
    required this.percentages,
    required this.onTap,
    required this.centerTexts,
    required this.textStyles,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..style = PaintingStyle.fill;

    double startAngle = -pi / 2;

    for (int i = 0; i < colors.length; i++) {
      final sweepAngle = 2 * pi * (percentages[i] / 100);

      paint.color = colors[i];
      canvas.drawArc(
        Rect.fromLTWH(0, 0, size.width, size.height),
        startAngle,
        sweepAngle,
        true,
        paint,
      );

      startAngle += sweepAngle;
    }

    final double centerCircleRadius = size.width * 0.3;
    final Paint centerPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    canvas.drawCircle(
      Offset(size.width / 2, size.height / 2),
      centerCircleRadius,
      centerPaint,
    );

    double textOffsetY = size.height / 2 - (centerTexts.length * 30) / 2;

    for (int i = 0; i < centerTexts.length; i++) {
      final TextPainter textPainter = TextPainter(
        text: TextSpan(
          text: centerTexts[i],
          style: textStyles[i],
        ),
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr,
      )..layout();

      final Offset textOffset = Offset(
        size.width / 2 - textPainter.width / 2,
        textOffsetY,
      );

      textPainter.paint(canvas, textOffset);

      textOffsetY += textPainter.height + 10;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class PieChart extends StatelessWidget {
  final List<Color> colors;
  final List<double> percentages;
  final List<void Function()> onTap;
  final List<String> centerTexts; 
  final List<TextStyle> textStyles;

  PieChart({
    required this.colors,
    required this.percentages,
    required this.onTap,
    required this.centerTexts,
    required this.textStyles,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: (details) {
      },
      child: CustomPaint(
        size: Size(300, 300),
        painter: PieChartPainter(
          colors: colors,
          percentages: percentages,
          onTap: onTap,
          centerTexts: centerTexts,
          textStyles: textStyles,
        ),
      ),
    );
  }
}
