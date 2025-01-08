import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../../../core/appbar_widget.dart';
import 'Button.dart';
import 'UploudDetailsVerification.dart';


class AttachTransferVerification extends StatefulWidget {
  const AttachTransferVerification({super.key});
  @override
  State<AttachTransferVerification> createState() => _AttachTransferVerificationState();
}

class _AttachTransferVerificationState extends State<AttachTransferVerification> {
  XFile? _selectedImage;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: appBarContent(
        title: "ارفاق تحويل المبلغ",
        onTap: () {
          Navigator.pop(context);
        },
      ),      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.all(screenWidth * 0.02),
        child: Column(
          children: [
            UploadDetailsVerification(
              text: 'قم بارفاق صورة تحويل المبلغ',
              image: _selectedImage != null ? Image.file(File(_selectedImage!.path)) : null, // عرض الصورة المختارة
            ),
            SizedBox(
              height: screenHeight * 0.03,
            ),
            ButtomVerification(
              buttomtext: 'تاكيد',
              width: double.infinity,
              onPressed: () {
                // _ChangedSuccessfully(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  // void _ChangedSuccessfully(BuildContext context) {
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return Dialog(
  //         child: ChangedSuccessfully(),
  //       );
  //     },
  //   );
  // }
}
