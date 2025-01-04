import 'package:flutter/material.dart';
import '../../../../Home/presentation/view_model/views/widgets/bottomBar.dart';
import '../../../../../core/appbar_widget.dart';
import 'chat_1.dart';

class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBarContent(
        title: "الرسائل",
        onTap: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => BottomHome()),
          );
        },
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Chat_1(),
                  ),
                );
              },
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      right: 20,
                      left: 20,
                      bottom: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                ' محمود مختار',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(height: 5),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    '12:00 مً',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      'هذا نص رسالة تجريبية',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 15,
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 15),
                          child: ClipOval(
                            child: Container(
                              width: 48,
                              height: 48,
                              child: const CircleAvatar(
                                backgroundImage:
                                AssetImage('lib/Assets/images/photo_2024-12-23_04-00-11.jpg'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    color: Color.fromRGBO(255, 255, 255, 0.08),
                    thickness: 3,
                    endIndent: 90,
                    indent: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
