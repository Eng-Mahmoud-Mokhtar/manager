import 'package:flutter/material.dart';

import '../../../../../core/appbar_widget.dart';

class MyWallet extends StatelessWidget {
  const MyWallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: appBarContent(
        title: "المحفظة",
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
