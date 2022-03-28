import 'package:flutter/material.dart';

class UserImage extends StatelessWidget {
  const UserImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: const DecorationImage(
          image: AssetImage(
            "assets/icons/User 01c.png",
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
