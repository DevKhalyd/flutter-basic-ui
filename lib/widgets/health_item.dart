import 'package:flutter/material.dart';
import 'package:flutter_basic_ui/utils/utils.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HealthItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final List<Color> colors;

  const HealthItem(
      [this.icon = FontAwesomeIcons.carCrash,
      this.title = 'Your message',
      this.colors = const [colorPurple, colorPurpleLight]]);

  @override
  Widget build(BuildContext context) => Container(
        margin: EdgeInsets.all(20),
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: colors),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  offset: Offset(4, 6),
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 100)
            ]),
        child: Stack(
          children: [
            Positioned(
                right: -20,
                top: -20,
                child: FaIcon(icon,
                    size: 150, color: Colors.white.withOpacity(0.25))),
            Align(
              child: Row(
                children: [
                  SizedBox(width: 20),
                  FaIcon(icon, color: Colors.white, size: 40),
                  SizedBox(width: 20),
                  Text(
                    title,
                    style: TextStyle(color: Colors.white),
                  ),
                  Spacer(),
                  FaIcon(FontAwesomeIcons.chevronRight, color: Colors.white),
                  SizedBox(width: 20),
                ],
              ),
            )
          ],
        ),
      );
}
