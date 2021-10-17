import 'package:flutter/material.dart';
import 'dart:core';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:cars_store/Widgets/car_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          toolbarHeight: 100,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 0),
            child: FloatingActionButton(
              backgroundColor: Colors.transparent,
              elevation: 0,
              onPressed: () {},
              child: SvgPicture.asset(
                "assets/images/menu.svg",
                color: Colors.white,
              ),
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 10.0, 30.0, 0),
              child: ClipOval(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    FontAwesomeIcons.userAlt,
                  ),
                  radius: 20,
                ),
              ),
            ),
          ]),
      body: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(80.0),
                bottomRight: Radius.circular(80.0),
              ),
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/waves.png',
                    fit: BoxFit.fill,
                    width: size.width,
                    height: 300,
                    /*size.height * 0.25,*/
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(33, 130, 0, 0),
                    child: Text(
                      'Choose a Car',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 180, 0, 0),
                    child: Row(
                      children: [
                        Container(
                            width: size.width * 0.8,
                            padding: EdgeInsets.all(10.0),
                            child: TextField(
                              autocorrect: true,
                              decoration: InputDecoration(
                                hintText: 'Florida, USA',
                                prefixIcon: IconButton(onPressed: () {  },
                                icon: Icon(Icons.location_on_outlined,color: Colors.grey,size: 26,)),
                                suffixIcon: Padding(
                                  padding: const EdgeInsets.only(right: 5.0),
                                  child: Container(
                                      decoration: BoxDecoration(
                                          color: Color(0xffF26CA9),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15))),
                                      child: Icon(
                                        FontAwesomeIcons.calendarAlt,
                                        color: Colors.white,
                                      )),
                                ),
                                hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat'),
                                filled: true,
                                fillColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12.0)),
                                  borderSide:
                                      BorderSide(color: Colors.white, width: 2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide:
                                      BorderSide(color: Colors.white, width: 2),
                                ),
                              ),
                            )),
                        IconButton(
                          icon: Icon(
                            FontAwesomeIcons.slidersH,
                            size: 30,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        )
                      ],
                    ),
                  )
                ],
              )),
          Padding(
            padding: const EdgeInsets.fromLTRB(40.0, 20, 30, 10),
            child: Row(
              children: [
                Text(
                  '23 Results',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
                Spacer(),
                IconButton(
                  icon: Icon(
                    Icons.more_horiz,
                    size: 40,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          CarCard(),
        ],
      ),
    );
  }
}
