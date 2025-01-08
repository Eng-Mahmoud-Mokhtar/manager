import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/appbar_widget.dart';

class ArrowDetails extends StatelessWidget {
  const ArrowDetails({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBarContent(
        title: "تفاصيل الطلب",
        onTap: () {
          Navigator.pop(context);
        },
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("الطلبات",style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                height: 390,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(36, 36, 36, 1),
                ),child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        height: 80,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromRGBO(255, 255, 255, 0.08),
                        ),
                        child: Padding(
                        padding: const EdgeInsets.only(right: 20,left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Text('جنية ',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Color.fromRGBO(103, 104, 109, 1)
                                  ,),),
                                RichText(
                                  text: const TextSpan(
                                    text: '600',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(103, 104, 109, 1),
                                      decoration: TextDecoration.lineThrough,
                                      decorationColor:  Color.fromRGBO(103, 104, 109, 1),
                                      decorationThickness: 3,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Row(mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text('كوتشي رياضي',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.white),),
                                    Row(
                                      children: [
                                        Text(
                                          ' جنية',
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromRGBO(255, 255, 255, 0.7),
                                          ),
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          '500',
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromRGBO(255, 255, 255, 0.7),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(width: 10),
                                SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: Image(
                                    image: AssetImage('lib/Assets/images/startup_6857487.png'),
                                    fit: BoxFit.contain, // لضمان أن الصورة تكون داخل الحاوية بشكل صحيح دون تشويه
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        height: 80,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromRGBO(255, 255, 255, 0.08),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20,left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const Text('جنية ',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Color.fromRGBO(103, 104, 109, 1)
                                    ,),),
                                  RichText(
                                    text: const TextSpan(
                                      text: '600',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromRGBO(103, 104, 109, 1),
                                        decoration: TextDecoration.lineThrough,
                                        decorationColor:  Color.fromRGBO(103, 104, 109, 1),
                                        decorationThickness: 3,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Row(mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text('كوتشي رياضي',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.white),),
                                      Row(
                                        children: [
                                          Text(
                                            ' جنية',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromRGBO(255, 255, 255, 0.7),
                                            ),
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            '500',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromRGBO(255, 255, 255, 0.7),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 10),
                                  SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: Image(
                                      image: AssetImage('lib/Assets/images/startup_6857487.png'),
                                      fit: BoxFit.contain, // لضمان أن الصورة تكون داخل الحاوية بشكل صحيح دون تشويه
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        height: 80,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromRGBO(255, 255, 255, 0.08),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20,left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const Text('جنية ',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Color.fromRGBO(103, 104, 109, 1)
                                    ,),),
                                  RichText(
                                    text: const TextSpan(
                                      text: '600',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromRGBO(103, 104, 109, 1),
                                        decoration: TextDecoration.lineThrough,
                                        decorationColor:  Color.fromRGBO(103, 104, 109, 1),
                                        decorationThickness: 3,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Row(mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text('كوتشي رياضي',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.white),),
                                      Row(
                                        children: [
                                          Text(
                                            ' جنية',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromRGBO(255, 255, 255, 0.7),
                                            ),
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            '500',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromRGBO(255, 255, 255, 0.7),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 10),
                                  SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: Image(
                                      image: AssetImage('lib/Assets/images/startup_6857487.png'),
                                      fit: BoxFit.contain, // لضمان أن الصورة تكون داخل الحاوية بشكل صحيح دون تشويه
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        height: 80,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromRGBO(255, 255, 255, 0.08),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20,left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const Text('جنية ',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Color.fromRGBO(103, 104, 109, 1)
                                    ,),),
                                  RichText(
                                    text: const TextSpan(
                                      text: '600',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromRGBO(103, 104, 109, 1),
                                        decoration: TextDecoration.lineThrough,
                                        decorationColor:  Color.fromRGBO(103, 104, 109, 1),
                                        decorationThickness: 3,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Row(mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text('كوتشي رياضي',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.white),),
                                      Row(
                                        children: [
                                          Text(
                                            ' جنية',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromRGBO(255, 255, 255, 0.7),
                                            ),
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            '500',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromRGBO(255, 255, 255, 0.7),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 10),
                                  SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: Image(
                                      image: AssetImage('lib/Assets/images/startup_6857487.png'),
                                      fit: BoxFit.contain, // لضمان أن الصورة تكون داخل الحاوية بشكل صحيح دون تشويه
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
