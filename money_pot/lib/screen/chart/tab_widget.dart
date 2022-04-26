import 'dart:ui';

import 'package:flutter/material.dart';

Widget ChartData( Color clr, String ChartText) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Row(
      children: [
        Icon(
          Icons.circle,
          color: clr,
        ),
        Text(ChartText)
      ],
    ),
  );
}

Widget ChartData2( Color clr, String ChartText) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Row(
      children: [
        Icon(
          Icons.circle,
          color: clr,
        ),
        Text(ChartText)
      ],
    ),
  );
}

