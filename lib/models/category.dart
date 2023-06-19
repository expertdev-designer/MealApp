import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Cat {
  const Cat({
    required this.id,
    required this.title,
    this.color = Colors.orange,
  });

  final String id;
  final String title;
  final Color color;
}