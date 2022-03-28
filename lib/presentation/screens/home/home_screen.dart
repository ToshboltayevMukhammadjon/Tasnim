import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tasnim/presentation/screens/home/widgets/app_bar/widgets/drawer.dart';
import 'package:tasnim/presentation/screens/home/widgets/app_bar/widgets/search_field.dart';
import 'package:tasnim/presentation/screens/home/widgets/app_bar/widgets/user_image.dart';
import 'package:tasnim/presentation/screens/home/widgets/content_text/content_text.dart';
import 'package:tasnim/presentation/screens/home/widgets/content_video/content_video.dart';
import 'package:tasnim/presentation/screens/home/widgets/content_voice/content_voice.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBFBFF),
      appBar: AppBar(
        toolbarHeight: 50,
        elevation: 0,
        backgroundColor: const Color(0xFFFBFBFF),
        leading: Builder(
          builder: (context) => GestureDetector(
            onTap: () => Scaffold.of(context).openDrawer(),
            child: Container(
              padding: const EdgeInsets.all(16),
              child: SizedBox(
                height: 15,
                width: 23,
                child: SvgPicture.asset(
                  "assets/icons/menu.svg",
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),
        title: Row(
          children: [
            SearchField(),
            const Spacer(),
            const UserImage(),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: const [
              ContentText(),
              ContentVideo(),
              ContentVoice(),
            ],
          ),
        ),
      ),
      drawer: const NavDrawer(),
    );
  }
}
