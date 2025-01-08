import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:manager/Feature/profits/presentation/view_model/views/profits.dart';

import '../../../../../MyOrders/presentation/view_model/views/OrderHome.dart';
import '../../../../../Verification/presentation/view_model/views/AccountVervification.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final double width = screenSize.width;
    final double imageWidth = width * 0.29;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildServiceContainer(
              context,
              imageWidth,
              "lib/Assets/images/setting.png",
              "إدارة الإعلانات",
                  () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ManageAdsPage(),
                ),
              ),
            ),
            SizedBox(width: width * 0.02),
            buildServiceContainer(
              context,
              imageWidth,
              "lib/Assets/images/social-media_7328217.png",
              "إعلان ممول",
                  () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PromotedAdPage(),
                ),
              ),
            ),
            SizedBox(width: width * 0.02),
            buildServiceContainer(
              context,
              imageWidth,
              "lib/Assets/images/add-basket_12671368.png",
              "إضافة منتج",
                  () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddProductPage(),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildServiceContainer(
              context,
              imageWidth,
              "lib/Assets/images/svgexport-17 (73) 2.png",
              "توثيق الحساب",
                  () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AccountVerification(),
                ),
              ),
            ),
            SizedBox(width: width * 0.02),
            buildServiceContainer(
              context,
              imageWidth,
              "lib/Assets/images/startup_6857487.png",
              "إدارة الطلبات",
                  () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => OrderHome(),
                ),
              ),
            ),
            SizedBox(width: width * 0.02),
            buildServiceContainer(
              context,
              imageWidth,
              "lib/Assets/images/wallet_10830621.png",
              "الارباح",
                  () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Profits(),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget buildServiceContainer(
      BuildContext context,
      double width,
      String imagePath,
      String text,
      VoidCallback onTap,
      ) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: width * 1.0,
        decoration: BoxDecoration(
          color: const Color(0xff2b3227),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: LayoutBuilder(
          builder: (context, constraints) {
            final containerWidth = constraints.maxWidth;
            final imageSize = containerWidth * 0.3;

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    imagePath,
                    width: imageSize,
                    height: imageSize,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 15.h),
                  Text(
                    text,
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class AddProductPage extends StatelessWidget {
  const AddProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
class PromotedAdPage extends StatelessWidget {
  const PromotedAdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
class ManageAdsPage extends StatelessWidget {
  const ManageAdsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

