import 'package:flutter/cupertino.dart';

class SmallImage extends StatelessWidget {
  const SmallImage({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    final double imageSize = screenWidth * 0.1;

    return Padding(
      padding: EdgeInsets.only(left: screenWidth * 0.03),
      child: Container(
        width: imageSize,
        height: imageSize,
        child: Image.asset(
          image,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
