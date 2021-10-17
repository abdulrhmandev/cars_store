import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cars_store/Pages/car_detiles.dart';
class CarCard extends StatelessWidget {
  List<Map> cars = [
    {"image": "assets/images/2.png", "name": "Red BMW Sport"},
    {"image": "assets/images/1.png", "name": "White Porsh"},
    {"image": "assets/images/3.png", "name": "Yellow Camaro"},
    {"image": "assets/images/4.png", "name": "Black Mazerati"},
    {"image": "assets/images/5.png", "name": "Silver Toyota"},
    {"image": "assets/images/6.png", "name": "White Odi"},
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: cars.length,
      itemBuilder: (context, index) => Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(60)),
                child: Container(
                  height: 500,
                  width: 650,
                  color: Colors.white,
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(50.0, 40, 50, 20),
                        child: Row(
                          children: [
                            Container(
                              height: 30,
                              width: 70,
                              decoration: BoxDecoration(
                                color: Color(0xffFEBF5C),
                                borderRadius: BorderRadius.all(Radius.circular(60)),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.star_rate_rounded,
                                    color: Colors.white,
                                    size: 25,
                                  ),
                                  Text(
                                    '4.5',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Montserrat'),
                                  )
                                ],
                              ),
                            ),
                            Spacer(),
                            Text(
                              '18 Deals',
                              style: TextStyle(
                                  color: Color(0xff3caa88),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 80.0),
                            child: Image.asset(
                              cars[index]['image'],
                              scale: 04,
                            ),
                          )
                        ],
                      ),
                      Row(children: [
                        Column(children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(50.0, 370, 0, 0),
                            child: Text(
                              cars[index]['name'],
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat-Bold',
                                  fontSize: 20),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(37.0, 10, 0, 0),
                            child: Text(
                              'From \$199 / day',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat',
                                  fontSize: 17,
                                  color: Colors.grey),
                            ),
                          ),
                        ]),
                      ]),
                      Positioned(
                          top: 340,
                          left: 500,
                          child: Image.asset(
                            'assets/images/rounded.png',
                          )),
                      Positioned(
                          top: 400,
                          left: 550,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.transparent),
                              shadowColor: MaterialStateProperty.all<Color>(
                                  Colors.transparent),
                              padding:
                                  MaterialStateProperty.all(EdgeInsets.all(50)),
                            ),
                            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (builder) => CarDetiles()));},
                            child: Container(
                              height: 120,
                              width: 120,
                              color: Colors.transparent,
                            ),
                          ))
                    ],
                  ),
                ),
              ),
          ),
        ],
      ),
      ),
    );
  }
}
