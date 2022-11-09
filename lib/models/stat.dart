import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Stat {
  final String count;
  final String text;

  // ignore: prefer_typing_uninitialized_variables
  final icon;
  final String url;

  Stat({
    required this.count,
    required this.text,
    required this.icon,
    required this.url,
  });
}
