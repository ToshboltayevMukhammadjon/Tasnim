import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchField extends StatelessWidget {
  SearchField({Key? key}) : super(key: key);
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 260,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.05000000074505806),
              offset: Offset(0, 10),
              blurRadius: 30)
        ],
      ),
      child: TextField(
        cursorColor: Colors.black,
        controller: controller,
        keyboardType: TextInputType.text,
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
          isDense: true,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.only(
            top: 10,
          ),
          prefixIcon: Container(
            padding: const EdgeInsets.all(8),
            height: 12,
            width: 12,
            child: SvgPicture.asset(
              'assets/icons/Search.svg',
              fit: BoxFit.fill,
            ),
          ),
          hintText: "Nimani izlaysiz?",
          hintStyle: const TextStyle(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
