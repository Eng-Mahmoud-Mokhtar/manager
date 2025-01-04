import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utiles/constans.dart';
import 'ListCityes.dart';

class City extends StatefulWidget {
  const City({super.key});

  @override
  State<City> createState() => _CityState();
}

class _CityState extends State<City> {
  final TextEditingController _countryController = TextEditingController();
  bool _isCountryValid = false;
  bool _formSubmitted = false;
  String? selectedCity;

  @override
  void dispose() {
    _countryController.dispose();
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
                'المحافظة',
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
              final RenderBox renderBox = context.findRenderObject() as RenderBox;
              final offset = renderBox.localToGlobal(Offset.zero);
              final height = renderBox.size.height;

              await showMenu<String>(
                context: context,
                position: RelativeRect.fromLTRB(
                  offset.dx,
                  offset.dy, // هنا يتم بدء المنيو من أعلى حقل النص مباشرة
                  screenWidth - offset.dx,
                  height,
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
                          children: egyptGovernorates.map((city) {
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  _countryController.text = city;
                                  selectedCity = city;
                                });
                                Navigator.pop(context);
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: screenWidth * 0.02),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    city, // Corrected the reference here
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
                  borderRadius: BorderRadius.all(Radius.circular(12)), // تعديل البوردير إلى 12
                ),
              );
            },
            child: AbsorbPointer(
              child: TextFormField(
                controller: _countryController,
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.right,
                readOnly: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(50, 50, 50, 2),
                  hintText: 'اختر المحافظة',
                  errorText: _formSubmitted && !_isCountryValid
                      ? 'يرجى اختيار المحافظة'
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
        ),
      ],
    );
  }
}
