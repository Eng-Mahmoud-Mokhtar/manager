import 'package:flutter/material.dart';
import '../../../../../Chats/presentation/view_model/views/chatsHome.dart';
import '../../../../../Profile/presentation/view_model/views/my_account.dart';
import '../../../../../Reals/presentation/view_model/views/widgets/Videos.dart';
import '../../../../../core/utiles/constans.dart';
import '../home.dart';

class BottomHome extends StatefulWidget {
  @override
  _BottomHomeState createState() => _BottomHomeState();
}
class _BottomHomeState extends State<BottomHome> {
  int _currentIndex = 3; // الصفحة الافتراضية HomePage

  List<Widget> _pages = [
    Videos(),
    MyAccount(),
    Chat(),
    HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.5),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: KprimaryColor,
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        child: Icon(
          Icons.add,
          size: screenWidth * 0.08,
          color: Colors.white,
        ),
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomAppBar(
        height: screenHeight * 0.1,
        notchMargin: screenHeight * 0.017,
        shape: const CircularNotchedRectangle(),
        color: const Color.fromRGBO(48, 47, 45, 1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  icon: Container(
                    height: screenWidth * 0.05,
                    child: Image.asset(
                      'lib/Assets/images/user1.png',
                      fit: BoxFit.contain,
                      color: _currentIndex == 1
                          ? KprimaryColor
                          : const Color.fromRGBO(103, 104, 109, 1),
                    ),
                  ),
                  onPressed: () {
                    _onItemTapped(1);
                  },
                ),
                SizedBox(width: screenWidth * 0.05),
                IconButton(
                  icon: Container(
                    height: screenWidth * 0.05,
                    child: Image.asset(
                      'lib/Assets/images/cam.png',
                      fit: BoxFit.contain,
                      color: _currentIndex == 4
                          ? KprimaryColor
                          : const Color.fromRGBO(103, 104, 109, 1),
                    ),
                  ),
                  onPressed: () {
                    _onItemTapped(4);
                  },
                ),
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: Container(
                    height: screenWidth * 0.05,
                    child: Image.asset(
                      'lib/Assets/images/messagecircle.png',
                      fit: BoxFit.contain,
                      color: _currentIndex == 2
                          ? KprimaryColor
                          : const Color.fromRGBO(103, 104, 109, 1),
                    ),
                  ),
                  onPressed: () {
                    _onItemTapped(2);
                  },
                ),
                SizedBox(width: screenWidth * 0.05),
                IconButton(
                  icon: Container(
                    height: screenWidth * 0.05,
                    child: Image.asset(
                      'lib/Assets/images/Home.png',
                      fit: BoxFit.contain,
                      color: _currentIndex == 3
                          ? KprimaryColor
                          : const Color.fromRGBO(103, 104, 109, 1),
                    ),
                  ),
                  onPressed: () {
                    _onItemTapped(3);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}


