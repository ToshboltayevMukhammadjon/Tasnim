import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FeedBackField extends StatelessWidget {
  const FeedBackField({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16),
      height: 30,
      child: Row(
        children: [
          Row(
            children: [
              SizedBox(
                height: 16,
                width: 16,
                child: SvgPicture.asset(
                  "assets/icons/comment.svg",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 8),
                child: const Text(
                  "15",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          Row(
            children: [
              SizedBox(
                height: 16,
                width: 16,
                child: SvgPicture.asset(
                  "assets/icons/like.svg",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 8),
                child: const Text(
                  "254",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          Row(
            children: [
              SizedBox(
                height: 16,
                width: 16,
                child: SvgPicture.asset(
                  "assets/icons/send.svg",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 8),
                child: const Text(
                  "Ulashish",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              )
            ],
          ),
          const Spacer(),
          SizedBox(
            height: 16,
            width: 16,
            child: SvgPicture.asset(
              "assets/icons/save.svg",
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
