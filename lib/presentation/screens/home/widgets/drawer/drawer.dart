import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 120,
              padding: const EdgeInsets.only(left: 8, right: 16),
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
                  Container(
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
                  const Spacer(),
                  SizedBox(
                    height: 16,
                    width: 16,
                    child: SvgPicture.asset(
                      "assets/icons/sign-out 1.svg",
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
              height: 5,
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
          ],
        ),
      ),
    );
  }
}
