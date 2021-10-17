import 'package:flutter/material.dart';

class CarDetiles extends StatelessWidget {
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
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                )),
          ),
        ),
        body: Column(children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(200.0),
              bottomRight: Radius.circular(200.0),
            ),
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/waves.png',
                  fit: BoxFit.fill,
                  width: size.width,
                  height: 600,
                  /*size.height * 0.25,*/
                ),
                Stack(
                  children: [
                    Container(
                      height: 500,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.red,
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ]));
  }
}
