import 'package:flutter/material.dart';
import 'dart:ui';

const primaryColor = const Color.fromARGB(255, 96, 181, 246);
const primaryLight = const Color.fromARGB(255, 96, 181, 246);
const primaryDark = const Color.fromARGB(255, 96, 181, 246);

const secondaryColor = const Color.fromARGB(255, 89, 186, 255);
const secondaryLight = const Color.fromARGB(255, 89, 186, 255);
const secondaryDark = const Color.fromARGB(255, 89, 186, 255);

const Color gradientStart = Color.fromARGB(255, 102, 166, 251);
const Color gradientEnd = Color.fromARGB(255, 53, 104, 185);

const primaryGradient = const LinearGradient(
  colors: const [gradientStart, gradientEnd],
  stops: const [0.0, 1.0],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);

const chatBubbleGradient = const LinearGradient(
  colors: const [Color.fromARGB(255, 53, 104, 185), Color.fromARGB(255, 102, 166, 251)],
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
);

const chatBubbleGradient2 = const LinearGradient(
  colors: const [Color(0xFFf4e3e3), Color(0xFFf4e3e3)],
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
);
