import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic_ui/widgets/header.dart';
import 'package:flutter_basic_ui/widgets/health_item.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainScreen extends StatelessWidget {
  final items = [
    HealthItem(FontAwesomeIcons.carCrash, 'Motor Accident',
        [Color(0xff6989F5), Color(0xff906EF5)]),
    HealthItem(FontAwesomeIcons.plus, 'Medical Emergency',
        [Color(0xff66A9F2), Color(0xff536CF6)]),
    HealthItem(FontAwesomeIcons.theaterMasks, 'Theft / Harrasement',
        [Color(0xffF2D572), Color(0xffE06AA3)]),
    HealthItem(FontAwesomeIcons.biking, 'Awards',
        [Color(0xff317183), Color(0xff46997D)]),
    HealthItem(FontAwesomeIcons.carCrash, 'Motor Accident',
        [Color(0xff6989F5), Color(0xff906EF5)]),
    HealthItem(FontAwesomeIcons.plus, 'Medical Emergency',
        [Color(0xff66A9F2), Color(0xff536CF6)]),
    HealthItem(FontAwesomeIcons.theaterMasks, 'Theft / Harrasement',
        [Color(0xffF2D572), Color(0xffE06AA3)]),
    HealthItem(FontAwesomeIcons.biking, 'Awards',
        [Color(0xff317183), Color(0xff46997D)]),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
          body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            HeaderScaffold(),
            ...items
                .map((e) => FadeInLeft(
                      child: e,
                      duration: Duration(
                        milliseconds: 1000,
                      ),
                    ))
                .toList()
          ],
        ),
      ));
}

class HeaderScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Header(),
        Positioned(
            top: 70,
            right: 25,
            child: FaIcon(
              FontAwesomeIcons.ellipsisV,
              color: Colors.white,
            )),
        Positioned(
            top: -50,
            left: -70,
            child: FaIcon(
              FontAwesomeIcons.plus,
              color: Colors.white.withOpacity(0.2),
              size: 240,
            )),
        Column(
          children: [
            SizedBox(width: double.infinity, height: 90),
            Text(
              'Haz solicitado',
              style:
                  TextStyle(fontSize: 16, color: Colors.white.withOpacity(0.7)),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Asistencia Médica',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            FaIcon(
              FontAwesomeIcons.plus,
              color: Colors.white,
              size: 80,
            ),
          ],
        )
      ],
    );
  }
}
