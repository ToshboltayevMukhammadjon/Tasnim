import 'package:flutter/material.dart';
import 'package:tasnim/presentation/widgets/feedback_bar.dart';
import 'package:tasnim/presentation/widgets/user_details_bar.dart';

class ContentText extends StatelessWidget {
  const ContentText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      margin: const EdgeInsets.only(
        top: 16,
        bottom: 16,
      ),
      padding: const EdgeInsets.all(16),
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
        children: const [
          UserDetailsBar(
            image: "assets/images/user1.jpg",
            userName: "Azimova Muxlisa",
            userNick: "@azimova",
          ),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Feugiat orci id sollicitudin elementum enim vitae eu magna in. Id venenatis tellus dictum ultricies mi nulla nulla. ",
            style: TextStyle(
                fontSize: 10,
                height: 2,
                wordSpacing: 3,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
                color: Color(0xFF464646)),
          ),
          Spacer(),
          FeedBackField()
        ],
      ),
    );
  }
}
