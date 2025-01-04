import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../../core/utiles/constans.dart';
import 'BuildImageHome.dart';

class ImageCard extends StatefulWidget {
  const ImageCard({super.key});

  @override
  _ImageCardState createState() => _ImageCardState();
}

class _ImageCardState extends State<ImageCard> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double desiredHeight = screenWidth * 0.35;
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0.r),
          child: Container(
            width: screenWidth,
            height: desiredHeight,
            child: PageView(
              controller: _pageController,
              children: [
                buildImage('lib/Assets/images/soccer-players-action-professional-stadium 1.png', '%15', 'احجز ملعبك المفضل اليوم'),
                buildImage('lib/Assets/images/soccer-players-action-professional-stadium 1.png', 'عروض لا تُفوَّت', 'استمتع بأفضل العروض على منتجات الرياضة'),
                buildImage('lib/Assets/images/soccer-players-action-professional-stadium 1.png', 'كل ما تحتاجه للرياضة', 'شاهد المباريات واحجز الملاعب بكل سهولة'),
              ],
            ),
          ),
        ),
        SizedBox(height: screenWidth * 0.03),
        SmoothPageIndicator(
          controller: _pageController,
          count: 3,
          effect: ExpandingDotsEffect(
            dotHeight: 8.0.h,
            dotWidth: 8.0.w,
            activeDotColor: KprimaryColor,
            dotColor: Color(0xff302F2D),
            expansionFactor: 3.0,
            spacing: 6.0.w,
          ),
        ),
      ],
    );
  }

}
