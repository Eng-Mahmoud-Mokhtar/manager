import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utiles/constans.dart';
import '../DetailsOrderScreen.dart';
import 'ArrowDetails.dart';

class ColumnItems extends StatefulWidget {
  const ColumnItems({Key? key}) : super(key: key);

  @override
  State<ColumnItems> createState() => _ColumnItemsState();
}

class _ColumnItemsState extends State<ColumnItems> {
  bool isOrderCanceled = false;
  List<String> orders = ['order1'];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (orders.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
            child: Container(
              height: 240,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color.fromRGBO(36, 36, 36, 1),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ArrowDetails(),
                              ),
                            );
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios_new_rounded,
                            color: KprimaryColor,
                            size: 20,
                          ),
                        ),
                        const Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  'رقم الاوردر- #qcry3764 ',
                                  style: TextStyle(color: Colors.white70),
                                ),
                                Text(
                                  'تاريخ الاوردر-10/15/2023 ',
                                  style: TextStyle(color: Colors.white70),
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Image(
                                  image: AssetImage(
                                      'lib/Assets/images/Group 1000004386 (1).png')),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, bottom: 5),
                    child: Row(
                      children: [
                        Text(
                          'جنية ',
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                        Text(
                          '2000 ',
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                        Expanded(child: SizedBox(width: 1)),
                        Text(
                          'سعر (4 عناصر)',
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromRGBO(103, 104, 109, 1)),
                        )
                      ],
                    ),
                  ),
                  const Divider(
                    color: Color.fromRGBO(255, 255, 255, 0.08),
                    thickness: 3,
                    endIndent: 20,
                    indent: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                    child: Row(
                      children: [
                        Text(
                          'قيد التحضير ',
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                        SizedBox(width: 5),
                        CircleAvatar(
                          radius: 6,
                          backgroundColor: Colors.orange,
                        ),
                        Expanded(child: SizedBox(width: 1)),
                        Text(
                          'الحالة',
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromRGBO(103, 104, 109, 1)),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              _showConfirmationDialog(context);
                            },
                            child: Container(
                              height: 60,
                              padding: EdgeInsets.all(0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color.fromRGBO(255, 255, 255, 0.17),
                              ),
                              child: const Center(
                                child: Text(
                                  "الغاء الاوردر",
                                  style: TextStyle(
                                    color: KprimaryColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => TrackingOrder()),
                              );
                            },
                            child: Container(
                              height: 60,
                              padding: EdgeInsets.all(0),
                              decoration: BoxDecoration(
                                color: KprimaryColor,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Center(
                                child: Text(
                                  "تتبع الاوردر",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
      ],
    );
  }
  Future<void> _showConfirmationDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Color.fromRGBO(67, 71, 67, 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          content: Container(
            height: 280,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.error_outline,
                  size: 70,
                  color: Colors.red,
                ),
                SizedBox(height: 30),
                const Text(
                  'هل تريد الغاء هذا الطلب ؟',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Container(
                  height: 50,
                  width: 320,
                  padding: EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    color: KprimaryColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isOrderCanceled = true;
                        orders.removeAt(0);
                      });
                      Navigator.pop(context);
                    },
                    child: const Center(
                      child: Text(
                        "نعم",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 50,
                    width: 320,
                    padding: EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(color: KprimaryColor),
                    ),
                    child: const Center(
                      child: Text(
                        "لا",
                        style: TextStyle(
                          color: KprimaryColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
