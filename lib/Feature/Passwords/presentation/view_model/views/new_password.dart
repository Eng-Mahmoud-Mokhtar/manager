import 'package:flutter/material.dart';
import 'package:manager/Feature/login/presentation/view_model/views/LoginPage.dart';
import '../../../../../core/appbar_widget.dart';
import '../../../../core/utiles/constans.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({Key? key}) : super(key: key);

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  bool isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBarContent(
        title: "رقم سري جديد",
        onTap: () {
          Navigator.pop(context);
        },
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
          child: Column(
            children: [
              SizedBox(height: screenHeight * 0.1),
              Image(image: AssetImage('lib/Assets/images/Icon Image.png')),
              SizedBox(height: screenHeight * 0.05),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'الرقم السري ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: screenWidth * 0.04,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.010),
              Container(
                width: screenWidth,
                height: screenWidth * 0.12,
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.right,
                  obscureText: !isPasswordVisible,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(50, 50, 50, 2),
                    hintText: 'اكتب الرقم السري',
                    hintStyle: TextStyle(color: Colors.grey,                      fontSize: screenWidth * 0.035,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    prefixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isPasswordVisible = !isPasswordVisible;
                        });
                      },
                      icon: Padding(
                        padding: EdgeInsets.only(left: screenWidth * 0.02),
                        child: Icon(
                          isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                          color: Colors.grey.shade700,
                          size: screenWidth * 0.05,

                        ),
                      ),
                    ),
                    suffixIcon: Padding(
                      padding: EdgeInsets.only(right: screenWidth * 0.02),
                      child: Icon(
                        Icons.lock_outlined,
                        size: screenWidth * 0.05,
                        color: Colors.white70,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(color: KprimaryColor),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'الرقم السري ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: screenWidth * 0.04,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.010),
              Container(
                width: screenWidth,
                height: screenWidth * 0.12,
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.right,
                  obscureText: !isPasswordVisible,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(50, 50, 50, 2),
                    hintText: 'اكتب الرقم السري',
                    hintStyle: TextStyle(color: Colors.grey,                      fontSize: screenWidth * 0.035,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    prefixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isPasswordVisible = !isPasswordVisible;
                        });
                      },
                      icon: Padding(
                        padding: EdgeInsets.only(left: screenWidth * 0.02),
                        child: Icon(
                          isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                          color: Colors.grey.shade700,
                          size: screenWidth * 0.05,

                        ),
                      ),
                    ),
                    suffixIcon: Padding(
                      padding: EdgeInsets.only(right: screenWidth * 0.02),
                      child: Icon(
                        Icons.lock_outlined,
                        size: screenWidth * 0.05,
                        color: Colors.white70,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(color: KprimaryColor),
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              Container(
                width: screenWidth,
                height: screenWidth * 0.12,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: KprimaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  },
                  child: Text(
                    ' تأكيد  ',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: screenWidth * 0.04,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
