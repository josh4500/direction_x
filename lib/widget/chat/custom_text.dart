import 'dart:ui';

import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  const CustomText({super.key, required this.text, required this.textStyle});

  final String reserve = '             ';
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final originalPainter = TextPainter(
          text: TextSpan(text: text, style: textStyle),
          textDirection: TextDirection.ltr,
          textWidthBasis: TextWidthBasis.longestLine,
          textScaleFactor: MediaQuery.of(context).textScaleFactor,
        )..layout(maxWidth: constraints.maxWidth);

        final reservePainter = TextPainter(
          text: TextSpan(text: reserve, style: textStyle),
          textDirection: TextDirection.ltr,
          textWidthBasis: TextWidthBasis.longestLine,
          textScaleFactor: MediaQuery.of(context).textScaleFactor,
        )..layout(maxWidth: constraints.maxWidth);

        LineMetrics originalLastLine =
            originalPainter.computeLineMetrics().last;
        LineMetrics reserveLastLine = reservePainter.computeLineMetrics().last;

        final newLine = (originalLastLine.width + reserveLastLine.width + 50) >
            constraints.maxWidth;

        return Text(newLine ? '$text\n' : text + reserve, style: textStyle);
      },
    );
  }
}
