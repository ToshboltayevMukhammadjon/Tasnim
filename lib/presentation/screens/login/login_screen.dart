import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tasnim/presentation/screens/login/widgets/button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background_image.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 91,
                width: 220,
                child: SvgPicture.asset(
                  "assets/images/tasnim_logo.svg",
                  fit: BoxFit.cover,
                ),
              ),
              const Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Feugiat orci id sollicitudin elementum enim vitae eu magna in.Id venenatis tellus dictum ultricies mi nulla nulla. ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  height: 2,
                ),
                textAlign: TextAlign.center,
              ),
              const AuthButton(
                backgroundColor: Colors.white,
                text: "Ro‘yxatdan o‘tish",
                textColor: Colors.black,
              ),
              const AuthButton(
                backgroundColor: Color(0xFF39CDC4),
                text: "Kirish",
                textColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
