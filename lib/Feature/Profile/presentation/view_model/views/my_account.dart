import 'package:flutter/material.dart';
import 'package:manager/Feature/Profile/presentation/view_model/views/widgets/CategoriesMainAccount.dart';
import '../../../../../core/appbar_widget.dart';
import '../../../../EditProfile/presentation/view_model/views/widgets/PrivteProfile.dart';
import '../../../../Home/presentation/view_model/views/widgets/bottomBar.dart';
import '../../../../core/utiles/constans.dart';

class MyAccount extends StatefulWidget {
  @override
  _MyAccountState createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  final String _userName = 'Mahmoud';
  final String _email = 'Mahmoudmokhtar@gmail.com';
  final String _phoneNumber = '0123456789';

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> ordersData = [
      {'name': 'الملف الشخصي', 'image': 'lib/Assets/images/2121.png'},
      {'name': 'توثيق الحساب', 'image': 'lib/Assets/images/01.png'},
      {'name': 'الحجوزات', 'image': 'lib/Assets/images/Group 1000004366.png'},
      {'name': 'ادعوا أصدقائك', 'image': 'lib/Assets/images/Group 1000004357.png'},
      {'name': 'المحفظة', 'image': 'lib/Assets/images/333333.png'},
      {'name': 'الارباح', 'image': 'lib/Assets/images/5454.png'},
      {'name': 'غير كلمة السر', 'image': 'lib/Assets/images/444.png'},
      {'name': 'اتصل بنا', 'image': 'lib/Assets/images/Group 100000435744.png'},
      {'name': 'سياسة الخصوصية', 'image': 'lib/Assets/images/Group 100000435787.png'},
      {'name': 'تسجيل الخروج', 'image': 'lib/Assets/images/Group 100000435777.png'},
    ];
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBarContent(
        title: "حسابى",
        onTap: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => BottomHome()),
          );
        },
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyPrivateAccount(
                      userName: _userName,
                      email: _email,
                      phoneNumber: _phoneNumber,
                    ),
                  ),
                );
              },
              child: buildUserInfo(),
            ),
            buildOrdersList(ordersData, context),
          ],
        ),
      ),
    );
  }

  Widget buildUserInfo() {
    return Padding(
      padding: const EdgeInsets.only(top: 10, right: 10, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                _userName,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              Container(
                width: 150,
                child: Text(
                  _email.length > 25 ? _email.substring(0, 25) + '...' : _email,
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromRGBO(255, 255, 255, 0.7),
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          SizedBox(width: 10),
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: KprimaryColor, width: 2),
            ),
            child: ClipOval(
              child: Image.asset(
                'lib/Assets/images/photo_2024-12-23_04-00-11.jpg',
                width: 70,
                height: 70,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget buildOrdersList(List<Map<String, dynamic>> ordersData, BuildContext context) {
    return ListView.builder(
      itemCount: ordersData.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        Map<String, dynamic> order = ordersData[index];
        return buildOrderContainer(order, context);
      },
    );
  }
}

