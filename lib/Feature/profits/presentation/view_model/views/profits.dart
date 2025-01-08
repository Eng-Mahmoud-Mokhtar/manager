import 'package:flutter/material.dart';
import 'package:manager/Feature/MyWallet/presentation/view_model/views/MyWallet.dart';
import 'package:manager/Feature/core/utiles/constans.dart';
import '../../../../../core/appbar_widget.dart';
import '../../../../../core/colors.dart';
import 'Widget/Chart.dart';
import 'Widget/Row.dart';

class Profits extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: appBarContent(
        title: "الأرباح",
        onTap: () {
          Navigator.pop(context);
        },
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
             Padding(
              padding: EdgeInsets.all(10.0),
              child:Chart(),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  color: ColorManager.appBarColor,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  children: [
                    buildRow("1", "مبيعات اليوم", context),
                    buildRow("5", "جاري التسليم", context),
                    buildRow("15", "طلبات تم التسليم", context),
                    buildRow("15", "طلبات مرتجعة", context),
                    buildRow("15", "دفع فيزا", context),
                    buildRow("1", "دفع نقدا", context),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.08,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: KprimaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => MyWallet(),
                      ),
                    );
                  },
                  child: Text(
                    'المحفظة',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: screenWidth * 0.04,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
