import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ColumnItems.dart';

class Items extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ColumnItems(),
        ColumnItems(),
        ColumnItems(),
      ],
    );
  }
}

