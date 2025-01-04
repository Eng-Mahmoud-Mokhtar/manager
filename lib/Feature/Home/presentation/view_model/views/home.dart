import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:manager/Feature/Home/presentation/view_model/views/widgets/ImageCard.dart';
import 'widgets/Categories.dart';
import '../../../../Notification/presentation/view_model/views/notification_screen.dart';
import '../../../../core/utiles/constans.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController _pageController;
  bool _allowPageScroll = true;
  int _currentPage = 0;
  bool hasNewNotifications = true;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    double desiredHeight = screenWidth * 0.12;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: PageView(
          controller: _pageController,
          physics: _allowPageScroll
              ? const PageScrollPhysics()
              : const NeverScrollableScrollPhysics(),
          children: [
            Scaffold(
              backgroundColor: Colors.black,
              body: SingleChildScrollView(
                physics: _allowPageScroll
                    ? const BouncingScrollPhysics()
                    : const NeverScrollableScrollPhysics(),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: screenHeight * 0.03,
                    left: screenWidth * 0.04,
                    right: screenWidth * 0.04,
                    bottom: screenHeight * 0.03,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                hasNewNotifications =
                                false; // إخفاء النقطة عند الدخول
                              });
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                  const NotificationScreen(),
                                ),
                              );
                            },
                            child: Stack(
                              children: [
                                Container(
                                  height: desiredHeight,
                                  decoration: BoxDecoration(
                                    color:
                                    const Color.fromRGBO(48, 47, 45, 1),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding:
                                    EdgeInsets.all(screenWidth * 0.035),
                                    child: Icon(
                                      Icons.notifications_none,
                                      color: Colors.white,
                                      size: 18.sp,
                                    ),
                                  ),
                                ),
                                if (hasNewNotifications)
                                // عرض النقطة فقط إذا كانت هناك إشعارات جديدة
                                  Positioned(
                                    top: 0,
                                    right: 0,
                                    child: Container(
                                      width: 12,
                                      height: 12,
                                      decoration: BoxDecoration(
                                        color: KprimaryColor, // لون النقطة
                                        shape: BoxShape.circle, // شكل دائري
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end, // لمحاذاة المحتوى لليمين
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    'محمود مختار',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: screenWidth * 0.045,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                      height: screenHeight * 0.005), // مسافة بين الاسم والوظيفة
                                  Text(
                                    'مدرب جيم',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: screenWidth * 0.035,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: screenWidth * 0.03), // مسافة بين النص والصورة
                              Container(
                                width: screenWidth * 0.12,
                                height: screenWidth * 0.12,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: const DecorationImage(
                                    image: AssetImage('lib/Assets/images/photo_2024-12-23_04-00-11.jpg'), // مسار الصورة
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                       SizedBox(height:screenHeight * 0.02),
                      const ImageCard(),
                      SizedBox(height:screenHeight * 0.02),
                      const Categories(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
