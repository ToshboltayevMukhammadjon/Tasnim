import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tasnim/presentation/screens/login/widgets/button.dart';
import 'package:tasnim/presentation/screens/sign_up/sign_up.dart';

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
                height: 91.h,
                width: 220.w,
                child: SvgPicture.asset(
                  "assets/images/tasnim_logo.svg",
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Feugiat orci id sollicitudin elementum enim vitae eu magna in.Id venenatis tellus dictum ultricies mi nulla nulla. ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w400,
                  height: 2.h,
                ),
                textAlign: TextAlign.center,
              ),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    backgroundColor: Colors.white,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadiusDirectional.only(
                        topEnd: Radius.circular(25),
                        topStart: Radius.circular(25),
                      ),
                    ),
                    builder: (BuildContext context) {
                      return SignUpScreen();
                    },
                  );
                },
                child: const AuthButton(
                  backgroundColor: Colors.white,
                  text: "Ro‘yxatdan o‘tish",
                  textColor: Colors.black,
                ),
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
