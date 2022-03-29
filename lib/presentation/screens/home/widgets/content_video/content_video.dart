import 'package:flutter/material.dart';
import 'package:tasnim/presentation/widgets/feedback_bar.dart';
import 'package:tasnim/presentation/widgets/user_details_bar.dart';

class ContentVideo extends StatelessWidget {
  const ContentVideo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 380,
      margin: const EdgeInsets.only(
        top: 16,
        bottom: 16,
      ),
      padding: const EdgeInsets.only(
        top: 16,
        bottom: 16,
        left: 8,
        right: 8,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.05000000074505806),
              offset: Offset(0, 10),
              blurRadius: 30)
        ],
      ),
      child: Column(
        children: [
          const UserDetailsBar(
            image: "assets/images/user2.jpg",
            userName: "Istamov Xurshid",
            userNick: "@istamoff.x",
          ),
          Container(
            height: 296,
            margin: const EdgeInsets.only(top: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: const DecorationImage(
                image: AssetImage("assets/images/video_image.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding:
                      const EdgeInsets.only(left: 16, right: 16, bottom: 12),
                  color: Colors.white.withOpacity(0.9),
                  child: const Text(
                    "Tushkunlikka tushmaslik uchun nima qilish kerak?",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
