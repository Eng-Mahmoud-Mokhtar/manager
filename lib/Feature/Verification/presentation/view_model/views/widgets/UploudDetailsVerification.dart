import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'package:manager/Feature/core/utiles/constans.dart';

class UploadDetailsVerification extends StatefulWidget {
  final String text;
  final Image? image;

  const UploadDetailsVerification({
    super.key,
    required this.text,
    this.image,
  });

  @override
  State<UploadDetailsVerification> createState() => _UploadDetailsVerificationState();
}

class _UploadDetailsVerificationState extends State<UploadDetailsVerification> {
  XFile? _selectedImage;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;

    final containerWidth = screenWidth * 0.9;
    final containerHeight = _selectedImage == null ? containerWidth / 3 : containerWidth;

    final textSize = screenWidth * 0.04;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              widget.text,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: textSize,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        GestureDetector(
          onTap: () async {
            final ImagePicker picker = ImagePicker();
            final XFile? image = await picker.pickImage(source: ImageSource.gallery);

            if (image != null) {
              setState(() {
                _selectedImage = image;
              });
            }
          },
          child: Container(
            width: containerWidth,
            height: containerHeight,
            child: DottedBorder(
              borderType: BorderType.RRect,
              strokeWidth: 1.5,
              color: KprimaryColor,
              dashPattern: const [10, 10],
              radius: const Radius.circular(8),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color.fromRGBO(50, 50, 50, 2), // درجة رمادية أفتح
                ),
                child: Center(
                  child: _selectedImage != null
                      ? ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.file(
                      File(_selectedImage!.path),
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  )
                      : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.cloud_upload_outlined,
                        color: KprimaryColor,
                        size: textSize * 2, // حجم الأيقونة
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'اضغط هنا لاضافة الصورة',
                        style: TextStyle(
                          color: Colors.white54,
                          fontSize: textSize * 0.8,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
