import 'package:flutter/material.dart';
import '../../../../../../core/colors.dart';
import '../../../../../core/utiles/constans.dart';
import '../../../../../login/presentation/view_model/views/LoginPage.dart';

class LogoutAlertDialog {
  void signOut(BuildContext context) {
    try {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => LoginPage(),
        ),
      );
    } catch (e) {
      print('Error signing out: $e');
    }
  }

  void deploy(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          backgroundColor: ColorManager.appBarColor,
          content: Container(
            width: screenWidth * 0.6,
            height: (screenWidth * 0.9) * 0.6,
            child: Column(
              children: [
                Spacer(),
                Icon(
                    Icons.login_outlined,
                    color: Colors.white,
                    size: screenWidth * 0.1,
                ),
                Spacer(),
                Text(
                  'هل تريد تسجيل الخروج من التطبيق؟',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: screenWidth * 0.04,  // حجم النص يعتمد على عرض الشاشة
                    color: Colors.white,
                  ),
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Center(
                        child: Text(
                          'الغاء',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        signOut(context);
                      },
                      child: Container(
                        height: screenWidth * 0.12,
                        width: screenWidth * 0.3,
                        decoration: BoxDecoration(
                          color: Colors.red.shade500,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Text(
                            'نعم',
                            style: TextStyle(
                              fontSize: screenWidth * 0.04,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
