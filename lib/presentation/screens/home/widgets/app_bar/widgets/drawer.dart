import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/drawer_back_image.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              height: 60,
              alignment: Alignment.bottomLeft,
              child: Row(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      image: const DecorationImage(
                        image: AssetImage(
                          "assets/icons/User 01c.png",
                        ),
                        fit: BoxFit.cover,
                      ),
                      border: Border.all(
                        width: 2,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 36,
                      margin: const EdgeInsets.only(left: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Azimova Muxlisa",
                            style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w600,
                                fontSize: 14),
                          ),
                          Text(
                            '@azimova',
                            style: TextStyle(
                              color: Colors.grey,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            title: const Text(
              "Videolar",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
              ),
            ),
            leading: SvgPicture.asset(
              "assets/icons/video-camera 1.svg",
              fit: BoxFit.cover,
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Text(
              "Audiolar",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
              ),
            ),
            leading: SvgPicture.asset(
              "assets/icons/headphones 1.svg",
              fit: BoxFit.cover,
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Text(
              "Kitoblar",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
              ),
            ),
            leading: SvgPicture.asset(
              "assets/icons/open-book 1.svg",
              fit: BoxFit.cover,
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Text(
              "Treninglar",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
              ),
            ),
            leading: SvgPicture.asset(
              "assets/icons/teach 1.svg",
              fit: BoxFit.cover,
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Text(
              "Mentor bo‘lish uchun ariza",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
              ),
            ),
            leading: SvgPicture.asset(
              "assets/icons/google-docs 1.svg",
              fit: BoxFit.cover,
            ),
            onTap: () {},
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: ListTile(
              title: const Text(
                "Chiqish",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                ),
              ),
              leading: SvgPicture.asset(
                "assets/icons/sign-out 1.svg",
                fit: BoxFit.cover,
              ),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
