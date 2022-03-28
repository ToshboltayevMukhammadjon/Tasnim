import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserDetailsBar extends StatelessWidget {
  const UserDetailsBar(
      {Key? key,
      required this.image,
      required this.userName,
      required this.userNick})
      : super(key: key);
  final String image;
  final String userName;
  final String userNick;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 42,
          width: 42,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(
                image,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    userName,
                    style: const TextStyle(
                        color: Colors.black,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w600,
                        fontSize: 14),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 16),
                    height: 15,
                    width: 15,
                    child: SvgPicture.asset(
                      "assets/icons/verify.svg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              Text(
                userNick,
                style: const TextStyle(
                  color: Colors.grey,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
        const Spacer(),
        SizedBox(
          height: 24,
          width: 24,
          child: SvgPicture.asset(
            "assets/icons/menu_h.svg",
            fit: BoxFit.cover,
          ),
        )
      ],
    );
  }
}
