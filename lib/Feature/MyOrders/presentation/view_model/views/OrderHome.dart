import 'package:flutter/material.dart';
import 'LoadingOrder.dart';

class OrderHome extends StatelessWidget {
  const OrderHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return DefaultTabController(
      length: 3,
      initialIndex: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(48, 47, 45, 1),
          title: Text(
            'ادارة الطلبات',
            style: TextStyle(
              fontSize: screenWidth *0.04,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
          automaticallyImplyLeading: false,
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_outlined,color:Colors.white),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
        body: ReadyOrder(),
      ),
    );
  }
}
