import 'package:flutter/material.dart';
import 'package:manager/Feature/Verification/presentation/view_model/views/widgets/smallimage.dart';
import 'package:manager/Feature/Verification/presentation/view_model/views/widgets/visa.dart';
import '../../../../../../core/appbar_widget.dart';
import '../../../../../core/utiles/GreenCircle.dart';
import '../../../../../core/utiles/constans.dart';
import 'Cash.dart';
import 'amount.dart';


class ConfirmationVerification extends StatefulWidget {
  ConfirmationVerification({super.key});
  @override
  State<ConfirmationVerification> createState() => _ConfirmationVerificationState();
}
class _ConfirmationVerificationState extends State<ConfirmationVerification> {
  int selected = 0;
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: appBarContent(
        title: "اشترك الان",
        onTap: () {
          Navigator.pop(context);
        },
      ),      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal:screenWidth * 0.04,vertical:screenWidth * 0.02),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'اختر طريقة الدفع',
                    style: TextStyle(color: Colors.white, fontSize: screenWidth * 0.04),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(screenWidth * 0.02),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selected = 1;
                  });
                },
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(screenWidth * 0.02),
                    color: Color(0xff302F2D),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: screenWidth * 0.15,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SmallImage(image: 'lib/Assets/images/card_11378185.png'),
                            Spacer(flex: 1),
                            Text(
                              'فيزا',
                              style: TextStyle(color: Colors.white, fontSize: screenWidth * 0.04, fontWeight: FontWeight.w400),
                            ),
                            GreenCircal(
                              color: selected == 1 ? KprimaryColor : Color(0xff302F2D),
                            ),
                          ],
                        ),
                      ),
                      selected == 1
                          ? Container(
                        width: double.infinity,
                        child: AspectRatio(
                          aspectRatio: 3.7 / 2,
                          child: InputVisa(
                            textEditingController: _textEditingController,
                            text12: 'رقم الكارد',
                            text11: 'رقم الكارد',
                            text21: 'تاريخ الصلاحيه',
                            text22: 'MM/YY',
                            text31: 'كود الامان',
                            text32: 'CVV',
                          ),
                        ),
                      )
                          : Container(),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(screenWidth * 0.02),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selected = 2;
                  });
                },
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(screenWidth * 0.02),
                    color: Color(0xff302F2D),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: screenWidth * 0.15,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SmallImage(image: 'lib/Assets/images/fruit_10575704.png'),
                            SmallImage(image: 'lib/Assets/images/phishing_5645113.png'),
                            Spacer(flex: 1),
                            Text(
                              'كاش',
                              style: TextStyle(color: Colors.white, fontSize: screenWidth * 0.04, fontWeight: FontWeight.w400),
                            ),
                            GreenCircal(
                              color: selected == 2 ? KprimaryColor : Color(0xff302F2D),
                            ),
                          ],
                        ),
                      ),
                      selected == 2
                          ? Container(
                        width: double.infinity,
                        child: AspectRatio(
                          aspectRatio: 6.0 / 2,
                          child: InputCash(
                            textEditingController: _textEditingController,
                          ),
                        ),
                      )
                          : Container(),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(screenWidth * 0.02),
              child: Container(
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
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => AttachTransferVerification(),
                      ),
                    );
                  },
                  child: Text(
                    'تاكيد الطلب',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: screenWidth * 0.04,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


