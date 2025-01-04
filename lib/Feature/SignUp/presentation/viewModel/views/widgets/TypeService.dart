import 'package:flutter/material.dart';
import '../../../../../core/utiles/constans.dart';

class TypeService extends StatefulWidget {
  const TypeService({super.key});

  @override
  State<TypeService> createState() => _TypeServiceState();
}

class _TypeServiceState extends State<TypeService> {
  final TextEditingController _ServicesController = TextEditingController();
  bool _isServicesValid = false;
  bool _formSubmitted = false;
  List<String> Services = [
    'ملعب',
    'اكاديمية كرة',
    'اكاديمية سباحة',
    'اكاديمية كاراتيه',
    "جيم",
  ];
  String? selectedService;

  @override
  void dispose() {
    _ServicesController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: screenWidth * 0.01),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'نوع الخدمة',
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontSize: screenWidth * 0.045,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        Container(
          width: screenWidth,
          height: screenWidth * 0.12,
          child: GestureDetector(
            onTap: () async {
              final RenderBox renderBox =
              context.findRenderObject() as RenderBox;
              final offset = renderBox.localToGlobal(Offset.zero);
              await showMenu<String>(
                context: context,
                position: RelativeRect.fromLTRB(
                  offset.dx,
                  offset.dy + renderBox.size.height,
                  screenWidth - offset.dx,
                  0,
                ),
                items: [
                  PopupMenuItem<String>(
                    enabled: false,
                  child: Container(
                      width: screenWidth * 0.2,
                      height: screenWidth * 0.3,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: Services.map((service) {
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  _ServicesController.text = service;
                                  selectedService = service;
                                });
                                Navigator.pop(context); // إغلاق المنيو بعد الاختيار
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: screenWidth * 0.02),
                                child: Align(
                                  alignment: Alignment.centerRight, // محاذاة النص لليمين
                                  child: Text(
                                    service,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                ],
                color: const Color.fromRGBO(50, 50, 50, 2), // نفس خلفية TextFormField
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                      Radius.circular(12)), // تعديل البوردير إلى 12
                ),
              );
            },
            child: AbsorbPointer(
              child: TextFormField(
                controller: _ServicesController,
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.right,
                readOnly: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(50, 50, 50, 2),
                  hintText: 'اختر نوع الخدمة',
                  errorText: _formSubmitted && !_isServicesValid
                      ? 'يرجى اختيار الخدمة'
                      : null,
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: screenWidth * 0.035,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.02),
                    child: Icon(
                      Icons.arrow_drop_down,
                      size: screenWidth * 0.06,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide: BorderSide(color: KprimaryColor),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
